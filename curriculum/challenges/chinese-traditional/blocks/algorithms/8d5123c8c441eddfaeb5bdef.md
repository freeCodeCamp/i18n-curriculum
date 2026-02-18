---
id: 8d5123c8c441eddfaeb5bdef
title: 實作泡沫排序
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

這是多個排序演算法挑戰中的第一個。給定一個未排序的陣列，我們希望能夠傳回一個已排序的陣列。我們將會看到幾種不同的行為來達成這個目標，並學習這些不同方法之間的一些取捨。雖然大多數現代語言都內建了用於這類操作的排序方法，但理解一些常見的基本方法並學習如何實作它們仍然很重要。

這裡我們將看到泡沫排序。泡沫排序方法從未排序陣列的開頭開始，並將未排序的值「冒泡」到陣列的末端，反覆遍歷陣列直到完全排序。它透過比較相鄰的條款並在順序錯誤時交換它們來達成此目的。該方法持續迴圈遍歷陣列，直到沒有交換發生，此時陣列即已排序。

此方法需要多次遍歷陣列，且在平均和最壞情況下具有二次時間複雜度。雖然簡單，但在大多數情況下通常不實用。

**說明：** 撰寫一個函式 `bubbleSort`，該函式接受一個整數陣列作為輸入，並傳回一個由小到大排序的整數陣列。

# --hints--

`bubbleSort` 應該是一個函式（程式）。

```js
assert.isFunction(bubbleSort);
```

`bubbleSort` 應該傳回一個已排序的陣列（由小到大）。

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}
assert.isTrue(
  isSorted(
    bubbleSort([
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

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` 應該傳回一個除了順序外未改變的陣列。

```js
assert.sameMembers(
  bubbleSort([
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

`bubbleSort` 不應該使用內建的 `.sort()` 方法。

```js
function isBuiltInSortUsed(){
  let sortUsed = false;
  const temp = Array.prototype.sort;
  Array.prototype.sort = () => sortUsed = true;
  try {
    bubbleSort([0, 1]);
  } finally {
    Array.prototype.sort = temp;
  }
  return sortUsed;
}
assert.isFalse(isBuiltInSortUsed());
```

# --seed--

## --seed-contents--

```js
function bubbleSort(array) {
  // Only change code below this line
  return array;
  // Only change code above this line
}
```

# --solutions--

```js
function bubbleSort(array) {
  for (let i = 0; i < array.length; i++) {
    let swapped = false;
    for (let j = 1; j < array.length; j++) {
      if (array[j - 1] > array[j]) {
        let temp = array[j-1];
        array[j-1] =  array[j];
        array[j] = temp;
        swapped = true;
      }
    }
    if (swapped === false) {
      break;
    }
  }
  return array;
}
```
