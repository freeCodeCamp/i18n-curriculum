---
id: 5a24c314108439a4d403614c
title: Отримайте стан зі сховища Redux
challengeType: 6
forumTopicId: 301443
dashedName: get-state-from-the-redux-store
---

# --description--

The Redux store object provides several methods that allow you to interact with it. For example, you can retrieve the current `state` held in the Redux store object with the `getState()` method.

# --instructions--

У редакторі коду коротше переписано код з попереднього завдання. Використайте `store.getState()`, щоб отримати `state` зі `store`, та призначте його до нової змінної `currentState`.

# --hints--

Сховище Redux повинне мати значення 5 для початкового стану.

```js
assert(store.getState() === 5);
```

Змінна `currentState` має існувати, а також до неї має бути призначений поточний стан сховища Redux.

```js
(getUserInput) =>
  assert(
    currentState === 5 && getUserInput('index').includes('store.getState()')
  );
```

# --seed--

## --seed-contents--

```js
const store = Redux.createStore(
  (state = 5) => state
);

// Change code below this line
```

# --solutions--

```js
const store = Redux.createStore(
  (state = 5) => state
);

// Change code below this line
const currentState = store.getState();
```
