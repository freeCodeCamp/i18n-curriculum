---
id: 5a24c314108439a4d403614e
title: تعريف منشئ إجراء (Action Creator)
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

تعريف وظيفة تسمى `actionCreator()` التي ترجع الكائن `action` عند استدعائه.

# --hints--

وظيفة `actionCreator` يجب أن تكون موجودة.

```js
assert(typeof actionCreator === 'function');
```

تشغيل وظيفة `actionCreator` يجب أن ينتج الكائن `action`.

```js
assert(typeof action === 'object');
```

يجب أن ينتج `action` خاصية هُوِيَّة باسم `type` بقيمة `LOGIN`.

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
