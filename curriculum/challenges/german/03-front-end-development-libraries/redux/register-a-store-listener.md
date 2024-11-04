---
id: 5a24c314108439a4d4036153
title: Einen Store Listener registrieren
challengeType: 6
forumTopicId: 301446
dashedName: register-a-store-listener
---

# --description--

Another method you have access to on the Redux `store` object is `store.subscribe()`. This allows you to subscribe listener functions to the store, which are called whenever an action is dispatched against the store. One simple use for this method is to subscribe a function to your store that simply logs a message every time an action is received and the store is updated.

# --instructions--

Schreibe eine Callback-Funktion, die die globale Variable `count` jedes Mal erhöht, wenn der Store eine Aktion erhält, und übergebe diese Funktion an die Methode `store.subscribe()`. Du wirst sehen, dass `store.dispatch()` dreimal hintereinander aufgerufen wird, wobei jedes Mal direkt ein Aktionsobjekt übergeben wird. Schau dir die Konsolenausgabe zwischen den gesendeten Aktionen an, um zu sehen, welche Aktualisierungen vorgenommen wurden.

# --hints--

Wenn du die `ADD`-Aktion im Store ausführst, wird der Zustand um `1` erhöht.

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

Es sollte eine Listener-Funktion vorhanden sein, die den Store mit `store.subscribe` abonniert.

```js
assert.match(code, /store\s*\.\s*subscribe\(/gm);
```

`store.subscribe` sollte eine Funktion erhalten.

```js
assert.match(code, /(\s*function\s*)|(\s*\(\s*\)\s*=>)/gm);
```

The function passed to `store.subscribe` should not be called.

```js
assert.notMatch(code, /store\.subscribe\(.+\(\)\)/);
```

Der Callback zu `store.subscribe` sollte auch die globale `count`-Variable erhöhen, wenn der Store aktualisiert wird.

```js
assert.strictEqual(store.getState(), count);
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
