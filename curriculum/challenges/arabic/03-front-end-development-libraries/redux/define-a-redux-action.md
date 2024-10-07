---
id: 5a24c314108439a4d403614d
title: تحديد إجراء Redux
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

فكر إن الإجراءات Redux كمراسلين يسليمون معلومات عن الأحداث التي تقع في التطبيق الخاص بك فى متجر Redux. ثم يقوم المتجر (store) بأعمال تحديث للحالة (state) استناداً على الإجراء (action) الذي وقع.

# --instructions--

كتابة إجراء Redux بسيط مثل الإعلان عن كائن ذو خاصية نوعية. إعلان كائن `action` وإعطائه خاصية `type` مجموعة إلى السلسلة `'LOGIN'`.

# --hints--

يجب أن يكون كائن `action` موجود.

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

يجب أن يحتوي الكائن `action` على خاصية هُوِيَّة `type` بقيمة `LOGIN`.

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
