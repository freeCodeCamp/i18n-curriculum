---
id: 5a24c314108439a4d403614e
title: Визначте автора дії
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

Визначте функцію під назвою `actionCreator()`, яка повертає об’єкт `action` після виклику.

# --hints--

Функція `actionCreator` має існувати.

```js
assert(typeof actionCreator === 'function');
```

Запуск функції `actionCreator` має повернути об’єкт `action`.

```js
assert(typeof action === 'object');
```

Повернений об’єкт `action` повинен мати властивість `type` зі значенням `LOGIN`.

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
