---
id: 5a24c314108439a4d403614e
title: 定义一个 Action Creator
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

定义名为 `actionCreator()` 的函数，该函数在调用时返回 `action` 对象。

# --hints--

函数 `actionCreator` 应该存在。

```js
assert(typeof actionCreator === 'function');
```

运行 `actionCreator` 函数应返回 `action` 对象。

```js
assert(typeof action === 'object');
```

返回的 `action` 对象应该有一个值为 `LOGIN` 的 `type` 属性。

```js
assert(action.type === 'LOGIN');
```

# --seed--

## --seed-contents--

```js
const action = {
  type: 'LOGIN'
}
// Define an action creator here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
const actionCreator = () => {
  return action;
};
```
