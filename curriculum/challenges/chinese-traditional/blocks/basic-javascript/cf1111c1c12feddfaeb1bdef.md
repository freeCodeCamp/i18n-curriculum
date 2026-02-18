---
id: cf1111c1c12feddfaeb1bdef
title: 使用 JavaScript 產生隨機整數
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

你可以使用 `Math.random()` 來產生隨機小數，但有時你需要產生隨機整數。以下的處理程序會給你一個小於 `20` 的隨機整數：

1. 使用 `Math.random()` 來產生隨機小數。
2. 將該隨機小數乘以 `20`。
3. 使用 `Math.floor()` 將此數字向下取整到最接近的整數。

請記住 `Math.random()` 永遠不會傳回 `1`，所以因為你使用 `Math.floor()` 向下取整，實際上不可能得到 `20`。這個處理程序會給你一個介於 `0` 到 `19` 範圍內的隨機整數。

將所有內容整合起來，你的程式碼看起來像這樣：

```js
Math.floor(Math.random() * 20);
```

你正在呼叫 `Math.random()`，將結果乘以 20，然後將該值傳遞給 `Math.floor()`，以將值向下取整到最接近的整數。

# --instructions--

使用此技術來產生並傳回介於 `0` 到 `9` 的隨機整數。

# --hints--

`randomWholeNum` 的結果應該是一個整數。

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

你應該使用 `Math.random` 來產生隨機數。

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

你應該將 `Math.random` 的結果乘以 10，使其成為從零到九的範圍內的數字。

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

你應該使用 `Math.floor` 來移除數字的小數零件。

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

## --after-user-code--

```js
(function(){return randomWholeNum();})();
```

## --seed-contents--

```js
function randomWholeNum() {
  return Math.random();
}
```

# --solutions--

```js
function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}
```
