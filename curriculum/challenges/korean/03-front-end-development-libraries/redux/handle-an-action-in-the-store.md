---
id: 5a24c314108439a4d4036150
title: 스토어에서 액션 처리하기
challengeType: 6
forumTopicId: 301444
dashedName: handle-an-action-in-the-store
---

# --description--

After an action is created and dispatched, the Redux store needs to know how to respond to that action. This is the job of a `reducer` function. Reducers in Redux are responsible for the state modifications that take place in response to actions. A `reducer` takes `state` and `action` as arguments, and it always returns a new `state`. It is important to see that this is the **only** role of the reducer. It has no side effects — it never calls an API endpoint and it never has any hidden surprises. The reducer is simply a pure function that takes state and action, then returns new state.

Redux의 또 다른 핵심 원칙은 `state`가 읽기 전용이라는 것입니다. 다시 말해, `reducer` 함수는 **항상** 새로운 `state` 복사본을 반환해야 하며, 기존 상태를 직접 수정해서는 안 됩니다. Redux는 상태 불변성을 강제하지 않지만, 리듀서 함수의 코드에서 이를 지키는 것은 여러분의 책임입니다. 이것은 이후 챌린지에서 연습할 것입니다.

# --instructions--

코드 편집기에는 이전 예제와 `reducer` 함수의 시작 부분이 제공되어 있습니다. `reducer` 함수의 본문을 채워서, `'LOGIN'` 타입의 액션을 받으면 `login`이 `true`로 설정된 상태 객체를 반환하도록 하세요. 그렇지 않으면 현재 `state`를 반환해야 합니다. 현재 `state`와 디스패치된 `action`은 리듀서로 전달되므로, `action.type`을 통해 액션의 타입에 직접 접근할 수 있습니다.

# --hints--

`loginAction` 함수를 호출하면, 타입 속성이 문자열 `LOGIN`으로 설정된 객체를 반환해야 합니다.

```js
assert(loginAction().type === 'LOGIN');
```

스토어는 `login` 속성이 `false`로 설정된 객체로 초기화되어야 합니다.

```js
assert(store.getState().login === false);
```

`loginAction`을 디스패치하면, 스토어 상태에서 `login` 속성이 `true`로 업데이트되어야 합니다.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(loginAction());
    const afterState = store.getState();
    return initialState.login === false && afterState.login === true;
  })()
);
```

액션이 `LOGIN` 타입이 아닌 경우, 스토어는 현재 상태를 반환해야 합니다.

```js
assert(
  (function () {
    store.dispatch({ type: '__TEST__ACTION__' });
    let afterTest = store.getState();
    return typeof afterTest === 'object' && afterTest.hasOwnProperty('login');
  })()
);
```

# --seed--

## --seed-contents--

```js
const defaultState = {
  login: false
};

const reducer = (state = defaultState, action) => {
  // Change code below this line

  // Change code above this line
};

const store = Redux.createStore(reducer);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};
```

# --solutions--

```js
const defaultState = {
  login: false
};

const reducer = (state = defaultState, action) => {

  if (action.type === 'LOGIN') {
    return {login: true}
  }

  else {
    return state
  }

};

const store = Redux.createStore(reducer);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};
```
