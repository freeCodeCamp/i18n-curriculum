---
id: 56533eb9ac21ba0edf2244d6
title: 小於運算符
challengeType: 1
forumTopicId: 16789
dashedName: comparison-with-the-less-than-operator
---

# --description--

The less than operator (`<`) compares the values of two numbers. If the number to the left is less than the number to the right, it returns `true`. Otherwise, it returns `false`. Like the equality operator, the less than operator converts data types while comparing.

**例如：**

```js
2   < 5 // true
'3' < 7 // true
5   < 5 // false
3   < 2 // false
'8' < 4 // false
```

# --instructions--

將小於運算符添加到指示的行，以便返回語句有意義。

# --hints--

`testLessThan(0)` 應該返回字符串 `Under 25`

```js
assert(testLessThan(0) === 'Under 25');
```

`testLessThan(24)` 應該返回字符串 `Under 25`

```js
assert(testLessThan(24) === 'Under 25');
```

`testLessThan(25)` 應該返回字符串 `Under 55`

```js
assert(testLessThan(25) === 'Under 55');
```

`testLessThan(54)` 應該返回字符串 `Under 55`

```js
assert(testLessThan(54) === 'Under 55');
```

`testLessThan(55)` 應該返回字符串 `55 or Over`

```js
assert(testLessThan(55) === '55 or Over');
```

`testLessThan(99)` 應該返回字符串 `55 or Over`

```js
assert(testLessThan(99) === '55 or Over');
```

應該使用 `<` 運算符至少兩次

```js
assert(__helpers.removeJSComments(code).match(/val\s*<\s*('|")*\d+('|")*/g).length > 1);
```

# --seed--

## --seed-contents--

```js
function testLessThan(val) {
  if (val) {  // Change this line
    return "Under 25";
  }

  if (val) {  // Change this line
    return "Under 55";
  }

  return "55 or Over";
}

testLessThan(10);
```

# --solutions--

```js
function testLessThan(val) {
  if (val < 25) {  // Change this line
    return "Under 25";
  }

  if (val < 55) {  // Change this line
    return "Under 55";
  }

  return "55 or Over";
}
```
