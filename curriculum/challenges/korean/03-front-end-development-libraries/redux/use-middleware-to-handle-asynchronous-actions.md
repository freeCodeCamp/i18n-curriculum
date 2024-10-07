---
id: 5a24c314108439a4d4036156
title: 비동기 액션을 처리하기 위해 미들웨어를 사용하기
challengeType: 6
forumTopicId: 301451
dashedName: use-middleware-to-handle-asynchronous-actions
---

# --description--

So far these challenges have avoided discussing asynchronous actions, but they are an unavoidable part of web development. At some point you'll need to call asynchronous endpoints in your Redux app, so how do you handle these types of requests? Redux provides middleware designed specifically for this purpose, called Redux Thunk middleware. Here's a brief description how to use this with Redux.

Redux Thunk 미들웨어를 포함하려면, `Redux.applyMiddleware()`에 인수로 전달합니다. 이 문장은 `createStore()` 함수의 두 번째 선택적 매개변수로 제공됩니다. 편집기 하단의 코드를 살펴보면 이를 확인할 수 있습니다. 그런 다음 비동기 액션을 생성하려면, 액션 생성자에서 `dispatch`를 인수로 받는 함수를 반환합니다. 이 함수 내에서 액션을 디스패치하고 비동기 요청을 수행할 수 있습니다.

이 예에서는 `setTimeout()` 호출로 비동기 요청을 시뮬레이션하고 있습니다. 비동기 작업을 시작하기 전에 액션을 디스패치하여 애플리케이션 상태가 일부 데이터를 요청 중임을 알 수 있도록 하는 것이 일반적입니다(예를 들어서 로딩 아이콘을 표시할 수 있습니다). 그런 다음 데이터를 받으면, 해당 데이터를 페이로드로 포함하고 작업이 완료되었음을 알리는 또 다른 액션을 디스패치합니다.

이 특별한 액션 생성자에 `dispatch`를 매개변수로 전달하고 있다는 점을 기억하세요. 이것이 당신이 액션을 디스패치하는 방법입니다. 단순히 액션을 디스패치에 직접 전달하면 나머지는 미들웨어가 처리해줍니다.

# --instructions--

`handleAsync()` 액션 생성자에서 두 개의 디스패치를 모두 작성하세요. `setTimeout()` (시뮬레이션된 API 호출) 전에 `requestingData()`를 디스패치하세요. 그런 다음, (가상의) 데이터를 받은 후에 `receivedData()` 액션을 디스패치하면서 이 데이터를 전달하세요. 이제 Redux에서 비동기 액션을 처리하는 방법을 알게 되었습니다. 그 외의 모든 것은 이전과 동일하게 동작합니다.

# --hints--

`requestingData` 액션 생성자는 `REQUESTING_DATA` 값과 동일한 타입의 객체를 반환해야 합니다.

```js
assert(requestingData().type === REQUESTING_DATA);
```

`receivedData` 액션 생성자는 `RECEIVED_DATA` 값과 동일한 타입의 객체를 반환해야 합니다.

```js
assert(receivedData('data').type === RECEIVED_DATA);
```

`asyncDataReducer`는 함수여야 합니다.

```js
assert(typeof asyncDataReducer === 'function');
```

`requestingData` 액션 생성자를 디스패치하면 스토어의 `state` 속성 중 fetching이 `true`로 업데이트되어야 합니다.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(requestingData());
    const reqState = store.getState();
    return initialState.fetching === false && reqState.fetching === true;
  })()
);
```

`handleAsync`를 디스패치 하면 데이터 요청 액션을 디스패치 한 후 일정 시간 지연 후에 받은 데이터 액션을 디스패치 해야 합니다.

```js
assert(
  (function () {
    const noWhiteSpace = __helpers.removeWhiteSpace(handleAsync.toString());
    return (
      noWhiteSpace.includes('dispatch(requestingData())') === true &&
      noWhiteSpace.includes('dispatch(receivedData(data))') === true
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    // Dispatch request action here

    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      // Dispatch received data action here

    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```

# --solutions--

```js
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    dispatch(requestingData());
    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      dispatch(receivedData(data));
    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```
