---
id: 5a24c314108439a4d403614d
title: 定義一個 Redux Action
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

我們可以將 Redux action 視爲信使，將有關應用程序中發生的事件信息提供給 Redux store， 然後 store 根據發生的 action 進行狀態的更新。

# --instructions--

編寫 Redux action 就像聲明具有 type 屬性的對象一樣簡單， 聲明一個對象 `action` 併爲它設置一個屬性 `type`，並將它的值設置成字符串`'LOGIN'`。

# --hints--

`action` 對象應該存在。

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

`action` 對象應該有一個值爲 `LOGIN` 的 `type` 屬性。

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
