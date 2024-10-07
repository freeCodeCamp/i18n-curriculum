---
id: 5a24c314108439a4d4036146
title: Asigna el envío a props
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

Por ejemplo, tienes un creador de acción `loginUser()` que toma un `username` como carga útil de acción. El objeto devuelto por `mapDispatchToProps()` para este creador de acción se vería algo como:

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

El editor de código proporciona un creador de acción llamado `addMessage()`. Escribe la función `mapDispatchToProps()` que toma `dispatch` como argumento y devuelve un objeto. El objeto debe tener una propiedad `submitNewMessage` establecida en la función de envío, que toma un parámetro para el nuevo mensaje a añadir cuando envía `addMessage()`.

# --hints--

`addMessage` debe devolver un objeto con las claves `type` y `message`.

```js
assert(
  (function () {
    const addMessageTest = addMessage();
    return (
      addMessageTest.hasOwnProperty('type') &&
      addMessageTest.hasOwnProperty('message')
    );
  })()
);
```

`mapDispatchToProps` debe ser una función.

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps` debe devolver un objeto.

```js
assert(typeof mapDispatchToProps() === 'object');
```

El envío de `addMessage` con `submitNewMessage` desde `mapDispatchToProps` debe devolver un mensaje a la función de envío.

```js
assert(
  (function () {
    let testAction;
    const dispatch = (fn) => {
      testAction = fn;
    };
    let dispatchFn = mapDispatchToProps(dispatch);
    dispatchFn.submitNewMessage('__TEST__MESSAGE__');
    return (
      testAction.type === 'ADD' && testAction.message === '__TEST__MESSAGE__'
    );
  })()
);
```

# --seed--

## --seed-contents--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

// Change code below this line
```

# --solutions--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

// Change code below this line

const mapDispatchToProps = (dispatch) => {
  return {
    submitNewMessage: function(message) {
      dispatch(addMessage(message));
    }
  }
};
```
