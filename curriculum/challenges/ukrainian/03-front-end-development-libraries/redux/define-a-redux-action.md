---
id: 5a24c314108439a4d403614d
title: Визначте дію Redux
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

Вважайте дії Redux месенджерами, які доставляють інформацію про події, що відбуваються у застосунку, до сховища Redux. Після цього сховище здійснює оновлення стану на основі дії, що відбулася.

# --instructions--

Написати дію Redux так само просто, як і оголосити об’єкт з властивістю типу. Оголосіть об’єкт `action` та надайте йому властивість `type` зі значенням рядка `'LOGIN'`.

# --hints--

Об’єкт `action` має існувати.

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

Об’єкт `action` повинен мати властивість `type` зі значенням `LOGIN`.

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
