---
id: 5a24c314108439a4d403614c
title: Zustand aus dem Redux Store abrufen
challengeType: 6
forumTopicId: 301443
dashedName: get-state-from-the-redux-store
---

# --description--

The Redux store object provides several methods that allow you to interact with it. For example, you can retrieve the current `state` held in the Redux store object with the `getState()` method.

# --instructions--

Der Code aus der vorherigen Aufgabe wird im Code-Editor noch einmal übersichtlicher geschrieben. Verwende `store.getState()`, um den `state` aus dem `store` abzurufen, und weise ihn einer neuen Variablen `currentState` zu.

# --hints--

Der Redux-Store sollte einen Wert von 5 für den initialen Zustand besitzen.

```js
assert(store.getState() === 5);
```

Es sollte eine Variable `currentState` existieren, der der aktuelle Zustand des Redux-Stores zugewiesen wird.

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
