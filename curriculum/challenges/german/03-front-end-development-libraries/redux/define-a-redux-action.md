---
id: 5a24c314108439a4d403614d
title: Definiere eine Redux-Aktion
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

Stell dir Redux-Aktionen als Boten vor, die Informationen über Ereignisse in deiner App an den Redux-Store liefern. Der Store führt dann die Aktualisierung des Zustands auf der Grundlage der erfolgten Aktion durch.

# --instructions--

Das Schreiben einer Redux-Aktion ist so einfach wie das Deklarieren eines Objekts mit einer Typeigenschaft. Deklariere ein Objekt `action` und gib ihm eine Eigenschaft `type`, die auf den String `'LOGIN'` gesetzt ist.

# --hints--

Ein `action`-Objekt sollte existieren.

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

Das `action`-Objekt sollte eine Schlüsseleigenschaft `type` mit dem Wert `LOGIN` besitzen.

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
