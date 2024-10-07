---
id: 56533eb9ac21ba0edf2244d2
title: المقارنات باستخدام مشغل لا مساواة (!=)
challengeType: 1
videoUrl: 'https://scrimba.com/c/cdBm9Sr'
forumTopicId: 16787
dashedName: comparison-with-the-inequality-operator
---

# --description--

The inequality operator (`!=`) is the opposite of the equality operator. It means not equal and returns `false` where equality would return `true` and *vice versa*. Like the equality operator, the inequality operator will convert data types of values while comparing.

**مثال**

```js
1 !=  2    // true
1 != "1"   // false
1 != '1'   // false
1 != true  // false
0 != false // false
```

# --instructions--

أضف مشغل لا مساواة `!=` في `if` بحيث تقوم الوظيفة بإنشاء مقطع الآتي `Not Equal` عندما لا يساوي `val` عدد `99`.

# --hints--

يجب أن ينتج `testNotEqual(99)` المقطع النصي `Equal`

```js
assert(testNotEqual(99) === 'Equal');
```

يجب أن ينتج `testNotEqual("99")` المقطع النصي `Equal`

```js
assert(testNotEqual('99') === 'Equal');
```

يجب أن ينتج `testNotEqual(12)` المقطع النصي `Not Equal`

```js
assert(testNotEqual(12) === 'Not Equal');
```

يجب أن ينتج `testNotEqual("12")` المقطع النصي `Not Equal`

```js
assert(testNotEqual('12') === 'Not Equal');
```

يجب أن ينتج `testNotEqual("bob")` المقطع `Not Equal`

```js
assert(testNotEqual('bob') === 'Not Equal');
```

يجب عليك استخدام المشغل `!=`

```js
assert(__helpers.removeJSComments(code).match(/(?!!==)!=/));
```

# --seed--

## --seed-contents--

```js
// Setup
function testNotEqual(val) {
  if (val) { // Change this line
    return "Not Equal";
  }
  return "Equal";
}

testNotEqual(10);
```

# --solutions--

```js
function testNotEqual(val) {
  if (val != 99) {
    return "Not Equal";
  }
  return "Equal";
}
```
