---
id: 5a24c314108439a4d4036157
title: 用 Redux 写一个计数器
challengeType: 6
forumTopicId: 301453
dashedName: write-a-counter-with-redux
---

# --description--

Now you've learned all the core principles of Redux! You've seen how to create actions and action creators, create a Redux store, dispatch your actions against the store, and design state updates with pure reducers. You've even seen how to manage complex state with reducer composition and handle asynchronous actions. These examples are simplistic, but these concepts are the core principles of Redux. If you understand them well, you're ready to start building your own Redux app. The next challenges cover some of the details regarding `state` immutability, but first, here's a review of everything you've learned so far.

# --instructions--

在本课程中，将从头开始使用 Redux 实现一个简单的计数器。 基本知识在代码编辑器中提供，但你必须完成细节！ 使用提供的名称定义 `incAction` 和 `decAction` action creator，`counterReducer()`，`INCREMENT`和`DECREMENT` action 类型，以及 Redux `store`。 一旦完成，应该能够 dispatch `INCREMENT` 或 `DECREMENT` 动作来增加或减少 `store` 中保存的状态。 开始构建你的第一个 Redux 应用程序吧，编码愉快！

# --hints--

action creator `incAction` 应该返回一个 `type` 等于 `INCREMENT` 的 action 对象。

```js
assert(incAction().type === INCREMENT);
```

action creator `decAction` 应该返回一个 `type` 等于 `DECREMENT` 的 action 对象。

```js
assert(decAction().type === DECREMENT);
```

运行 `store.getState()` 应该返回一个数字。

```js
assert(typeof store.getState() === 'number');
```

Redux store 应该将 `state` 初始化为 0。

```js
assert(_store.getState() === 0);
```

在 Redux store 上 dispatch `incAction` 应该将 `state` 增加 1。

```js
assert(
  (function () {
    const initialState = _store.getState();
    _store.dispatch(incAction());
    const incState = _store.getState();
    return initialState + 1 === incState;
  })()
);
```

在 Redux store 上 dispatch `decAction` 应该将 `state` 减少 1。

```js
assert(
  (function () {
    const initialState = _store.getState();
    _store.dispatch(decAction());
    const decState = _store.getState();
    return initialState - 1 === decState;
  })()
);
```

`counterReducer` 应该是一个函数。

```js
assert(typeof counterReducer === 'function');
```

# --seed--

## --seed-contents--

```js
const INCREMENT = null; // Define a constant for increment action types
const DECREMENT = null; // Define a constant for decrement action types

const counterReducer = null; // Define the counter reducer which will increment or decrement the state based on the action it receives

const incAction = null; // Define an action creator for incrementing

const decAction = null; // Define an action creator for decrementing

const store = null; // Define the Redux store here, passing in your reducers
```

## --after-user-code--

```js
const _store = Redux.createStore(counterReducer)
```

# --solutions--

```js
const INCREMENT = 'INCREMENT';
const DECREMENT = 'DECREMENT';

const counterReducer = (state = 0, action) => {
  switch(action.type) {
    case INCREMENT:
      return state + 1;
    case DECREMENT:
      return state - 1;
    default:
      return state;
  }
};

const incAction = () => {
  return {
    type: INCREMENT
  }
};

const decAction = () => {
  return {
    type: DECREMENT
  }
};

const store = Redux.createStore(counterReducer);
```
