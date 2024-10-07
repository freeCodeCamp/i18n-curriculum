---
id: 5a24c314108439a4d4036157
title: Redux を使用してカウンターを記述する
challengeType: 6
forumTopicId: 301453
dashedName: write-a-counter-with-redux
---

# --description--

Now you've learned all the core principles of Redux! You've seen how to create actions and action creators, create a Redux store, dispatch your actions against the store, and design state updates with pure reducers. You've even seen how to manage complex state with reducer composition and handle asynchronous actions. These examples are simplistic, but these concepts are the core principles of Redux. If you understand them well, you're ready to start building your own Redux app. The next challenges cover some of the details regarding `state` immutability, but first, here's a review of everything you've learned so far.

# --instructions--

このレッスンでは、Redux を使用したシンプルなカウンターをゼロから実装します。 基本的な部分はコードエディターに用意してありますが、詳細は皆さんが記述する必要があります。 用意された名前を使用して、`incAction` と `decAction` というアクションクリエイター、`counterReducer()`、および `INCREMENT` と `DECREMENT` というアクションタイプを定義し、最後に Redux `store` を定義してください。 完成すると、`INCREMENT` または `DECREMENT` アクションをディスパッチして、`store` に保持されている state を 1 増やすまたは 1 減らすことができるようになります。 初めての Redux アプリを作成できるようがんばってください！

# --hints--

アクションクリエイター `incAction` から、`type` が `INCREMENT` という値に等しいアクションオブジェクトを返します。

```js
assert(incAction().type === INCREMENT);
```

アクションクリエイター `decAction` から、`type` が `DECREMENT` という値に等しいアクションオブジェクトを返します。

```js
assert(decAction().type === DECREMENT);
```

`store.getState()` を実行すると数値が返ります。

```js
assert(typeof store.getState() === 'number');
```

Redux ストアを、`state` を 0 として初期化します。

```js
assert(_store.getState() === 0);
```

Redux ストアでの `incAction` のディスパッチで、`state` を 1 だけ増やします。

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

Redux ストアでの `decAction` のディスパッチで、`state` を 1 だけ減らします。

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

`counterReducer` は関数である必要があります。

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
