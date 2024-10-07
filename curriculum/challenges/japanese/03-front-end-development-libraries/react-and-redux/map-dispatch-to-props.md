---
id: 5a24c314108439a4d4036146
title: dispatch を props にマップする
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

たとえば、`loginUser()` というアクションクリエイターがあり、アクションペイロードとして `username` を受け取るとします。 このアクションクリエイターの `mapDispatchToProps()` から返されるオブジェクトは次のようになります。

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

コードエディターに `addMessage()` というアクションクリエイターが用意されています。 `dispatch` を引数として受け取り、オブジェクトを返す、関数 `mapDispatchToProps()` を記述してください。 オブジェクトには、dispatch 関数に設定されたプロパティ `submitNewMessage` を持たせます。この関数は、`addMessage()` をディスパッチするときに新しいメッセージを追加するためのパラメーターを受け取ります。

# --hints--

`addMessage` から、`type` と `message` というキーを持つオブジェクトを返します。

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

`mapDispatchToProps` は関数である必要があります。

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps` はオブジェクトを返す必要があります。

```js
assert(typeof mapDispatchToProps() === 'object');
```

`mapDispatchToProps` からの `submitNewMessage` による `addMessage` のディスパッチで、dispatch 関数にメッセージを返します。

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
