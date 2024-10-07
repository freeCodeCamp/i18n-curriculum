---
id: 587d825b367417b2b2512c8b
title: Ein Element aus einem Max Heap entfernen
challengeType: 1
forumTopicId: 301710
dashedName: remove-an-element-from-a-max-heap
---

# --description--

Now that we can add elements to our heap let's see how we can remove elements. Removing and inserting elements both require similar logic. In a max heap you will usually want to remove the greatest value, so this involves simply extracting it from the root of our tree. This will break the heap property of our tree, so we must reestablish it in some way. Typically, for a max heap this is done in the following way:

<ol>
  <li>Move the last element in the heap into the root position.</li>
  <li>Wenn eines der Kinder der Wurzel größer ist als er, wird die Wurzel mit dem Kind mit dem größeren Wert vertauscht.</li>
  <li>Setze die Vertauschung fort, bis das übergeordnete Element größer als die beiden untergeordneten Elemente ist oder du die letzte Ebene des Baums erreichst.</li>
</ol>

# --instructions--

Anweisungen: Füge eine Methode mit dem Namen `remove` zu unserem Max Heap hinzu. Diese Methode sollte den größten Wert zurückgeben, der zu unserem Max Heap hinzugefügt wurde, und ihn aus dem Heap entfernen. Er sollte auch den Heap neu anordnen, damit die Heap-Eigenschaft erhalten bleibt. Nach dem Entfernen eines Elements sollte das nächstgrößere im Heap verbleibende Element die Wurzel werden.

# --hints--

Die `MaxHeap`-Datenstruktur sollte vorhanden sein.

```js
assert(
  (function () {
    let test = false;
    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    }
    return typeof test == 'object';
  })()
);
```

`MaxHeap` sollte eine Methode namens `print` haben.

```js
assert(
  (function () {
    let test = false;
    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    } else {
      return false;
    }
    return typeof test.print == 'function';
  })()
);
```

`MaxHeap` sollte eine Methode namens `insert` haben.

```js
assert(
  (function () {
    let test = false;
    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    } else {
      return false;
    }
    return typeof test.insert == 'function';
  })()
);
```

`MaxHeap` sollte eine Methode namens `remove` haben.

```js
assert(
  (function () {
    let test = false;
    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    } else {
      return false;
    }
    return typeof test.remove == 'function';
  })()
);
```

Die `remove`-Methode sollte das größte Element aus dem max heap entfernen und dabei die Eigenschaft max heap beibehalten.

```js
function isHeap(arr, i, n) {
    if( arr[i] < arr[2 * i + 1] || arr[i] < arr[2 * i + 2] ){
        return false;
    }
    if (i > (n - 1) / 2) {
        return true;
    }
    if (isHeap(arr, 2 * i + 1, n) && isHeap(arr, 2 * i + 2, n)) {
        return true;
    }
    return false;
}


assert(
  (function () {
    let test = false;

    if (typeof MaxHeap !== 'undefined') {
      test = new MaxHeap();
    } else {
      return false;
    }

    let max = Infinity;
    const [result, vals] = [[], [9, 3, 5, 2, 15, 3, 7, 12, 7, 10, 90]];

    vals.forEach((val) => test.insert(val));

    for (let i = 0; i < vals.length; i++) {
      const curHeap = test.print();
      const arr = curHeap[0] === null ? curHeap.slice(1) : curHeap;

      if (!isHeap(arr, 0, arr.length - 1)) {
        return false;
      }

      const removed = test.remove();
      if (!vals.includes(removed)) return false;
      if (removed > max) return false
      max = removed;
      result.push(removed);
    }

    for (let i = 0; i < vals.length; i++) {
      if (!result.includes(vals[i])) {
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
const MaxHeap = function () {
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
  // Only change code below this line

  // Only change code above this line
};
```

# --solutions--

```js
// solution required
```
