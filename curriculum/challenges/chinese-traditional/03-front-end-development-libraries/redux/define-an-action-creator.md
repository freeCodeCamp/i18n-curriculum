---
id: 5a24c314108439a4d403614e
title: 定義一個 Action Creator
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

定義名爲 `actionCreator()` 的函數，該函數在調用時返回 `action` 對象。

# --hints--

函數 `actionCreator` 應該存在。

```js
assert(typeof actionCreator === 'function');
```

運行 `actionCreator` 函數應返回 `action` 對象。

```js
assert(typeof action === 'object');
```

返回的 `action` 對象應該有一個值爲 `LOGIN` 的 `type` 屬性。

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
