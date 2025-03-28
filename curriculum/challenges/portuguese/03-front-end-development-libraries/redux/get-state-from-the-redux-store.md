---
id: 5a24c314108439a4d403614c
title: Obter o estado na store do Redux
challengeType: 6
forumTopicId: 301443
dashedName: get-state-from-the-redux-store
---

# --description--

The Redux store object provides several methods that allow you to interact with it. For example, you can retrieve the current `state` held in the Redux store object with the `getState()` method.

# --instructions--

O código do desafio anterior é reescrito de forma mais concisa no editor de código. Use `store.getState()` para recuperar o `state` do `store`, e o atribuir a nova variável `currentState`.

# --hints--

A store do Redux deve ter um valor de 5 para o state inicial.

```js
assert(store.getState() === 5);
```

Uma variável `currentState` deve existir e deve ser atribuída ao state atual na store do Redux.

```js
assert(currentState === 5 && code.includes('store.getState()'));
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
