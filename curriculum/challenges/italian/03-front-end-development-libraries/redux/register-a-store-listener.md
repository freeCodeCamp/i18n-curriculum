---
id: 5a24c314108439a4d4036153
title: Registrare un listener dello store
challengeType: 6
forumTopicId: 301446
dashedName: register-a-store-listener
---

# --description--

Another method you have access to on the Redux `store` object is `store.subscribe()`. This allows you to subscribe listener functions to the store, which are called whenever an action is dispatched against the store. One simple use for this method is to subscribe a function to your store that simply logs a message every time an action is received and the store is updated.

# --instructions--

Scrivi una funzione di callback che incrementa la variabile globale `count` ogni volta che lo store riceve un'azione, e passa questa funzione al metodo `store.subscribe()`. Vedrai che `store.dispatch()` è chiamato tre volte di fila, ogni volta che passa direttamente in un oggetto azione. Guarda l'output della console tra le azioni inviate per vedere gli aggiornamenti effettuati.

# --hints--

La spedizione dell'azione `ADD` allo store dovrebbe aumentare lo stato di `1`.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch({ type: 'ADD' });
    const newState = store.getState();
    return newState === initialState + 1;
  })()
);
```

Dovrebbe esserci una funzione listener iscritta allo store usando `store.subscribe`.

```js
(getUserInput) => assert(getUserInput('index').match(/store\s*\.\s*subscribe\(/gm));
```

`store.subscribe` dovrebbe ricevere una funzione.

```js
(getUserInput) => assert(getUserInput('index').match(/(\s*function\s*)|(\s*\(\s*\)\s*=>)/gm)) 
```

La callback `store.subscribe` dovrebbe anche aumentare la variabile globale `count` quando lo store viene aggiornato.

```js
assert(store.getState() === count);
```

# --seed--

## --before-user-code--

```js
count = 0;
```

## --seed-contents--

```js
const ADD = 'ADD';

const reducer = (state = 0, action) => {
  switch(action.type) {
    case ADD:
      return state + 1;
    default:
      return state;
  }
};

const store = Redux.createStore(reducer);

// Global count variable:
let count = 0;

// Change code below this line

// Change code above this line

store.dispatch({type: ADD});
console.log(count);
store.dispatch({type: ADD});
console.log(count);
store.dispatch({type: ADD});
console.log(count);
```

# --solutions--

```js
const ADD = 'ADD';

const reducer = (state = 0, action) => {
  switch(action.type) {
    case ADD:
      return state + 1;
    default:
      return state;
  }
};

const store = Redux.createStore(reducer);
 let count = 0;
// Change code below this line

store.subscribe( () =>
 {
 count++;
 }
);

// Change code above this line

store.dispatch({type: ADD});
store.dispatch({type: ADD});
store.dispatch({type: ADD});
```
