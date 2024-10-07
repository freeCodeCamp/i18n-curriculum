---
id: 5a24c314108439a4d403614c
title: Ottenere lo stato dallo store di Redux
challengeType: 6
forumTopicId: 301443
dashedName: get-state-from-the-redux-store
---

# --description--

The Redux store object provides several methods that allow you to interact with it. For example, you can retrieve the current `state` held in the Redux store object with the `getState()` method.

# --instructions--

Il codice della sfida precedente viene riscritto più concisamente nell'editor di codice. Usa `store.getState()` per recuperare lo `state` dallo `store`, e assegnarlo a una nuova variabile `currentState`.

# --hints--

Lo store di Redux dovrebbe avere un valore di 5 come stato iniziale.

```js
assert(store.getState() === 5);
```

Una variabile `currentState` dovrebbe esistere e dovrebbe esserle assegnato lo stato corrente dello store di Redux.

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
