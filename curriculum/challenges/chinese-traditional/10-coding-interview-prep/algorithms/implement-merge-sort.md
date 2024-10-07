---
id: 587d825c367417b2b2512c8f
title: 實現歸併排序
challengeType: 1
forumTopicId: 301614
dashedName: implement-merge-sort
---

# --description--

Another common intermediate sorting algorithm is merge sort. Like quick sort, merge sort also uses a divide-and-conquer, recursive methodology to sort an array. It takes advantage of the fact that it is relatively easy to sort two arrays as long as each is sorted in the first place. But we'll start with only one array as input, so how do we get to two sorted arrays from that? Well, we can recursively divide the original input in two until we reach the base case of an array with one item. A single-item array is naturally sorted, so then we can start combining. This combination will unwind the recursive calls that split the original array, eventually producing a final sorted array of all the elements. The steps of merge sort, then, are:

**1)** 將輸入數組遞歸地分成兩部分，直到生成僅包含一個元素的子數組。

**2)** 將每個已排序的子數組合並在一起以生成最終的排序的數組。

合併排序是一種有效的排序方法，時間複雜度爲 *O(nlog(n))* 。 該算法很受歡迎，因爲它性能高且易於實現。

順便說一句，這將是我們在此處介紹的最後一種排序算法。 但是，稍後在關於樹型數據結構的部分中，我們將描述堆排序，這是另一種在其實現中需要二進制堆的有效排序方法。

**說明：** 編寫一個函數 `mergeSort`，它以整數數組作爲輸入，並按從最小到最大的排序順序返回這些整數的數組。 實現這一點的一個好方法是編寫一個函數，例如 `merge`，它負責合併兩個已排序的數組；以及另一個函數，例如 `mergeSort`，它負責遞歸，生成單項數組以提供給 merge。 祝你好運！

# --hints--

`mergeSort` 應該是一個函數。

```js
assert(typeof mergeSort == 'function');
```

`mergeSort` 應該返回一個已排序的數組（從小到大）。

```js
assert(
  isSorted(
    mergeSort([
      1,
      4,
      2,
      8,
      345,
      123,
      43,
      32,
      5643,
      63,
      123,
      43,
      2,
      55,
      1,
      234,
      92
    ])
  )
);
```

`mergeSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` 應返回一個除順序外沒有變化的數組。

```js
assert.sameMembers(
  mergeSort([
    1,
    4,
    2,
    8,
    345,
    123,
    43,
    32,
    5643,
    63,
    123,
    43,
    2,
    55,
    1,
    234,
    92
  ]),
  [1, 4, 2, 8, 345, 123, 43, 32, 5643, 63, 123, 43, 2, 55, 1, 234, 92]
);
```

`mergeSort` 不應使用內置的 `.sort()` 方法。

```js
assert(isBuiltInSortUsed());
```

# --seed--

## --after-user-code--

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}

function isBuiltInSortUsed(){
  let sortUsed = false;
  Array.prototype.sort = () => sortUsed = true;
  mergeSort([0, 1]);
  return !sortUsed;
}
```

## --seed-contents--

```js
function mergeSort(array) {
  // Only change code below this line
  return array;
  // Only change code above this line
}
```

# --solutions--

```js
function mergeSort(array) {
  if (array.length === 1) {
    return array;
  } else {
    const splitIndex = Math.floor(array.length / 2);
    return merge(
      mergeSort(array.slice(0, splitIndex)),
      mergeSort(array.slice(splitIndex))
    );
  }

  // Merge two sorted arrays
  function merge(array1, array2) {
    let merged = [];
    while (array1.length && array2.length) {
      if (array1[0] < array2[0]) {
        merged.push(array1.shift());
      } else if (array1[0] > array2[0]) {
        merged.push(array2.shift());
      } else {
        merged.push(array1.shift(), array2.shift());
      }
    }

    // After looping ends, one array is empty, and other array contains only
    // values greater than all values in `merged`
    return [...merged, ...array1, ...array2];
  }
}

mergeSort([1, 4, 2, 8, 345, 123, 43, 32, 5643, 63, 123, 43, 2, 55, 1, 234, 92]);
```
