---
id: 587d78b3367417b2b2512b11
title: 使用 splice() 添加元素
challengeType: 1
forumTopicId: 301152
dashedName: add-items-using-splice
---

# --description--

Remember in the last challenge we mentioned that `splice()` can take up to three parameters? Well, you can use the third parameter, comprised of one or more element(s), to add to the array. This can be incredibly useful for quickly switching out an element, or a set of elements, for another.

```js
const numbers = [10, 11, 12, 12, 15];
const startIndex = 3;
const amountToDelete = 1;

numbers.splice(startIndex, amountToDelete, 13, 14);
console.log(numbers);
```

第二個 `12` 已被刪除，我們在同一索引處添加 `13` 和 `14`。 `numbers` 數組現在將會是 `[ 10, 11, 12, 13, 14, 15 ]`。

在上面的代碼中，數組一開始包含了若干數字。 接着，我們調用 `splice()` 方法，索引爲 (3) 的地方開始刪除元素，刪除的元素數量是 (1)。然後，(13, 14) 是在刪除位置插入的元素。 可以在 `amountToDelete` 後面傳入任意數量的元素（以逗號分隔），每個都會被插入到數組中。

# --instructions--

我們已經定義了一個 `htmlColorNames` 函數，它以一個 HTML 顏色的數組作爲輸入參數。 請修改這個函數，使用 `splice()` 來移除數組中的前兩個元素，並在對應的位置上添加 `'DarkSalmon'` 和 `'BlanchedAlmond'`。

# --hints--

`htmlColorNames` 應返回 `["DarkSalmon", "BlanchedAlmond", "LavenderBlush", "PaleTurquoise", "FireBrick"]`。

```js
assert.deepEqual(
  htmlColorNames([
    'DarkGoldenRod',
    'WhiteSmoke',
    'LavenderBlush',
    'PaleTurquoise',
    'FireBrick'
  ]),
  [
    'DarkSalmon',
    'BlanchedAlmond',
    'LavenderBlush',
    'PaleTurquoise',
    'FireBrick'
  ]
);
```

`htmlColorNames` 函數中應調用 `splice()` 方法。

```js
assert(/.splice/.test(__helpers.removeJSComments(code)));
```

不應使用 `shift()` 或 `unshift()`。

```js
assert(!/shift|unshift/.test(__helpers.removeJSComments(code)));
```

不應使用數組的方括號表示法。

```js
assert(!/\[\d\]\s*=/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function htmlColorNames(arr) {
  // Only change code below this line

  // Only change code above this line
  return arr;
}

console.log(htmlColorNames(['DarkGoldenRod', 'WhiteSmoke', 'LavenderBlush', 'PaleTurquoise', 'FireBrick']));
```

# --solutions--

```js
function htmlColorNames(arr) {
  arr.splice(0,2,'DarkSalmon', 'BlanchedAlmond');
  return arr;
}
```
