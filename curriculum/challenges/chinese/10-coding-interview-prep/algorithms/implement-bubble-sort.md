---
id: 8d5123c8c441eddfaeb5bdef
title: 实现冒泡排序
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

This is the first of several challenges on sorting algorithms. Given an array of unsorted items, we want to be able to return a sorted array. We will see several different methods to do this and learn some tradeoffs between these different approaches. While most modern languages have built-in sorting methods for operations like this, it is still important to understand some of the common basic approaches and learn how they can be implemented.

在这里我们将看到冒泡排序。 冒泡排序方法从未排序数组的开头开始，并向末端“冒泡”未排序的值，遍历数组直到它完全排序。 它是这样实现的：比较相邻的元素，如果它们的顺序不对，就交换它们。 该方法继续循环遍历数组，直到没有发生交换，此时数组已被排序。

这种方法需要对数组进行多次循环，对于平均和最坏的情况来说，其时间复杂性为二次方。 虽然简单，但在大多数情况下通常不切实际。

**说明：**写一个 `bubbleSort` 函数，它将一个整数数组作为输入，并返回一个数组，其中的整数元素以从小到大的顺序排列。

# --hints--

`bubbleSort` 应该是一个函数。

```js
assert(typeof bubbleSort == 'function');
```

`bubbleSort` 应该返回一个已排序的数组（从小到大）。

```js
assert(
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

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` 应返回一个除顺序外没有变化的数组。

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

`bubbleSort` 不应使用内置的 `.sort()` 方法。

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
  bubbleSort([0, 1]);
  return !sortUsed;
}
```

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
