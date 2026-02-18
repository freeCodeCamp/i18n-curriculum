---
id: bd7993c9c69feddfaeb8bdef
title: 使用 JavaScript 陣列在一個變數中儲存多個值
challengeType: 1
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

使用 JavaScript `array` 變數，我們可以將多筆資料儲存在同一個位置。

你以開啟方括號開始一個陣列宣告，以關閉方括號結束，並在每個項目之間放置逗號，如下所示：

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

修改新的陣列 `myArray`，使其同時包含字串和數字（按該順序）。

# --hints--

`myArray` 應該是一個陣列。

```js
assert(typeof myArray == 'object');
```

`myArray` 中的第一個項目應該是字串。

```js
assert(typeof myArray[0] !== 'undefined' && typeof myArray[0] == 'string');
```

`myArray` 中的第二個項目應該是數字。

```js
assert(typeof myArray[1] !== 'undefined' && typeof myArray[1] == 'number');
```

# --seed--

## --after-user-code--

```js
(function(z){return z;})(myArray);
```

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
