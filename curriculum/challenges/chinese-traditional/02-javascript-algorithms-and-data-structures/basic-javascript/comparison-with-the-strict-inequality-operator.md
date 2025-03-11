---
id: 56533eb9ac21ba0edf2244d3
title: 嚴格不等運算符
challengeType: 1
forumTopicId: 16791
dashedName: comparison-with-the-strict-inequality-operator
---

# --description--

The strict inequality operator (`!==`) is the logical opposite of the strict equality operator. It means "Strictly Not Equal" and returns `false` where strict equality would return `true` and *vice versa*. The strict inequality operator will not convert data types.

**例如：**

```js
3 !==  3  // false
3 !== '3' // true
4 !==  3  // true
```

# --instructions--

在 `if` 語句中，添加嚴格不相等運算符，這樣函數在當 `val` 不嚴格等於 `17` 的時候，會返回 `Not Equal`。

# --hints--

`testStrictNotEqual(17)` 應該返回字符串 `Equal`

```js
assert(testStrictNotEqual(17) === 'Equal');
```

`testStrictNotEqual("17")` 應該返回字符串 `Not Equal`

```js
assert(testStrictNotEqual('17') === 'Not Equal');
```

`testStrictNotEqual(12)` 應該返回字符串 `Not Equal`

```js
assert(testStrictNotEqual(12) === 'Not Equal');
```

`testStrictNotEqual("bob")` 應該返回字符串 `Not Equal`

```js
assert(testStrictNotEqual('bob') === 'Not Equal');
```

應該使用 `!==` 運算符

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
