---
id: 5a24c314108439a4d403614c
title: Obtén el estado del almacén Redux
challengeType: 6
forumTopicId: 301443
dashedName: get-state-from-the-redux-store
---

# --description--

The Redux store object provides several methods that allow you to interact with it. For example, you can retrieve the current `state` held in the Redux store object with the `getState()` method.

# --instructions--

El código del desafío anterior se reescribe de forma más concisa en el editor de código. Utiliza `store.getState()` para recuperar el `state` del `store`, y asígnalo a una nueva variable `currentState`.

# --hints--

El almacén Redux debe tener un valor de 5 para el estado inicial.

```js
assert(store.getState() === 5);
```

Debe existir una variable `currentState` y se le debe asignar el estado actual del almacén Redux.

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
