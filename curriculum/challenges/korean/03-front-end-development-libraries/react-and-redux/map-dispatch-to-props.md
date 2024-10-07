---
id: 5a24c314108439a4d4036146
title: 디스패치를 Props으로 매핑하기
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

예를 들어, `username`을 액션 페이로드로 사용하는 `loginUser()` 액션 생성자가 있습니다. 이 액션 생성자에 대한 `mapDispatchToProps()`에서 반환된 객체는 다음과 같습니다.

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

코드 편집기에서 `addMessage()`라는 액션 생성자가 제공됩니다. `dispatch`를 인수로 사용하여 함수 `mapDispatchToProps()`를 작성한 다음, 객체를 반환합니다. 이 객체는 디스패치 함수로 설정된 `submitNewMessage` 속성을 가져야 하며, 이는 `addMessage()`를 디스패치할 때 추가할 새 메시지에 대한 매개변수를 취합니다.

# --hints--

`addMessage`는 키 `type`와 `message`를 가진 객체를 반환해야 합니다.

```js
assert(
  (function () {
    const addMessageTest = addMessage();
    return (
      addMessageTest.hasOwnProperty('type') &&
      addMessageTest.hasOwnProperty('message')
    );
  })()
);
```

`mapDispatchToProps`는 함수여야 합니다.

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps`는 객체를 반환해야 합니다.

```js
assert(typeof mapDispatchToProps() === 'object');
```

`mapDispatchToProps`에서 `submitNewMessage`와 `addMessage`를 디스패치하면 디스패치 함수로 메시지가 반환되어야 합니다.

```js
assert(
  (function () {
    let testAction;
    const dispatch = (fn) => {
      testAction = fn;
    };
    let dispatchFn = mapDispatchToProps(dispatch);
    dispatchFn.submitNewMessage('__TEST__MESSAGE__');
    return (
      testAction.type === 'ADD' && testAction.message === '__TEST__MESSAGE__'
    );
  })()
);
```

# --seed--

## --seed-contents--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

// Change code below this line
```

# --solutions--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

// Change code below this line

const mapDispatchToProps = (dispatch) => {
  return {
    submitNewMessage: function(message) {
      dispatch(addMessage(message));
    }
  }
};
```
