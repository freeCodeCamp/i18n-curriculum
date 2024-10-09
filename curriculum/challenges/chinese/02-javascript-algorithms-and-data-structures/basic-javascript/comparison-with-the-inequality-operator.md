---
id: 56533eb9ac21ba0edf2244d2
title: 不等运算符
challengeType: 1
videoUrl: 'https://scrimba.com/c/cdBm9Sr'
forumTopicId: 16787
dashedName: comparison-with-the-inequality-operator
---

# --description--

The inequality operator (`!=`) is the opposite of the equality operator. Inequality means not equal. The inequality operator returns `false` when the equality operator would return `true` and *vice versa*. Like the equality operator, the inequality operator will convert data types of values while comparing.

**例如：**

```js
1 !=  2    // true
1 != "1"   // false
1 != '1'   // false
1 != true  // false
0 != false // false
```

# --instructions--

在 `if` 语句中添加不等式运算符 `!=` 以便函数在 `val` 不等于 `99` 时返回字符串 `Not Equal`。

# --hints--

`testNotEqual(99)` 应该返回字符串 `Equal`

```js
assert(testNotEqual(99) === 'Equal');
```

`testNotEqual("99")` 应该返回字符串 `Equal`

```js
assert(testNotEqual('99') === 'Equal');
```

`testNotEqual(12)` 应该返回字符串 `Not Equal`

```js
assert(testNotEqual(12) === 'Not Equal');
```

`testNotEqual("12")` 应该返回字符串 `Not Equal`

```js
assert(testNotEqual('12') === 'Not Equal');
```

`testNotEqual("bob")` 应该返回字符串 `Not Equal`

```js
assert(testNotEqual('bob') === 'Not Equal');
```

你应该使用 `!=` 运算符

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
