---
id: cf1391c1c11feddfaeb4bdef
title: 使用 JavaScript 產生十進位數字
challengeType: 1
forumTopicId: 16826
dashedName: create-decimal-numbers-with-javascript
---

# --description--

我們也可以將小數儲存在變數中。小數有時被稱為<dfn>浮點數</dfn>或<dfn>浮點</dfn>。

**注意：** 當你計算數字時，計算是以有限精度進行。使用浮點數的操作可能會導致與預期結果不同的結果。如果你得到這些結果之一，請在 <a href="https://forum.freecodecamp.org/" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp 論壇</a> 開啟一個主題。

# --instructions--

創建一個變數 `myDecimal` 並賦予它帶有小數部分的十進位值（例如 `5.7`）。

# --hints--

`myDecimal` 應該是一個數字。

```js
assert(typeof myDecimal === 'number');
```

`myDecimal` 應該有一個小數點

```js
assert(myDecimal % 1 != 0);
```

# --seed--

## --after-user-code--

```js
(function(){if(typeof myDecimal !== "undefined"){return myDecimal;}})();
```

## --seed-contents--

```js
const ourDecimal = 5.7;

// Only change code below this line

```

# --solutions--

```js
const myDecimal = 9.9;
```
