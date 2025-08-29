---
id: 5a24c314108439a4d4036157
title: Escrever um contador com Redux
challengeType: 6
forumTopicId: 301453
dashedName: write-a-counter-with-redux
---

# --description--

Now you've learned all the core principles of Redux! You've seen how to create actions and action creators, create a Redux store, dispatch your actions against the store, and design state updates with pure reducers. You've even seen how to manage complex state with reducer composition and handle asynchronous actions. These examples are simplistic, but these concepts are the core principles of Redux. If you understand them well, you're ready to start building your own Redux app. The next challenges cover some of the details regarding `state` immutability, but first, here's a review of everything you've learned so far.

# --instructions--

Nesta lição, você implementará um contador simples com o Redux do zero. O básico é fornecido no editor de código, mas você terá que preencher os detalhes! Use os nomes que são fornecidos e defina os criadores de ação `incAction` e `decAction`, os tipos de ação `counterReducer()`, `INCREMENT` e `DECREMENT` e, finalmente, a `store` do Redux. Depois de ter terminado, você deve ser capaz de despachar as ações `INCREMENT` ou `DECREMENT` para incrementar ou decrementar o estado mantido na `store`. Boa sorte ao construir seu primeiro aplicativo Redux!

# --hints--

O criador de ação `incAction` deve retornar um objeto de ação com `type` igual ao valor de `INCREMENT`

```js
assert(incAction().type === INCREMENT);
```

O criador de ação `decAction` deve retornar um objeto de ação com `type` igual ao valor de `DECREMENT`

```js
assert(decAction().type === DECREMENT);
```

Executar `store.getState()` deve retornar um número

```js
assert(typeof store.getState() === 'number');
```

A store do Redux deve inicializar com o `state` igual a 0.

```js
assert(_store.getState() === 0);
```

Despachar `incAction` na store do Redux deve incrementar o `state` em 1.

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

Despachar `decAction` na store do Redux deve decrementar o `state` em 1.

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

`counterReducer` deve ser uma função

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
