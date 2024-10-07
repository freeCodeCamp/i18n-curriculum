---
id: 5a24c314108439a4d4036146
title: Versand Eigenschaften zuordnen
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

Du hast zum Beispiel einen `loginUser()` Action Creator, der einen `username` als Action Payload benötigt. Das Objekt, das von `mapDispatchToProps()` für diesen Action Creator zurückgegeben wird, würde etwa so aussehen:

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

Der Code-Editor stellt einen Action Creator namens `addMessage()` zur Verfügung. Schreibe die Funktion `mapDispatchToProps()`, die `dispatch` als Argument nimmt und dann ein Objekt zurückgibt. Das Objekt sollte eine Eigenschaft `submitNewMessage` haben, die auf die Dispatch-Funktion gesetzt ist. Diese nimmt einen Parameter für die neue Nachricht, die hinzugefügt werden soll, wenn sie `addMessage()` versendet.

# --hints--

`addMessage` sollte ein Objekt mit den Schlüsseln `type` und `message` zurückgeben.

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

`mapDispatchToProps` sollte eine Funktion sein.

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps` sollte ein Objekt zurückgeben.

```js
assert(typeof mapDispatchToProps() === 'object');
```

Der Versand von `addMessage` mit `submitNewMessage` von `mapDispatchToProps` sollte eine Nachricht an die Dispatch-Funktion zurückgeben.

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
