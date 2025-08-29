---
id: 5a24c314108439a4d4036159
title: Den Spread-Operator auf Arrays anwenden
challengeType: 6
forumTopicId: 301452
dashedName: use-the-spread-operator-on-arrays
---

# --description--

One solution from ES6 to help enforce state immutability in Redux is the spread operator: `...`. The spread operator has a variety of applications, one of which is well-suited to the previous challenge of producing a new array from an existing array. This is relatively new, but commonly used syntax. For example, if you have an array `myArray` and write:

```js
let newArray = [...myArray];
```

`newArray` ist jetzt ein Klon von `myArray`. Beide Arrays existieren weiterhin separat im Speicher. Wenn du eine Veränderung durchführst wie `newArray.push(5)`, ändert sich `myArray` nicht. Der `...` * überträgt * die Werte aus `myArray` in ein neues Array. Um ein Array zu klonen, aber zusätzliche Werte im neuen Array hinzuzufügen, könntest du `[...myArray, 'new value']` schreiben. Dies würde ein neues Array zurückgeben, das aus den Werten in `myArray` und dem String `new value` als letztem Wert besteht. Die Spread-Syntax kann in der Array-Zusammensetzung mehrfach verwendet werden, aber es ist wichtig zu beachten, dass sie nur eine einfache Kopie des Arrays erstellt. Das bedeutet, dass es nur unveränderliche Array-Operationen für eindimensionale Arrays bietet.

# --instructions--

Verwende den Spread-Operator, um eine neue Kopie des Zustands zurückzugeben, wenn ein To-Do-Element hinzugefügt wird.

# --hints--

Der Redux-Store sollte existieren und mit einem Zustand gleich `["Do not mutate state!"]` initialisiert werden.

```js
assert(
  (function () {
    const initialState = store.getState();
    return (
      Array.isArray(initialState) === true &&
      initialState[0] === 'Do not mutate state!'
    );
  })()
);
```

`addToDo` und `immutableReducer` sollten beide Funktionen sein.

```js
assert(typeof addToDo === 'function' && typeof immutableReducer === 'function');
```

Das Senden einer Aktion des Typs `ADD_TO_DO` im Redux-Store sollte ein `todo`-Element hinzufügen und NICHT den Zustand verändern.

```js
const initialState = store.getState();
const isFrozen = !!DeepFreeze(initialState);
store.dispatch(addToDo('__TEST__TO__DO__'));
const finalState = store.getState();
const expectedState = ['Do not mutate state!', '__TEST__TO__DO__'];
assert(isFrozen)
assert.deepEqual(finalState, expectedState);
```

Der Spread-Operator sollte verwendet werden, um einen neuen Zustand zu erhalten.

```js
assert(code.includes('...state'));
```

# --seed--

## --seed-contents--

```js
const immutableReducer = (state = ['Do not mutate state!'], action) => {
  switch(action.type) {
    case 'ADD_TO_DO':
      // Don't mutate state here or the tests will fail
      return
    default:
      return state;
  }
};

const addToDo = (todo) => {
  return {
    type: 'ADD_TO_DO',
    todo
  }
}

const store = Redux.createStore(immutableReducer);
```

# --solutions--

```js
const immutableReducer = (state = ['Do not mutate state!'], action) => {
  switch(action.type) {
    case 'ADD_TO_DO':
      return [
        ...state,
        action.todo
      ];
    default:
      return state;
  }
};

const addToDo = (todo) => {
  return {
    type: 'ADD_TO_DO',
    todo
  }
}

const store = Redux.createStore(immutableReducer);
```
