---
id: 5a24c314108439a4d403614d
title: Definir uma ação do Redux
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

Pense em ações Redux como mensageiros que fornecem informações sobre eventos acontecendo em seu aplicativo para a store do Redux. A store então conduz a tarefa de atualizar o state baseado na ação que ocorreu.

# --instructions--

Escrever uma ação Redux é tão simples quanto declarar um objeto com uma propriedade type. Declare um objeto `action` e o dê uma propriedade `type` definido para a string `'LOGIN'`.

# --hints--

Um objeto de `action` deve existir.

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

O objeto `action` deve ter a propriedade chave `type` com o valor de `LOGIN`.

```js
assert(
  (function () {
    return action.type === 'LOGIN';
  })()
);
```

# --seed--

## --seed-contents--

```js
// Define an action here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
```
