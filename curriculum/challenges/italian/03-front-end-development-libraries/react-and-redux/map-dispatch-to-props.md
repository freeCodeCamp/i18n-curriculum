---
id: 5a24c314108439a4d4036146
title: Mappare la spedizione delle props
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

Ad esempio, hai un creatore di azione `loginUser()` che richiede uno `username` come payload dell'azione. L'oggetto restituito da `mapDispatchToProps()` per questo creatore di azione sarà di questo tipo:

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

L'editor di codice fornisce un creatore di azioni chiamato `addMessage()`. Scrivi la funzione `mapDispatchToProps()` che richiede `dispatch` come argomento, quindi restituisce un oggetto. L'oggetto dovrebbe avere una proprietà `submitNewMessage` impostata alla funzione dispatch, che prende un parametro per il nuovo messaggio quando effettua il dispatch di `addMessage()`.

# --hints--

`addMessage` dovrebbe restituire un oggetto con chiavi `type` e `message`.

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

`mapDispatchToProps` dovrebbe essere una funzione.

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps` dovrebbe restituire un oggetto.

```js
assert(typeof mapDispatchToProps() === 'object');
```

Spedire `addMessage` con `submitNewMessage` da `mapDispatchToProps` dovrebbe restituire un messaggio alla funzione dispatch.

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
