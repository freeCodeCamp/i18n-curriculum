---
id: 587d825a367417b2b2512c8a
title: 将元素插入最大堆
challengeType: 1
forumTopicId: 301703
dashedName: insert-an-element-into-a-max-heap
---

# --description--

Now we will move on to another tree data structure, the binary heap. A binary heap is a partially ordered binary tree which satisfies the heap property. The heap property specifies a relationship between parent and child nodes. You may have a max heap, in which all parent nodes are greater than or equal to their child nodes, or a min heap, in which the reverse is true. Binary heaps are also complete binary trees. This means that all levels of the tree are fully filled and if the last level is partially filled it is filled from left to right.

虽然二叉堆可以实现为节点包含左引用和右引用的树结构，但根据堆属性的偏序允许我们用数组表示堆。 父子关系是我们感兴趣的，通过简单的算术，我们可以计算任何父节点的子节点和任何子节点的父节点。

例如，考虑二进制最小堆的这个数组表示：

```js
[ 6, 22, 30, 37, 63, 48, 42, 76 ]
```

根节点是第一个元素，`6`。 它的孩子是 `22` 和 `30`。 如果我们查看这些值的数组索引之间的关系，对于索引 `i` 的孩子是 `2 * i + 1` 和 `2 * i + 2`。 类似地，索引 `0` 处的元素是索引 `1` 和 `2` 处的这两个子元素的父元素。 更为普遍地说，我们可以通过以下方法找到任何索引处的节点的父节点：`Math.floor((i - 1) / 2)`。 当二叉树增长到任何大小时，这些模式将保持不变。 最后，我们可以稍作调整，跳过数组中的第一个元素，使这个算术更加简单。 这样做会为给定索引 `i` 处的任何元素创建以下关系：

示例数组表示：

```js
[ null, 6, 22, 30, 37, 63, 48, 42, 76 ]
```

一个元素的左孩子：`i * 2`

一个元素的右孩子：`i * 2 + 1`

一个元素的父元素：`Math.floor(i / 2)`

一旦你理解了数学，使用数组表示法是非常有用的，因为节点的位置可以通过这种算术快速确定，而且内存的使用也减少了，因为你不需要维护对子节点的引用。

# --instructions--

说明：这里我们将创建一个最大堆。 首先创建一个 `insert` 方法，该方法将元素添加到我们的堆中。 在插入过程中，始终保持堆属性很重要。 对于最大堆，这意味着根元素应始终具有树中的最大值，并且所有父节点都应大于其子节点。 对于堆的数组实现，这通常分三个步骤完成：

<ol>
  <li>Add the new element to the end of the array.</li>
  <li>如果元素大于其父元素，则交换它们。</li>
  <li>继续交换，直到新元素小于其父元素或到达树的根部。</li>
</ol>

最后，添加一个 `print` 方法，该方法返回已添加到堆中的所有项目的数组。

# --hints--

`MaxHeap` 数据结构应该存在。

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

`MaxHeap` 应该有一个名为`insert` 的方法。

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

MaxHeap 应该有一个名为print  的方法。

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

insert  方法应该根据 maxheap 属性添加元素。

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
