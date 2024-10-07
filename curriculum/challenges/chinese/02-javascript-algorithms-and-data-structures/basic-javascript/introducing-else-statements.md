---
id: 56533eb9ac21ba0edf2244da
title: 介绍 else 语句
challengeType: 1
videoUrl: 'https://scrimba.com/c/cek4Efq'
forumTopicId: 18207
dashedName: introducing-else-statements
---

# --description--

When a condition for an `if` statement is true, the block of code following it is executed. What about when that condition is false? Normally nothing would happen. With an `else` statement, an alternate block of code can be executed.

```js
if (num > 10) {
  return "Bigger than 10";
} else {
  return "10 or Less";
}
```

# --instructions--

请把多个 `if` 语句合并为一个 `if/else` 语句。

# --hints--

应该只有一个 `if` 语句。

```js
assert(__helpers.removeJSComments(code).match(/if/g).length === 1);
```

应该使用一个 `else` 语句。

```js
assert(/else/g.test(__helpers.removeJSComments(code)));
```

`testElse(4)` 应该返回字符串 `5 or Smaller`

```js
assert(testElse(4) === '5 or Smaller');
```

`testElse(5)` 应该返回字符串 `5 or Smaller`

```js
assert(testElse(5) === '5 or Smaller');
```

`testElse(6)` 应该返回字符串 `Bigger than 5`

```js
assert(testElse(6) === 'Bigger than 5');
```

`testElse(10)` 应该返回字符串 `Bigger than 5`

```js
assert(testElse(10) === 'Bigger than 5');
```

不要修改相应注释的上面或下面的代码。

```js
assert(/let result = "";/.test(__helpers.removeJSComments(code)) && /return result;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function testElse(val) {
  let result = "";
  // Only change code below this line

  if (val > 5) {
    result = "Bigger than 5";
  }

  if (val <= 5) {
    result = "5 or Smaller";
  }

  // Only change code above this line
  return result;
}

testElse(4);
```

# --solutions--

```js
function testElse(val) {
  let result = "";
  if(val > 5) {
    result = "Bigger than 5";
  } else {
    result = "5 or Smaller";
  }
  return result;
}
```
