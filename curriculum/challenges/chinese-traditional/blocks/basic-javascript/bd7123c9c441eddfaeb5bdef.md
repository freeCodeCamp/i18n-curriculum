---
id: bd7123c9c441eddfaeb5bdef
title: 理解布林值
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

另一種資料型別是 <dfn>布林值</dfn>。布林值只能是兩個值之一：`true` 或 `false`。它們基本上是小型的開關，`true` 代表開啟，`false` 代表關閉。這兩種狀態是互斥的。

**注意：** 布林值從不會用引號包起來。字串 `"true"` 和 `"false"` 不是布林值，且在 JavaScript 中沒有特殊意義。

# --instructions--

修改 `welcomeToBooleans` 函式（程式），使其傳回 `true` 而非 `false`。

# --hints--

`welcomeToBooleans()` 函式（程式）應該傳回一個布林值（`true` 或 `false`）。

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` 應該傳回 `true`。

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
