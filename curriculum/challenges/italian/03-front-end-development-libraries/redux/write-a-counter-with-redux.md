---
id: 5a24c314108439a4d4036157
title: Scrivere un contatore con Redux
challengeType: 6
forumTopicId: 301453
dashedName: write-a-counter-with-redux
---

# --description--

Now you've learned all the core principles of Redux! You've seen how to create actions and action creators, create a Redux store, dispatch your actions against the store, and design state updates with pure reducers. You've even seen how to manage complex state with reducer composition and handle asynchronous actions. These examples are simplistic, but these concepts are the core principles of Redux. If you understand them well, you're ready to start building your own Redux app. The next challenges cover some of the details regarding `state` immutability, but first, here's a review of everything you've learned so far.

# --instructions--

In questa lezione, realizzerai da zero un semplice contatore con Redux. Le basi sono fornite nell'editor di codice, ma dovrai riempire i dettagli! Utilizza i nomi forniti e definisci i creatori di azione `incAction` e `decAction`, il reducer `counterReducer()`, i tipi di azione `INCREMENT` e `DECREMENT`, e infine lo `store` di Redux. Una volta terminato, dovresti essere in grado di inviare le azioni `INCREMENT` o `DECREMENT` per aumentare o diminuire lo stato mantenuto nello `store`. Buona fortuna per la costruzione della tua prima app Redux!

# --hints--

Il creatore di azioni `incAction` dovrebbe restituire un oggetto azione con `type` uguale al valore di `INCREMENT`

```js
assert(incAction().type === INCREMENT);
```

Il creatore di azione `decAction` dovrebbe restituire un oggetto azione con `type` uguale al valore di `DECREMENT`

```js
assert(decAction().type === DECREMENT);
```

Eseguire `store.getState()` dovrebbe restituire un numero

```js
assert(typeof store.getState() === 'number');
```

Lo store Redux dovrebbe essere inizializzato con uno `state` di 0.

```js
assert(_store.getState() === 0);
```

Effettuare il dispatch di `incAction` nello store Redux dovrebbe aumentare lo `state` di 1.

```js
assert(
  (function () {
    const initialState = _store.getState();
    _store.dispatch(incAction());
    const incState = _store.getState();
    return initialState + 1 === incState;
  })()
);
```

Effettuare il dispatch di `decAction` nello store Redux dovrebbe decrementare lo `state` di 1.

```js
assert(
  (function () {
    const initialState = _store.getState();
    _store.dispatch(decAction());
    const decState = _store.getState();
    return initialState - 1 === decState;
  })()
);
```

`counterReducer` dovrebbe essere una funzione

```js
assert(typeof counterReducer === 'function');
```

# --seed--

## --seed-contents--

```js
const INCREMENT = null; // Define a constant for increment action types
const DECREMENT = null; // Define a constant for decrement action types

const counterReducer = null; // Define the counter reducer which will increment or decrement the state based on the action it receives

const incAction = null; // Define an action creator for incrementing

const decAction = null; // Define an action creator for decrementing

const store = null; // Define the Redux store here, passing in your reducers
```

## --after-user-code--

```js
const _store = Redux.createStore(counterReducer)
```

# --solutions--

```js
const INCREMENT = 'INCREMENT';
const DECREMENT = 'DECREMENT';

const counterReducer = (state = 0, action) => {
  switch(action.type) {
    case INCREMENT:
      return state + 1;
    case DECREMENT:
      return state - 1;
    default:
      return state;
  }
};

const incAction = () => {
  return {
    type: INCREMENT
  }
};

const decAction = () => {
  return {
    type: DECREMENT
  }
};

const store = Redux.createStore(counterReducer);
```
