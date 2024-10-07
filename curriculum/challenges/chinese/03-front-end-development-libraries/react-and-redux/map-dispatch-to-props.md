---
id: 5a24c314108439a4d4036146
title: 映射 Dispatch 到 Props
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

例如，创建 action 的函数 `loginUser()` 把 `username` 作为 action payload， `mapDispatchToProps()` 返回给创建 action 的函数的对象如下：

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

编辑器上提供的是创建 action 的函数 `addMessage()`。 写出接收 `dispatch` 为参数的函数 `mapDispatchToProps()`，返回一个 dispatch 函数对象， 其属性为 `submitNewMessage`。该函数在 dispatch `addMessage()` 时为新消息提供一个参数。

# --hints--

`addMessage` 应返回含 `type` 和 `message` 两个键的对象。

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

`mapDispatchToProps` 应为函数。

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps` 应返回一个对象。

```js
assert(typeof mapDispatchToProps() === 'object');
```

从 `mapDispatchToProps` 通过 `submitNewMessage` 分发 `addMessage`，应向 dispatch 函数返回一条消息。

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
