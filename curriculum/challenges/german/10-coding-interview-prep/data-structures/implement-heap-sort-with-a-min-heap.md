---
id: 587d825b367417b2b2512c8c
title: Heap-Sortierung mit einem Min-Heap implementieren
challengeType: 1
forumTopicId: 301643
dashedName: implement-heap-sort-with-a-min-heap
---

# --description--

Now that we can add and remove elements let's see some of the applications heaps can be used for. Heaps are commonly used to implement priority queues because they always store an item of greatest or least value in first position. In addition, they are used to implement a sorting algorithm called heap sort. We'll see how to do this here. Heap sort uses a min heap, the reverse of a max heap. A min heap always stores the element of least value in the root position.

Heap-Sortierung funktioniert, indem man ein unsortiertes Array nimmt, jedes Element im Array in einen Min-Heap einfügt und dann jedes Element aus dem Min-Heap in ein neues Array extrahiert. Die Min-Heap-Struktur stellt sicher, dass das neue Array die ursprünglichen Elemente in der Reihenfolge der kleinsten bis größten Menge enthält. Dies ist einer der effizientesten Sortieralgorithmen mit einer durchschnittlichen und schlechtesten Leistung von O(nlog(n)).

# --instructions--

Implementieren wir eine Haufensortierung mit einem Min-Haufen. Du kannst deinen Max-Heap-Code hier gerne anpassen. Erstelle ein Objekt `MinHeap` mit den Methoden `insert`, `remove` und `sort`. Die `sort`-Methode sollte ein Array aller Elemente im Min-Heap zurückgeben, das vom kleinsten zum größten sortiert ist.

# --hints--

Die `MinHeap`-Datenstruktur sollte vorhanden sein.

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

`MinHeap` sollte eine Methode namens `insert` haben.

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

`MinHeap` sollte eine Methode namens `remove` haben.

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

`MinHeap` sollte eine Methode namens `sort` haben.

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

Die Methode `sort` sollte ein Array zurückgeben, das alle Elemente enthält, die dem Min Heap in sortierter Reihenfolge hinzugefügt wurden.

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
