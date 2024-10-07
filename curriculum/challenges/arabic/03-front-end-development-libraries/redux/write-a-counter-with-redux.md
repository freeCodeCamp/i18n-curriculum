---
id: 5a24c314108439a4d4036157
title: اكتب العداد (Counter) باستخدام Redux
challengeType: 6
forumTopicId: 301453
dashedName: write-a-counter-with-redux
---

# --description--

Now you've learned all the core principles of Redux! You've seen how to create actions and action creators, create a Redux store, dispatch your actions against the store, and design state updates with pure reducers. You've even seen how to manage complex state with reducer composition and handle asynchronous actions. These examples are simplistic, but these concepts are the core principles of Redux. If you understand them well, you're ready to start building your own Redux app. The next challenges cover some of the details regarding `state` immutability, but first, here's a review of everything you've learned so far.

# --instructions--

في هذا الدرس، ستطبق عددًا بسيطًا مع Redux من الصفر. يتم توفير أساسيات في محرر التعليمات البرمجية، ولكن يجب عليك ملء التفاصيل! استخدم الأسماء التي تم توفيرها وحدد `incAction` و `decAction`، ونشئ الإجرائيات `counterReducer()`، و`INCREMENT`, و `DECREMENT`، وأخيراً `store` قي Redux. بمجرد انتهائك، يجب أن تكون قادراً على إرسال إجراءات `INCREMENT` أو `DECREMENT` لزيادة أو تخفيض state الموجودة في `store`. حظًا سعيدًا لبناء أول تطبيق Redux الخاص بك!

# --hints--

يجب على منشئ الإجراء `incAction` أن يعيد كائن إجراء مع `type` يساوي قيمة `INCREMENT`

```js
assert(incAction().type === INCREMENT);
```

يجب على منشئ الإجراء `decAction` أن يعيد كائن إجراء مع `type` يساوي قيمة `DECREMENT`

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
