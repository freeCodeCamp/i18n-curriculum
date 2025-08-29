---
id: 5a24c314108439a4d4036157
title: Створіть лічильник з Redux
challengeType: 6
forumTopicId: 301453
dashedName: write-a-counter-with-redux
---

# --description--

Now you've learned all the core principles of Redux! You've seen how to create actions and action creators, create a Redux store, dispatch your actions against the store, and design state updates with pure reducers. You've even seen how to manage complex state with reducer composition and handle asynchronous actions. These examples are simplistic, but these concepts are the core principles of Redux. If you understand them well, you're ready to start building your own Redux app. The next challenges cover some of the details regarding `state` immutability, but first, here's a review of everything you've learned so far.

# --instructions--

У цьому завданні ви створите простий лічильник за допомогою Redux з нуля. Основна частина надана в редакторі коду, але вам доведеться заповнити деталі! Використайте надані назви та визначте авторів дії `incAction` й `decAction`, типи дій `counterReducer()`, `INCREMENT` й `DECREMENT`, а також сховище Redux. Після цього ви зможете відправити дію `INCREMENT` чи `DECREMENT`, щоб збільшити чи зменшити стан, збережений у сховищі. Успіхів у створенні першого застосунку Redux!

# --hints--

Автор дії `incAction` має повернути об’єкт дії з `type` зі значенням `INCREMENT`

```js
assert(incAction().type === INCREMENT);
```

Автор дії `decAction` має повернути об’єкт дії з `type` зі значенням `DECREMENT`

```js
assert(decAction().type === DECREMENT);
```

Запуск `store.getState()` має повернути число

```js
assert(typeof store.getState() === 'number');
```

Сховище Redux має ініціалізуватися станом 0.

```js
assert(_store.getState() === 0);
```

Відправлення `incAction` у сховище Redux має збільшити `state` на 1.

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

Відправлення `decAction` у сховище Redux має зменшити `state` на 1.

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

`counterReducer` має бути функцією

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
