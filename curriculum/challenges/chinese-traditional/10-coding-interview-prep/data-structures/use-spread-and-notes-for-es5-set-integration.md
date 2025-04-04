---
id: 587d8255367417b2b2512c73
title: 使用 Spread 和 Notes 進行 ES5 Set() 集成
challengeType: 1
forumTopicId: 301720
dashedName: use-spread-and-notes-for-es5-set-integration
---

# --description--

Do you remember the ES6 spread operator `...`?

`...` 可以在 ES6 中獲取可迭代對象並將它們轉換爲數組。

讓我們創建一個 Set，並檢查傳播函數。

```js
var set = new Set([1,2,3]);
var setToArr = [...set]
console.log(setToArr) // returns [ 1, 2, 3 ]
```

# --instructions--

在本練習中，我們將集合對象傳遞給 `checkSet` 函數。 它應該返回一個包含集合值的數組。

現在你已經成功學會了如何使用ES6 `Set()`對象，幹得好！

# --hints--

`checkSet(new Set([1,2,3,4,5,6,7])` 應該返回 `[1, 2, 3, 4, 5, 6, 7]`。

```js
var test = checkSet(new Set([1, 2, 3, 4, 5, 6, 7]));
assert.deepEqual(test, [1, 2, 3, 4, 5, 6, 7]);
```

# --seed--

## --seed-contents--

```js
function checkSet(set){
   // Only change code below this line

   // Only change code above this line
}
```

# --solutions--

```js
function checkSet(set){
return [...set];}
```
