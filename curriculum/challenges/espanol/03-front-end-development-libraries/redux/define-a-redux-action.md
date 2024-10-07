---
id: 5a24c314108439a4d403614d
title: Define una acción Redux
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

Piensa en las acciones Redux como mensajeros que entregan información sobre los eventos que ocurren en tu aplicación al almacén Redux. A continuación, el almacén se encarga de actualizar el estado en función de la acción realizada.

# --instructions--

Escribir una acción Redux es tan sencillo como declarar un objeto con una propiedad de tipo. Declara un objeto `action` y dale una propiedad `type` establecida a la cadena `'LOGIN'`.

# --hints--

Debe existir un objeto `action`.

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

El objeto `action` debe tener una propiedad clave `type` con valor `LOGIN`.

```js
assert(
  (function () {
    return action.type === 'LOGIN';
  })()
);
```

# --seed--

## --seed-contents--

```js
// Define an action here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
```
