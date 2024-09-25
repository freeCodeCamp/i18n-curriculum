---
id: 5a24c314108439a4d4036157
title: Redux로 카운터 작성하기
challengeType: 6
forumTopicId: 301453
dashedName: write-a-counter-with-redux
---

# --description--

이제 Redux의 모든 핵심 원리를 배웠습니다! 액션과 액션 생성자 만들기, Redux 저장소 생성, 저장소를 대상으로 액션 디스패치, 순수 리듀서로 상태 업데이트 설계하는 방법을 보았습니다. 리듀서 구성으로 복잡한 상태를 관리하고 비동기 액션을 처리하는 방법도 보았습니다. These examples are simplistic, but these concepts are the core principles of Redux. If you understand them well, you're ready to start building your own Redux app. The next challenges cover some of the details regarding `state` immutability, but first, here's a review of everything you've learned so far.

# --instructions--

In this lesson, you'll implement a simple counter with Redux from scratch. The basics are provided in the code editor, but you'll have to fill in the details! Use the names that are provided and define `incAction` and `decAction` action creators, the `counterReducer()`, `INCREMENT` and `DECREMENT` action types, and finally the Redux `store`. Once you're finished you should be able to dispatch `INCREMENT` or `DECREMENT` actions to increment or decrement the state held in the `store`. Good luck building your first Redux app!

# --hints--

The action creator `incAction` should return an action object with `type` equal to the value of `INCREMENT`

```js
assert(incAction().type === INCREMENT);
```

The action creator `decAction` should return an action object with `type` equal to the value of `DECREMENT`

```js
assert(decAction().type === DECREMENT);
```

Running `store.getState()` should return a number

```js
assert(typeof store.getState() === 'number');
```

The Redux store should initialize with a `state` of 0.

```js
assert(_store.getState() === 0);
```

Dispatching `incAction` on the Redux store should increment the `state` by 1.

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

Dispatching `decAction` on the Redux store should decrement the `state` by 1.

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

`counterReducer` should be a function

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
