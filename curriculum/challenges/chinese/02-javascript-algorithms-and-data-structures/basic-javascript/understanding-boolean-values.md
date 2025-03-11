---
id: bd7123c9c441eddfaeb5bdef
title: 理解布尔值
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Another data type is the <dfn>Boolean</dfn>. Booleans may only be one of two values: `true` or `false`. They are basically little on-off switches, where `true` is on and `false` is off. These two states are mutually exclusive.

**注意：** 布尔值是不带引号的。 字符串 `"true"` 和 `"false"` 不是布尔值，在 JavaScript 中也没有特殊含义。

# --instructions--

修改 `welcomeToBooleans` 函数，让它返回 `true` 而不是 `false`。

# --hints--

`welcomeToBooleans()` 函数应该返回一个布尔值 （`true` 或者 `false`)。

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` 应该返回 `true`。

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
