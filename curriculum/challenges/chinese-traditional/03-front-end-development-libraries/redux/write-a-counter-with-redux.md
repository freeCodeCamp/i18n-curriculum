---
id: 5a24c314108439a4d4036157
title: 用 Redux 寫一個計數器
challengeType: 6
forumTopicId: 301453
dashedName: write-a-counter-with-redux
---

# --description--

Now you've learned all the core principles of Redux! You've seen how to create actions and action creators, create a Redux store, dispatch your actions against the store, and design state updates with pure reducers. You've even seen how to manage complex state with reducer composition and handle asynchronous actions. These examples are simplistic, but these concepts are the core principles of Redux. If you understand them well, you're ready to start building your own Redux app. The next challenges cover some of the details regarding `state` immutability, but first, here's a review of everything you've learned so far.

# --instructions--

在本課程中，將從頭開始使用 Redux 實現一個簡單的計數器。 基本知識在代碼編輯器中提供，但你必須完成細節！ 使用提供的名稱定義 `incAction` 和 `decAction` action creator，`counterReducer()`，`INCREMENT`和`DECREMENT` action 類型，以及 Redux `store`。 一旦完成，應該能夠 dispatch `INCREMENT` 或 `DECREMENT` 動作來增加或減少 `store` 中保存的狀態。 開始構建你的第一個 Redux 應用程序吧，編碼愉快！

# --hints--

action creator `incAction` 應該返回一個 `type` 等於 `INCREMENT` 的 action 對象。

```js
assert(incAction().type === INCREMENT);
```

action creator `decAction` 應該返回一個 `type` 等於 `DECREMENT` 的 action 對象。

```js
assert(decAction().type === DECREMENT);
```

運行 `store.getState()` 應該返回一個數字。

```js
assert(typeof store.getState() === 'number');
```

Redux store 應該將 `state` 初始化爲 0。

```js
assert(_store.getState() === 0);
```

在 Redux store 上 dispatch `incAction` 應該將 `state` 增加 1。

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

在 Redux store 上 dispatch `decAction` 應該將 `state` 減少 1。

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

`counterReducer` 應該是一個函數。

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
