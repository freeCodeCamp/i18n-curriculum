---
id: 587d7dab367417b2b2512b6f
title: Use the some Method to Check that Any Elements in an Array Meet a Criteria
challengeType: 1
forumTopicId: 301314
dashedName: use-the-some-method-to-check-that-any-elements-in-an-array-meet-a-criteria
---

# --description--

The `some` method works with arrays to check if *any* element passes a particular test. It returns a Boolean value - `true` if any of the values meet the criteria, `false` if not.

على سبيل المثال، الكود التالي سيتحقق مما إذا كان اي عنصر في array الـ `numbers` أقل من 10:

```js
const numbers = [10, 50, 8, 220, 110, 11];

numbers.some(function(currentValue) {
  return currentValue < 10;
});
```

دالة `some`، ستعيد `true`.

# --instructions--

استخدم طريقة (method) مسمى `some` داخل وظيفة (fucntion) مسمى `checkPositive` للتحقق مما إذا كان أي عنصر في `arr` موجبا. يجب أن يرجع الوظيفة (function) قيمة منطقية (Boolean).

# --hints--

يجب أن يستخدم الكود الخاص بك دالة `some`.

```js
assert(__helpers.removeJSComments(code).match(/\.some/g));
```

`checkPositive([1, 2, 3, -4, 5])` يجب أن يرجع `true`.

```js
assert(checkPositive([1, 2, 3, -4, 5]));
```

`checkPositive([1, 2, 3, 4, 5])` يجب أن يرجع `true`.

```js
assert(checkPositive([1, 2, 3, 4, 5]));
```

`checkPositive([-1, -2, -3, -4, -5])` يجب أن يرجع `false`.

```js
assert(!checkPositive([-1, -2, -3, -4, -5]));
```

# --seed--

## --seed-contents--

```js
function checkPositive(arr) {
  // Only change code below this line


  // Only change code above this line
}

checkPositive([1, 2, 3, -4, 5]);
```

# --solutions--

```js
function checkPositive(arr) {
  return arr.some(elem => elem > 0);
}
```
