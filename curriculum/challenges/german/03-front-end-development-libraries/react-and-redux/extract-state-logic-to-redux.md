---
id: 5a24c314108439a4d4036143
title: Zustandslogik nach Redux extrahieren
challengeType: 6
forumTopicId: 301429
dashedName: extract-state-logic-to-redux
---

# --description--

Now that you finished the React component, you need to move the logic it's performing locally in its `state` into Redux. This is the first step to connect the simple React app to Redux. The only functionality your app has is to add new messages from the user to an unordered list. The example is simple in order to demonstrate how React and Redux work together.

# --instructions--

Definiere zuerst einen Aktionstyp `ADD` und setze ihn auf eine Konstante `ADD`. Als nächstes definierst du einen Action Creator `addMessage()`, der die Aktion zum Hinzufügen einer Nachricht erstellt. Du musst eine `message` an diesen Action Creator übergeben und die Nachricht in die zurückgegebene `action` einfügen.

Dann erstelle einen Reducer namens `messageReducer()`, der den Zustand für die Nachrichten verwaltet. Der Initialzustand sollte ein leeres Array sein. Dieser Reducer sollte eine Nachricht zu dem Array der Nachrichten im Zustand hinzufügen oder den aktuellen Zustand zurückgeben. Schließlich erstellst du deinen Redux-Store und übergibst ihm den Reducer.

# --hints--

Die Konstante `ADD` sollte existieren und einen Wert enthalten, der dem String `ADD` entspricht.

```js
assert(ADD === 'ADD');
```

Der Action Creator `addMessage` sollte ein Objekt mit `type` gleich `ADD` und `message` gleich der übergebenen Nachricht zurückgeben.

```js
assert(
  (function () {
    const addAction = addMessage('__TEST__MESSAGE__');
    return addAction.type === ADD && addAction.message === '__TEST__MESSAGE__';
  })()
);
```

`messageReducer` sollte eine Funktion sein.

```js
assert(typeof messageReducer === 'function');
```

Der Store sollte existieren und einen Initialzustand haben, der auf ein leeres Array gesetzt ist.

```js
assert(
  (function () {
    const initialState = store.getState();
    return typeof store === 'object' && initialState.length === 0;
  })()
);
```

Wenn du `addMessage` an den Store sendest, sollte eine neue Nachricht unveränderlich zu dem Array der Nachrichten im Zustand hinzugefügt werden.

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

Der `messageReducer` sollte den aktuellen Zustand zurückgeben, wenn er mit einer anderen Aktion aufgerufen wird.

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
