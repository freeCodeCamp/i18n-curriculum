---
id: 587d825a367417b2b2512c8a
title: 將元素插入最大堆
challengeType: 1
forumTopicId: 301703
dashedName: insert-an-element-into-a-max-heap
---

# --description--

Now we will move on to another tree data structure, the binary heap. A binary heap is a partially ordered binary tree which satisfies the heap property. The heap property specifies a relationship between parent and child nodes. You may have a max heap, in which all parent nodes are greater than or equal to their child nodes, or a min heap, in which the reverse is true. Binary heaps are also complete binary trees. This means that all levels of the tree are fully filled and if the last level is partially filled it is filled from left to right.

雖然二叉堆可以實現爲節點包含左引用和右引用的樹結構，但根據堆屬性的偏序允許我們用數組表示堆。 父子關係是我們感興趣的，通過簡單的算術，我們可以計算任何父節點的子節點和任何子節點的父節點。

例如，考慮二進制最小堆的這個數組表示：

```js
[ 6, 22, 30, 37, 63, 48, 42, 76 ]
```

根節點是第一個元素，`6`。 它的孩子是 `22` 和 `30`。 如果我們查看這些值的數組索引之間的關係，對於索引 `i` 的孩子是 `2 * i + 1` 和 `2 * i + 2`。 類似地，索引 `0` 處的元素是索引 `1` 和 `2` 處的這兩個子元素的父元素。 更爲普遍地說，我們可以通過以下方法找到任何索引處的節點的父節點：`Math.floor((i - 1) / 2)`。 當二叉樹增長到任何大小時，這些模式將保持不變。 最後，我們可以稍作調整，跳過數組中的第一個元素，使這個算術更加簡單。 這樣做會爲給定索引 `i` 處的任何元素創建以下關係：

示例數組表示：

```js
[ null, 6, 22, 30, 37, 63, 48, 42, 76 ]
```

一個元素的左孩子：`i * 2`

一個元素的右孩子：`i * 2 + 1`

一個元素的父元素：`Math.floor(i / 2)`

一旦你理解了數學，使用數組表示法是非常有用的，因爲節點的位置可以通過這種算術快速確定，而且內存的使用也減少了，因爲你不需要維護對子節點的引用。

# --instructions--

說明：這裏我們將創建一個最大堆。 首先創建一個 `insert` 方法，該方法將元素添加到我們的堆中。 在插入過程中，始終保持堆屬性很重要。 對於最大堆，這意味着根元素應始終具有樹中的最大值，並且所有父節點都應大於其子節點。 對於堆的數組實現，這通常分三個步驟完成：

<ol>
  <li>Add the new element to the end of the array.</li>
  <li>如果元素大於其父元素，則交換它們。</li>
  <li>繼續交換，直到新元素小於其父元素或到達樹的根部。</li>
</ol>

最後，添加一個 `print` 方法，該方法返回已添加到堆中的所有項目的數組。

# --hints--

`MaxHeap` 數據結構應該存在。

```js
assert(
  (function () {
    var test = false;
    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    }
    return typeof test == 'object';
  })()
);
```

`MaxHeap` 應該有一個名爲`insert` 的方法。

```js
assert(
  (function () {
    var test = false;
    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    } else {
      return false;
    }
    return typeof test.insert == 'function';
  })()
);
```

MaxHeap 應該有一個名爲print  的方法。

```js
assert(
  (function () {
    var test = false;
    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    } else {
      return false;
    }
    return typeof test.print == 'function';
  })()
);
```

insert  方法應該根據 maxheap 屬性添加元素。

```js
assert(
  (function () {
    var test = false;
    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    } else {
      return false;
    }
    test.insert(50);
    test.insert(100);
    test.insert(700);
    test.insert(32);
    test.insert(51);
    test.insert(800);
    const result = test.print();
    const solution = JSON.stringify([null,800,51,700,32,50,100]);
    const solutionWithoutNull = JSON.stringify([800,51,700,32,50,100]);

    return (result.length == 6) ? (JSON.stringify(result) == solutionWithoutNull) : (JSON.stringify(result) == solution);
  })()
);
```

# --seed--

## --seed-contents--

```js
var MaxHeap = function() {
  // Only change code below this line

  // Only change code above this line
};
```

# --solutions--

```js
var MaxHeap = function() {
    // Only change code below this line
    this.heap = [];
    this.parent = index => {
      return Math.floor((index - 1) / 2);
    }
    this.insert = element => {
      this.heap.push(element);
      this.heapifyUp(this.heap.length - 1);
    }
    this.heapifyUp = index => {
      let currentIndex = index,
      parentIndex = this.parent(currentIndex);
      while (currentIndex > 0 && this.heap[currentIndex] > this.heap[parentIndex]) {
        this.swap(currentIndex, parentIndex);
        currentIndex = parentIndex;
        parentIndex = this.parent(parentIndex);
      }
    }
    this.swap = (index1, index2) => {
      [this.heap[index1], this.heap[index2]] = [this.heap[index2], this.heap[index1]];
    }
    this.print = () => {
      return this.heap;
    }
    // Only change code above this line
};
```
