---
id: 5a24c314108439a4d403614e
title: Definir um criador de action
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

Defina uma função chamada `actionCreator()` que retorna o objeto `action` quando chamado.

# --hints--

A função `actionCreator` deve existir.

```js
assert(typeof actionCreator === 'function');
```

Executando a função `actionCreator` deve retornar o objeto `action`.

```js
assert(typeof action === 'object');
```

O objeto `action` deve ter a propriedade chave `type` com o valor `LOGIN`.

```js
assert(action.type === 'LOGIN');
```

# --seed--

## --seed-contents--

```js
const action = {
  type: 'LOGIN'
}
// Define an action creator here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
const actionCreator = () => {
  return action;
};
```
