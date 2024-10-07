---
id: 5a24c314108439a4d403614d
title: 定义一个 Redux Action
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

我们可以将 Redux action 视为信使，将有关应用程序中发生的事件信息提供给 Redux store， 然后 store 根据发生的 action 进行状态的更新。

# --instructions--

编写 Redux action 就像声明具有 type 属性的对象一样简单， 声明一个对象 `action` 并为它设置一个属性 `type`，并将它的值设置成字符串`'LOGIN'`。

# --hints--

`action` 对象应该存在。

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

`action` 对象应该有一个值为 `LOGIN` 的 `type` 属性。

```js
assert(
  (function () {
    return action.type === 'LOGIN';
  })()
);
```

# --seed--

## --seed-contents--

```js
// Define an action here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
```
