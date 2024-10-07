---
id: 5a24c314108439a4d4036146
title: 映射 Dispatch 到 Props
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

例如，創建 action 的函數 `loginUser()` 把 `username` 作爲 action payload， `mapDispatchToProps()` 返回給創建 action 的函數的對象如下：

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

編輯器上提供的是創建 action 的函數 `addMessage()`。 寫出接收 `dispatch` 爲參數的函數 `mapDispatchToProps()`，返回一個 dispatch 函數對象， 其屬性爲 `submitNewMessage`。該函數在 dispatch `addMessage()` 時爲新消息提供一個參數。

# --hints--

`addMessage` 應返回含 `type` 和 `message` 兩個鍵的對象。

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

`mapDispatchToProps` 應爲函數。

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps` 應返回一個對象。

```js
assert(typeof mapDispatchToProps() === 'object');
```

從 `mapDispatchToProps` 通過 `submitNewMessage` 分發 `addMessage`，應向 dispatch 函數返回一條消息。

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
