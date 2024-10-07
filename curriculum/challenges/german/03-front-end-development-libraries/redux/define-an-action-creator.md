---
id: 5a24c314108439a4d403614e
title: Definiere einen Action Creator
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

Definiere eine Funktion namens `actionCreator()`, die beim Aufruf das `action`-Objekt zurückgibt.

# --hints--

Die Funktion `actionCreator` sollte existieren.

```js
assert(typeof actionCreator === 'function');
```

Das Ausführen der Funktion `actionCreator` sollte das `action`-Objekt zurückgeben.

```js
assert(typeof action === 'object');
```

Die zurückgegebene `action` sollte eine Schlüsseleigenschaft `type` mit dem Wert `LOGIN` besitzen.

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
