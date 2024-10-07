---
id: 56533eb9ac21ba0edf2244d3
title: المقارنات باستخدام لا مساواة الصارمة
challengeType: 1
videoUrl: 'https://scrimba.com/c/cKekkUy'
forumTopicId: 16791
dashedName: comparison-with-the-strict-inequality-operator
---

# --description--

The strict inequality operator (`!==`) is the logical opposite of the strict equality operator. It means "Strictly Not Equal" and returns `false` where strict equality would return `true` and *vice versa*. The strict inequality operator will not convert data types.

**مثال**

```js
3 !==  3  // false
3 !== '3' // true
4 !==  3  // true
```

# --instructions--

استخدام مشغل لا مساواة صارمة في تعبير `if` حتي تعيد الوظيفة مقطع `Not Equal` عندما يكون `val` لا مساواة صارمة إلى `17`

# --hints--

يجب أن ينتج `testStrictNotEqual(17)` مقطع `Equal`

```js
assert(testStrictNotEqual(17) === 'Equal');
```

يجب أن ينتج `testStrictNotEqual("17")` مقطع `Not Equal`

```js
assert(testStrictNotEqual('17') === 'Not Equal');
```

يجب أن ينتج `testStrictNotEqual(12)` مقطع `Not Equal`

```js
assert(testStrictNotEqual(12) === 'Not Equal');
```

يجب أن ينتج `testStrictNotEqual("bob")` مقطع `Not Equal`

```js
assert(testStrictNotEqual('bob') === 'Not Equal');
```

يجب عليك استخدام المشغل `!==`

```js
assert(__helpers.removeJSComments(code).match(/(val\s*!==\s*\d+)|(\d+\s*!==\s*val)/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
function testStrictNotEqual(val) {
  if (val) { // Change this line
    return "Not Equal";
  }
  return "Equal";
}

testStrictNotEqual(10);
```

# --solutions--

```js
function testStrictNotEqual(val) {
  if (val !== 17) {
    return "Not Equal";
  }
  return "Equal";
}
```
