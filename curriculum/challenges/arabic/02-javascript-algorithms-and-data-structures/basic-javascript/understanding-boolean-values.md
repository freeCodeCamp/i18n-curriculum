---
id: bd7123c9c441eddfaeb5bdef
title: فهم القيم المنطقية
challengeType: 1
videoUrl: 'https://scrimba.com/c/c9Me8t4'
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Another data type is the <dfn>Boolean</dfn>. Booleans may only be one of two values: `true` or `false`. They are basically little on-off switches, where `true` is on and `false` is off. These two states are mutually exclusive.

**ملاحظة:** القيم المنطقية لا تكتب أبدا باستخدام علامات الاقتباس. المقطعين `"true"` و `"false"` ليسوا بقيم منطقية وليس لهم معنى خاص في JavaScript.

# --instructions--

Modify the `welcomeToBooleans` function so that it returns `true` instead of `false`.

# --hints--

يجب أن تقوم الوظيفة `welcomeToBooleans()` بإنتاج قيمة منطقية (`true`, أو `false`).

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` يجب أن ينتج `true`.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --after-user-code--

```js
welcomeToBooleans();
```

## --seed-contents--

```js
function welcomeToBooleans() {
  // Only change code below this line

  return false; // Change this line

  // Only change code above this line
}
```

# --solutions--

```js
function welcomeToBooleans() {
  return true; // Change this line
}
```
