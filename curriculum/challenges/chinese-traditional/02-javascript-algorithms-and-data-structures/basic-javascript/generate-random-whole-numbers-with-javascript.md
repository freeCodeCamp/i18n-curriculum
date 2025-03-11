---
id: cf1111c1c12feddfaeb1bdef
title: 使用 JavaScript 生成隨機整數
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

You can generate random decimal numbers with `Math.random()`, but sometimes you need to generate random whole numbers. The following process will give you a random whole number less than `20`:

1. Use `Math.random()` to generate a random decimal number.
2. 把這個隨機小數乘以 `20`。
3. 用 `Math.floor()` 向下取整，獲得它最近的整數。

記住 `Math.random()` 永遠不能完全返回 `1`，所以不可能實際得到 `20`，因爲你正在用 `Math.floor()` 四捨五入。 這個流程將給你一個從 `0` 到 `19` 的隨機整數。

把操作連起來，代碼類似於下面：

```js
Math.floor(Math.random() * 20);
```

你將調用 `Math.random()`，把結果乘以 20，然後把值傳給 `Math.floor()`，向下取整獲得最近的整數。

# --instructions--

使用這個方法生成並返回 `0` 和 `9` 之間的隨機整數。

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

應該使用 `Math.random` 生成一個隨機數字。

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

應該將 `Math.random` 的結果乘以 10，以生成 0 到 9 之間的隨機數。

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

應該使用 `Math.floor` 來刪除數字的十進制部分。

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
