---
id: 587d825b367417b2b2512c8c
title: 最小ヒープでヒープ ソートを実装する
challengeType: 1
forumTopicId: 301643
dashedName: implement-heap-sort-with-a-min-heap
---

# --description--

Now that we can add and remove elements let's see some of the applications heaps can be used for. Heaps are commonly used to implement priority queues because they always store an item of greatest or least value in first position. In addition, they are used to implement a sorting algorithm called heap sort. We'll see how to do this here. Heap sort uses a min heap, the reverse of a max heap. A min heap always stores the element of least value in the root position.

ヒープソートの仕組みは、ソートされていない配列を取り、配列内の各要素を最小ヒープに追加し、次に最小ヒープからすべての要素を新しい配列に抽出するというものです。 最小ヒープ構造では、新しい配列に元の要素が必ず最小から最大の順序で格納されます。 これは、平均ケースと最悪ケースのパフォーマンスが O(nlog(n)) である最も効率的なソートアルゴリズムの一つです。

# --instructions--

最小ヒープを使ってヒープソートを実装しましょう。 ここでは、自分が書いた最大ヒープのコードを基にしても構いません。 `insert`、`remove`、`sort` の各メソッドを持つオブジェクト `MinHeap` を作成してください。 `sort` メソッドは、最小ヒープ内のすべての要素が最小から最大の順に格納されている配列を返す必要があります。

# --hints--

`MinHeap` データ構造を用意する必要があります。

```js
assert(
  (function () {
    var test = false;
    if (typeof MinHeap !== 'undefined') {
      test = new MinHeap();
    }
    return typeof test == 'object';
  })()
);
```

`MinHeap` には `insert` というメソッドが必要です。

```js
assert(
  (function () {
    var test = false;
    if (typeof MinHeap !== 'undefined') {
      test = new MinHeap();
    } else {
      return false;
    }
    return typeof test.insert == 'function';
  })()
);
```

`MinHeap` には `remove` というメソッドが必要です。

```js
assert(
  (function () {
    var test = false;
    if (typeof MinHeap !== 'undefined') {
      test = new MinHeap();
    } else {
      return false;
    }
    return typeof test.remove == 'function';
  })()
);
```

`MinHeap` には `sort` というメソッドが必要です。

```js
assert(
  (function () {
    var test = false;
    if (typeof MinHeap !== 'undefined') {
      test = new MinHeap();
    } else {
      return false;
    }
    return typeof test.sort == 'function';
  })()
);
```

`sort` メソッドは、最小ヒープに追加されたすべての要素がソート順に格納されている配列を返す必要があります。

```js
assert(
  (() => {
    if (typeof MinHeap === 'undefined') {
      return false;
    }

    const heap = new MinHeap();
    const arr = createRandomArray(25);

    for (let i of arr) {
      heap.insert(i);
    }

    const result = heap.sort();
    arr.sort((a, b) => a - b);

    for (let i = 0; i < arr.length; i++) {
      if (arr[i] !== result[i]) {
        return false;
      }
    }
    return true;
  })()
);
```

# --seed--

## --seed-contents--

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}
// Generate a randomly filled array
function createRandomArray(size = 5){
  let a = new Array(size);
  for(let i = 0; i < size; i++)
    a[i] = Math.floor(Math.random() * 100);

  return a;
}
const array = createRandomArray(25);

var MinHeap = function() {
  // Only change code below this line

  // Only change code above this line
};
```

# --solutions--

```js
// solution required
```
