---
id: 5a24c314108439a4d403614d
title: Definire un'azione Redux
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

Pensa alle azioni Redux come a messaggeri che portano informazioni sugli eventi che accadono nella tua app allo store di Redux. Lo store conduce poi l'attività di aggiornamento dello stato in base all'azione che si è verificata.

# --instructions--

Scrivere un'azione Redux è semplice come dichiarare un oggetto con una proprietà type. Dichiara un oggetto `action` e dagli una proprietà `type` impostata alla stringa `'LOGIN'`.

# --hints--

Dovrebbe esistere un oggetto `action`.

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

L'oggetto `action` dovrebbe avere una proprietà `type` con valore `LOGIN`.

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
