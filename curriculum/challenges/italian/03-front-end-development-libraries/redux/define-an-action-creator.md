---
id: 5a24c314108439a4d403614e
title: Definire un creatore di azione
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

Definisci una funzione `actionCreator()` che restituisce l'oggetto `action` quando chiamata.

# --hints--

La funzione `actionCreator` dovrebbe esistere.

```js
assert(typeof actionCreator === 'function');
```

L'esecuzione della funzione `actionCreator` dovrebbe restituire l'oggetto `action`.

```js
assert(typeof action === 'object');
```

L'`action` restituita dovrebbe avere una proprietà di chiave `type` con valore `LOGIN`.

```js
assert(action.type === 'LOGIN');
```

# --seed--

## --seed-contents--

```js
const action = {
  type: 'LOGIN'
}
// Define an action creator here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
const actionCreator = () => {
  return action;
};
```
