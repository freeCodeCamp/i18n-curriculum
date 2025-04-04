---
id: 5a24c314108439a4d403615b
title: Copiar um objeto com Object.assign
challengeType: 6
forumTopicId: 301437
dashedName: copy-an-object-with-object-assign
---

# --description--

The last several challenges worked with arrays, but there are ways to help enforce state immutability when state is an `object`, too. A useful tool for handling objects is the `Object.assign()` utility. `Object.assign()` takes a target object and source objects and maps properties from the source objects to the target object. Any matching properties are overwritten by properties in the source objects. This behavior is commonly used to make shallow copies of objects by passing an empty object as the first argument followed by the object(s) you want to copy. Aqui está um exemplo:

```js
const newObject = Object.assign({}, obj1, obj2);
```

Isso cria `newObject` como um novo `object`, que contém as propriedades que atualmente existem em `obj1` e `obj2`.

# --instructions--

O estado e ações do Redux foram modificados para manipular um `object` para o `state`. Edite o código para retornar um novo objeto `state` para ações com tipo `ONLINE`, que define a propriedade `status` para a string `online`. Tente usar `Object.assign()` para completar o desafio.

# --hints--

A store do Redux deve existir e inicializar com um estado equivalente ao objeto `defaultState` declarado na linha 1.

```js
const expectedState = {
  user: 'CamperBot',
  status: 'offline',
  friends: '732,982',
  community: 'freeCodeCamp'
};
const initialState = store.getState();
assert.deepEqual(expectedState, initialState);
```

`wakeUp` e `immutableReducer` devem ser funções.

```js
assert(typeof wakeUp === 'function' && typeof immutableReducer === 'function');
```

Despachar uma ação do tipo `ONLINE` deve atualizar a propriedade `status` no estado para `online` e NÃO deve alterar o estado.

```js

const initialState = store.getState();
const isFrozen = !!DeepFreeze(initialState);
store.dispatch({ type: 'ONLINE' });
const finalState = store.getState();
const expectedState = {
  user: 'CamperBot',
  status: 'online',
  friends: '732,982',
  community: 'freeCodeCamp'
};
assert(isFrozen);
assert.deepEqual(finalState, expectedState);
```

`Object.assign` deve ser usado para retornar um novo estado.

```js
assert(code.includes('Object.assign'));
```

# --seed--

## --seed-contents--

```js
const defaultState = {
  user: 'CamperBot',
  status: 'offline',
  friends: '732,982',
  community: 'freeCodeCamp'
};

const immutableReducer = (state = defaultState, action) => {
  switch(action.type) {
    case 'ONLINE':
      // Don't mutate state here or the tests will fail
      return
    default:
      return state;
  }
};

const wakeUp = () => {
  return {
    type: 'ONLINE'
  }
};

const store = Redux.createStore(immutableReducer);
```

# --solutions--

```js
const defaultState = {
  user: 'CamperBot',
  status: 'offline',
  friends: '732,982',
  community: 'freeCodeCamp'
};

const immutableReducer = (state = defaultState, action) => {
  switch(action.type) {
    case 'ONLINE':
      return Object.assign({}, state, {
        status: 'online'
      });
    default:
      return state;
  }
};

const wakeUp = () => {
  return {
    type: 'ONLINE'
  }
};

const store = Redux.createStore(immutableReducer);
```
