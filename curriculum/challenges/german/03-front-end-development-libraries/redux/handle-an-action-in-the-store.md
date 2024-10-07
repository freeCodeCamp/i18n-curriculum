---
id: 5a24c314108439a4d4036150
title: Verwalte eine Aktion im Store
challengeType: 6
forumTopicId: 301444
dashedName: handle-an-action-in-the-store
---

# --description--

After an action is created and dispatched, the Redux store needs to know how to respond to that action. This is the job of a `reducer` function. Reducers in Redux are responsible for the state modifications that take place in response to actions. A `reducer` takes `state` and `action` as arguments, and it always returns a new `state`. It is important to see that this is the **only** role of the reducer. It has no side effects — it never calls an API endpoint and it never has any hidden surprises. The reducer is simply a pure function that takes state and action, then returns new state.

Ein weiteres wichtiges Prinzip in Redux ist, dass der `state`schreibgeschützt (read-only) ist. Mit anderen Worten: Die `reducer`-Funktion muss **immer** eine neue Kopie von `state` zurückgeben und darf den Zustand niemals direkt verändern. Redux erzwingt keine Zustandsunveränderlichkeit, du bist jedoch dafür verantwortlich, sie im Code deiner Reducer-Funktionen zu erzwingen. Das wirst du in späteren Aufgaben üben.

# --instructions--

Der Code-Editor enthält das vorherige Beispiel sowie den Anfang einer `reducer`-Funktion für dich. Fülle den Körper der `reducer`-Funktion so aus, dass sie, wenn sie eine Aktion des Typs `'LOGIN'` empfängt, ein Zustandsobjekt zurückgibt, bei dem `login` auf `true` gesetzt ist. Ansonsten wird der aktuelle `state` zurückgegeben. Beachte, dass der aktuelle `state` und die gesendete `action` an den Reducer übergeben werden, sodass du mit `action.type` direkt auf den Typ der Aktion zugreifen kannst.

# --hints--

Der Aufruf der Funktion `loginAction` sollte ein Objekt zurückgeben, dessen type-Eigenschaft auf den String `LOGIN` gesetzt ist.

```js
assert(loginAction().type === 'LOGIN');
```

Der Store sollte mit einem Objekt initialisiert werden, dessen Eigenschaft `login` auf `false` gesetzt ist.

```js
assert(store.getState().login === false);
```

Der Versand von `loginAction` sollte die `login`-Eigenschaft im Store-Zustand auf `true` aktualisieren.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(loginAction());
    const afterState = store.getState();
    return initialState.login === false && afterState.login === true;
  })()
);
```

Wenn die Aktion nicht vom Typ `LOGIN` ist, sollte der Store den aktuellen Zustand zurückgeben.

```js
assert(
  (function () {
    store.dispatch({ type: '__TEST__ACTION__' });
    let afterTest = store.getState();
    return typeof afterTest === 'object' && afterTest.hasOwnProperty('login');
  })()
);
```

# --seed--

## --seed-contents--

```js
const defaultState = {
  login: false
};

const reducer = (state = defaultState, action) => {
  // Change code below this line

  // Change code above this line
};

const store = Redux.createStore(reducer);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};
```

# --solutions--

```js
const defaultState = {
  login: false
};

const reducer = (state = defaultState, action) => {

  if (action.type === 'LOGIN') {
    return {login: true}
  }

  else {
    return state
  }

};

const store = Redux.createStore(reducer);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};
```
