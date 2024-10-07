---
id: 587d7da9367417b2b2512b6a
title: 在不更改原始數組的前提下返回排序後的數組
challengeType: 1
forumTopicId: 301237
dashedName: return-a-sorted-array-without-changing-the-original-array
---

# --description--

A side effect of the `sort` method is that it changes the order of the elements in the original array. In other words, it mutates the array in place. One way to avoid this is to first concatenate an empty array to the one being sorted (remember that `slice` and `concat` return a new array), then run the `sort` method.

# --instructions--

在 `nonMutatingSort` 函數中使用 `sort` 方法對數組中的元素按升序進行排列。 函數不能改變 `globalArray` 變量，應返回一個新數組。

# --hints--

應該使用 `sort` 方法。

```js
assert(nonMutatingSort.toString().match(/\.sort/g));
```

`globalArray` 變量不應該改變。

```js
assert(JSON.stringify(globalArray) === JSON.stringify([5, 6, 3, 2, 9]));
```

`nonMutatingSort(globalArray)` 應該返回 `[2, 3, 5, 6, 9]`。

```js
assert(
  JSON.stringify(nonMutatingSort(globalArray)) ===
    JSON.stringify([2, 3, 5, 6, 9])
);
```

`nonMutatingSort(globalArray)` 不應被硬編碼。

```js
assert(!nonMutatingSort.toString().match(/\[.*?[23569].*?\]/gs));
```

函數應該返回一個新數組，而不是傳遞給它的數組。

```js
assert(nonMutatingSort(globalArray) !== globalArray);
```

`nonMutatingSort([1, 30, 4, 21, 100000])` 應該返回 `[1, 4, 21, 30, 100000]`

```js
assert(JSON.stringify(nonMutatingSort([1, 30, 4, 21, 100000])) ===
    JSON.stringify([1, 4, 21, 30, 100000]))
```

`nonMutatingSort([140000, 104, 99])` 應該返回 `[99, 104, 140000]`。

```js
assert(JSON.stringify(nonMutatingSort([140000, 104, 99])) ===
    JSON.stringify([99, 104, 140000]))
```

# --seed--

## --seed-contents--

```js
const globalArray = [5, 6, 3, 2, 9];

function nonMutatingSort(arr) {
  // Only change code below this line


  // Only change code above this line
}

nonMutatingSort(globalArray);
```

# --solutions--

```js
const globalArray = [5, 6, 3, 2, 9];
function nonMutatingSort(arr) {
  return [].concat(arr).sort((a,b) => a-b);
}
```
