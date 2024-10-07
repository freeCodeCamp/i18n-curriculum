---
id: 5a24c314108439a4d4036143
title: Estrarre la logica dello stato in Redux
challengeType: 6
forumTopicId: 301429
dashedName: extract-state-logic-to-redux
---

# --description--

Now that you finished the React component, you need to move the logic it's performing locally in its `state` into Redux. This is the first step to connect the simple React app to Redux. The only functionality your app has is to add new messages from the user to an unordered list. The example is simple in order to demonstrate how React and Redux work together.

# --instructions--

In primo luogo, definisci un tipo di azione `ADD` e impostalo a una const `ADD`. Quindi, definisci un creatore di azioni `addMessage()` che crea l'azione per aggiungere un messaggio. Dovrai passare un `message` a questo creatore di azioni e includere il messaggio nell'`action` restituita.

Quindi crea un reducer chiamato `messageReducer()` che gestisca lo stato dei messaggi. Lo stato iniziale dovrebbe essere un array vuoto. Questo reducer dovrebbe aggiungere un messaggio all'array di messaggi tenuti nello stato o restituire lo stato attuale. Infine, crea il tuo store di Redux e passagli il reducer.

# --hints--

La costante `ADD` dovrebbe esistere e contenere un valore uguale alla stringa `ADD`

```js
assert(ADD === 'ADD');
```

Il creatore di azioni `addMessage` dovrebbe restituire un oggetto con `type` uguale a `ADD` e `message` uguale al messaggio che gli viene passato.

```js
assert(
  (function () {
    const addAction = addMessage('__TEST__MESSAGE__');
    return addAction.type === ADD && addAction.message === '__TEST__MESSAGE__';
  })()
);
```

`messageReducer` dovrebbe essere una funzione.

```js
assert(typeof messageReducer === 'function');
```

Lo store dovrebbe esistere e avere uno stato iniziale impostato su un array vuoto.

```js
assert(
  (function () {
    const initialState = store.getState();
    return typeof store === 'object' && initialState.length === 0;
  })()
);
```

Inviare `addMessage` allo store dovrebbe sempre aggiungere un nuovo messaggio all'array di messaggi tenuti nello stato.

```js
assert(
  (function () {
    const initialState = store.getState();
    const isFrozen = DeepFreeze(initialState);
    store.dispatch(addMessage('__A__TEST__MESSAGE'));
    const addState = store.getState();
    return isFrozen && addState[0] === '__A__TEST__MESSAGE';
  })()
);
```

Il `messageReducer` dovrebbe restituire lo stato corrente se chiamato con altre azioni.

```js
assert(
  (function () {
    const addState = store.getState();
    store.dispatch({ type: 'FAKE_ACTION' });
    const testState = store.getState();
    return addState === testState;
  })()
);
```

# --seed--

## --seed-contents--

```jsx
// Define ADD, addMessage(), messageReducer(), and store here:
```

# --solutions--

```jsx
const ADD = 'ADD';

const addMessage = (message) => {
  return {
    type: ADD,
    message
  }
};

const messageReducer = (state = [], action) => {
  switch (action.type) {
    case ADD:
      return [
        ...state,
        action.message
      ];
    default:
      return state;
  }
};

const store = Redux.createStore(messageReducer);
```
