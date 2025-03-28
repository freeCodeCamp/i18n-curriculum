---
id: 5a24c314108439a4d4036154
title: 여러 리듀서들 결합하기
challengeType: 6
forumTopicId: 301436
dashedName: combine-multiple-reducers
---

# --description--

When the state of your app begins to grow more complex, it may be tempting to divide state into multiple pieces. Instead, remember the first principle of Redux: all app state is held in a single state object in the store. Therefore, Redux provides reducer composition as a solution for a complex state model. You define multiple reducers to handle different pieces of your application's state, then compose these reducers together into one root reducer. The root reducer is then passed into the Redux `createStore()` method.

리덕스는 여러 리듀서들을 결합하기 위해서 `combineReducers()` 방식을 제공합니다. 이 방식은 객체를 인수로 받는데, 이때 키를 특정 리듀서 함수들에 연결하는 속성을 정의할 수 있습니다. 키에 주어진 이름은 리덕스에서 해당 상태 조각의 이름으로 사용됩니다.

일반적으로 서로 구별되거나 고유한 애플리케이션 상태의 각 조각에 대한 리듀서를 생성하는 것이 좋은 관행입니다. 예를 들어 사용자 인증이 있는 메모 앱에서는 하나의 리듀서가 인증을 처리하고 다른 리듀서는 사용자가 제출하는 텍스트와 메모를 처리할 수 있습니다. 이러한 앱들을 경우, `combineReducers()` 방식을 아래와 같이 작성합니다.

```js
const rootReducer = Redux.combineReducers({
  auth: authenticationReducer,
  notes: notesReducer
});
```

`notes` 키는 메모와 연관된 상태를 포함하고 `notesReducer` 에 의해 처리됩니다. 이런 식으로 여러 리듀서를 구성하여 더 복잡한 애플리케이션 상태를 관리할 수 있습니다. 예시에서 리덕스 스토어에 저장된 상태는 `auth`와 `notes` 속성을 포함하는 단일 객체가 됩니다.

# --instructions--

코드 에디터에는 Redux 스토어와 함께 `counterReducer()`와 `authReducer()` 함수가 제공되어 있습니다. `rootReducer()` 함수를 `Redux.combineReducers()` 방식을 활용해서 작성합니다. `counterReducer`와 `authReducer`를 각각 `count` 키와 `auth` 키에 할당합니다.

# --hints--

`counterReducer`가 `state`를 증가시키거나 감소시켜야 합니다.

```js
assert(
  (function () {
    const initialState = store.getState().count;
    store.dispatch({ type: INCREMENT });
    store.dispatch({ type: INCREMENT });
    const firstState = store.getState().count;
    store.dispatch({ type: DECREMENT });
    const secondState = store.getState().count;
    return firstState === initialState + 2 && secondState === firstState - 1;
  })()
);
```

`authReducer`는 `authenticated`의 `state`를 `true`와 `false` 사이에서 전환해야 합니다.

```js
assert(
  (function () {
    store.dispatch({ type: LOGIN });
    const loggedIn = store.getState().auth.authenticated;
    store.dispatch({ type: LOGOUT });
    const loggedOut = store.getState().auth.authenticated;
    return loggedIn === true && loggedOut === false;
  })()
);
```

`state` 스토어는 숫자를 보관하는 `count` 키와 객체를 보관하는 `auth` 키를 가지고 있습니다. `auth` 객체는 불값을 보관하는 `authenticated` 속성을 가지고 있어야 합니다.

```js
assert(
  (function () {
    const state = store.getState();
    return (
      typeof state.auth === 'object' &&
      typeof state.auth.authenticated === 'boolean' &&
      typeof state.count === 'number'
    );
  })()
);
```

`rootReducer`는 `counterReducer`와 `authReducer`를 합치는 함수이어야 합니다.

```js
assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(code);
      return (
        typeof rootReducer === 'function' &&
        noWhiteSpace.includes('Redux.combineReducers')
      );
    })()
  );
```

# --seed--

## --seed-contents--

```js
const INCREMENT = 'INCREMENT';
const DECREMENT = 'DECREMENT';

const counterReducer = (state = 0, action) => {
  switch(action.type) {
    case INCREMENT:
      return state + 1;
    case DECREMENT:
      return state - 1;
    default:
      return state;
  }
};

const LOGIN = 'LOGIN';
const LOGOUT = 'LOGOUT';

const authReducer = (state = {authenticated: false}, action) => {
  switch(action.type) {
    case LOGIN:
      return {
        authenticated: true
      }
    case LOGOUT:
      return {
        authenticated: false
      }
    default:
      return state;
  }
};

const rootReducer = // Define the root reducer here

const store = Redux.createStore(rootReducer);
```

# --solutions--

```js
const INCREMENT = 'INCREMENT';
const DECREMENT = 'DECREMENT';

const counterReducer = (state = 0, action) => {
  switch(action.type) {
    case INCREMENT:
      return state + 1;
    case DECREMENT:
      return state - 1;
    default:
      return state;
  }
};

const LOGIN = 'LOGIN';
const LOGOUT = 'LOGOUT';

const authReducer = (state = {authenticated: false}, action) => {
  switch(action.type) {
    case LOGIN:
      return {
        authenticated: true
      }
    case LOGOUT:
      return {
        authenticated: false
      }
    default:
      return state;
  }
};

const rootReducer = Redux.combineReducers({
  count: counterReducer,
  auth: authReducer
});

const store = Redux.createStore(rootReducer);
```
