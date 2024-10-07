---
id: 5a24c314108439a4d403614f
title: 액션 이벤트 디스패치하기
challengeType: 6
forumTopicId: 301442
dashedName: dispatch-an-action-event
---

# --description--

`dispatch` method is what you use to dispatch actions to the Redux store. Calling `store.dispatch()` and passing the value returned from an action creator sends an action back to the store.

액션 생성자는 발생한 액션의 유형을 지정하는 type 속성이 포함된 객체를 반환한다는 것을 기억해보세요. 그 다음에 메소드는 액션 객체를 Redux 스토어로 전달합니다. 이전 도전 과제의 예제를 따르면 다음 줄에 있는 코드는 동등하고, 둘 다 `LOGIN` 유형의 액션을 전달합니다:

```js
store.dispatch(actionCreator());
store.dispatch({ type: 'LOGIN' });
```

# --instructions--

코드 에디터의 Redux 스토어에는 `login` 프로퍼티가 `false`로 설정된 객체인 초기화된 state가 있습니다. 또한 `loginAction()`이라는 액션 생성 함수도 있는데, 이 액션은 `LOGIN` 타입의 액션을 반환합니다. `dispatch` 메소드를 호출하여 `loginAction()`에 의해 생성된 액션을 Redux 스토어에 디스패치하세요. 그러면 `LOGIN` 액션이 디스패치됩니다.

# --hints--

`loginAction` 함수를 호출하면 `type` 프로퍼티가 문자열 `LOGIN`으로 설정된 객체가 반환되어야 합니다.

```js
assert(loginAction().type === 'LOGIN');
```

스토어는 `login` 속성이 `false`로 설정된 객체로 초기화되어야 합니다.

```js
assert(store.getState().login === false);
```

`store.dispatch()` 메소드는 `LOGIN` 유형의 액션을 디스패치하는 데 사용해야 합니다.

```js
(getUserInput) =>
  assert(
    (function () {
      let noWhiteSpace = getUserInput('index').replace(/\s/g, '');
      return (
        noWhiteSpace.includes('store.dispatch(loginAction())') ||
        noWhiteSpace.includes("store.dispatch({type: 'LOGIN'})") === true
      );
    })()
  );
```

# --seed--

## --seed-contents--

```js
const store = Redux.createStore(
  (state = {login: false}) => state
);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};

// Dispatch the action here:
```

# --solutions--

```js
const store = Redux.createStore(
  (state = {login: false}) => state
);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};

store.dispatch(loginAction());
```
