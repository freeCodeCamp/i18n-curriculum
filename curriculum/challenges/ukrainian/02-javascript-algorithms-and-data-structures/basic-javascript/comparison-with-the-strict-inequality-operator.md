---
id: 56533eb9ac21ba0edf2244d3
title: Порівняння з оператором «строго не дорівнює»
challengeType: 1
videoUrl: 'https://scrimba.com/c/cKekkUy'
forumTopicId: 16791
dashedName: comparison-with-the-strict-inequality-operator
---

# --description--

The strict inequality operator (`!==`) is the logical opposite of the strict equality operator. It means "Strictly Not Equal" and returns `false` where strict equality would return `true` and *vice versa*. The strict inequality operator will not convert data types.

**Наприклад:**

```js
3 !==  3  // false
3 !== '3' // true
4 !==  3  // true
```

# --instructions--

Додайте оператор «строго не дорівнює» до інструкції `if`, щоб функція повернула рядок `Not Equal`, якщо `val` строго не дорівнює `17`

# --hints--

`testStrictNotEqual(17)` має повертати рядок `Equal`

```js
assert(testStrictNotEqual(17) === 'Equal');
```

`testStrictNotEqual("17")` має повертати рядок `Not Equal`

```js
assert(testStrictNotEqual('17') === 'Not Equal');
```

`testStrictNotEqual(12)` має повертати рядок `Not Equal`

```js
assert(testStrictNotEqual(12) === 'Not Equal');
```

`testStrictNotEqual("bob")` має повертати рядок `Not Equal`

```js
assert(testStrictNotEqual('bob') === 'Not Equal');
```

Ви повинні використати оператор `!==`

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
