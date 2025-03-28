---
id: 5a24c314108439a4d403614f
title: Despachar um evento de ação
challengeType: 6
forumTopicId: 301442
dashedName: dispatch-an-action-event
---

# --description--

`dispatch` method is what you use to dispatch actions to the Redux store. Calling `store.dispatch()` and passing the value returned from an action creator sends an action back to the store.

Lembre-se de que os criadores de ações retornam um objeto com uma propriedade type que especifica o tipo de ação que ocorreu. Em seguida, o método despacha um objeto de ação para a store do Redux. Com base no exemplo do desafio anterior, as linhas a seguir são equivalentes, e ambas enviam a ação do tipo `LOGIN`:

```js
store.dispatch(actionCreator());
store.dispatch({ type: 'LOGIN' });
```

# --instructions--

A store do Redux no editor de código tem um estado inicializado que contém um objeto que contém a propriedade `login` atualmente definida como `false`. Também há um criador de ação chamado `loginAction()` que retorna uma ação do tipo `LOGIN`. Despache a ação `LOGIN` para a store do Redux chamando o método `dispatch`, e passe na ação criada por `loginAction()`.

# --hints--

Chamando a função `loginAction` deve retornar um objeto com a propriedade `type` definida para a string `LOGIN`.

```js
assert(loginAction().type === 'LOGIN');
```

A store deve ser inicializada com um objeto com a propriedade `login` definida como `false`.

```js
assert(store.getState().login === false);
```

O método `store.dispatch()` deve ser usado para despachar uma ação do tipo `LOGIN`.

```js
assert(
    (function () {
      let noWhiteSpace = code.replace(/\s/g, '');
      return (
        noWhiteSpace.includes('store.dispatch(loginAction())') ||
        noWhiteSpace.includes("store.dispatch({type: 'LOGIN'})") === true
      );
    })()
);
```

# --seed--

## --seed-contents--

```js
const store = Redux.createStore(
  (state = {login: false}) => state
);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};

// Dispatch the action here:
```

# --solutions--

```js
const store = Redux.createStore(
  (state = {login: false}) => state
);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};

store.dispatch(loginAction());
```
