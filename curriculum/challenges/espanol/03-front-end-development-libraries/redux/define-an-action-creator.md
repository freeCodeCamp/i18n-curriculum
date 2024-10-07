---
id: 5a24c314108439a4d403614e
title: Define un creador de acción
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

Define una función llamada `actionCreator()` que devuelve el objeto `action` cuando es llamado.

# --hints--

La función `actionCreator` debe existir.

```js
assert(typeof actionCreator === 'function');
```

La ejecución de la función `actionCreator` debe devolver el objeto `action`.

```js
assert(typeof action === 'object');
```

La `action` devuelta debe tener una propiedad clave `type` con valor `LOGIN`.

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
