---
id: cf1111c1c11feddfaeb7bdef
title: 在另一個陣列中巢狀一個陣列
challengeType: 1
forumTopicId: 18247
dashedName: nest-one-array-within-another-array
---

# --description--

你也可以在其他陣列中巢狀陣列，如下所示：

```js
const teams = [["Bulls", 23], ["White Sox", 45]];
```

這也稱為 <dfn>多維陣列</dfn>。

# --instructions--

創建一個名為 `myArray` 的巢狀陣列。

# --hints--

`myArray` 應該至少有一個陣列巢狀在另一個陣列中。

```js
assert(Array.isArray(myArray) && myArray.some(Array.isArray));
```

# --seed--

## --after-user-code--

```js
if(typeof myArray !== "undefined"){(function(){return myArray;})();}
```

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = [[1, 2, 3]];
```
