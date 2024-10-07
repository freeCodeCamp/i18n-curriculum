---
id: 5a24c314108439a4d4036146
title: Mapear dispatch para props
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

Por exemplo, você tem o criador de ação `loginUser()` que recebe um `username` como um payload de ação. O objeto retornado do `mapDispatchToProps()` para este criador da ação pareceria algo como:

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

O editor de código fornece um criador de ação chamado `addMessage()`. Escreva a função `mapDispatchToProps()` que recebe `dispatch` como um argumento, e então retorna um objeto. O objeto deve ter a propriedade `submitNewMessage` definida para a função de despacho, que recebe um parâmetro para a nova mensagem a ser adicionada quando despachar `addMessage()`.

# --hints--

`addMessage` deve retornar um objeto com chaves `type` e `message`.

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

`mapDispatchToProps` deve ser uma função.

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps` deve retornar um objeto.

```js
assert(typeof mapDispatchToProps() === 'object');
```

Despachar `addMessage` com `submitNewMessage` do `mapDispatchToProps` deve retornar uma mensagem para a função de envio.

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
