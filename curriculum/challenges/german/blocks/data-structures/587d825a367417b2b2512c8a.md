---
id: 587d825a367417b2b2512c8a
title: Einfügen eines Elements in einen Max Heap
challengeType: 1
forumTopicId: 301703
dashedName: insert-an-element-into-a-max-heap
---

# --description--

Now we will move on to another tree data structure, the binary heap. A binary heap is a partially ordered binary tree which satisfies the heap property. The heap property specifies a relationship between parent and child nodes. You may have a max heap, in which all parent nodes are greater than or equal to their child nodes, or a min heap, in which the reverse is true. Binary heaps are also complete binary trees. This means that all levels of the tree are fully filled and if the last level is partially filled it is filled from left to right.

Während binäre Heaps als Baumstrukturen mit Knoten, die linke und rechte Referenzen enthalten, implementiert werden können, erlaubt uns die partielle Ordnung gemäß der Heap-Eigenschaft, den Heap durch ein Array darzustellen. Die Eltern-Kind-Beziehung ist das, was uns interessiert, und mit einfacher Arithmetik können wir die Kinder eines beliebigen Elternteils und das Elternteil eines beliebigen Kindknotens berechnen.

Nehmen wir zum Beispiel diese Array-Darstellung eines binären Min-Haufens:

```js
[ 6, 22, 30, 37, 63, 48, 42, 76 ]
```

Der Wurzelknoten ist das erste Element, `6`. Seine Kinder sind `22` und `30`. Betrachtet man die Beziehung zwischen den Array-Indizes dieser Werte, so sind für den Index `i` die Kinder `2 * i + 1` und `2 * i + 2`. In ähnlicher Weise ist das Element mit dem Index `0` das übergeordnete Element dieser beiden Kinder mit den Indizes `1` und `2`. Allgemeiner ausgedrückt, können wir das Elternteil eines Knotens bei einem beliebigen Index mit der folgenden Methode finden: `Math.floor((i - 1) / 2)`. Diese Muster gelten auch, wenn der binäre Baum beliebig groß wird. Schließlich können wir eine kleine Anpassung vornehmen, um diese Arithmetik noch einfacher zu machen, indem wir das erste Element im Array auslassen. Auf diese Weise wird für jedes Element mit einem bestimmten Index `i` die folgende Beziehung erstellt:

Beispiel einer Array-Darstellung:

```js
[ null, 6, 22, 30, 37, 63, 48, 42, 76 ]
```

Das linke Kind eines Elements: `i * 2`

Das rechte Kind eines Elements: `i * 2 + 1`

Übergeordnetes Element eines Elements: `Math.floor(i / 2)`

Wenn man sich die Mathematik erst einmal zu Gemüte geführt hat, ist die Verwendung einer Array-Darstellung sehr nützlich, da die Positionen der Knoten mit dieser Arithmetik schnell bestimmt werden können und der Speicherverbrauch verringert wird, da man keine Verweise auf untergeordnete Knoten pflegen muss.

# --instructions--

Anweisungen: Hier werden wir einen Max Heap erstellen. Beginne damit, eine `insert` Methode zu erstellen, die Elemente zu unserem Heap hinzufügt. Er muss beim Einfügen immer die Heap-Eigenschaft beibehalten. Für einen Max Heap bedeutet dies, dass das Wurzelelement immer den größten Wert im Baum haben sollte und dass alle übergeordneten Knoten größer als ihre Kinder sein sollten. Bei einer Array-Implementierung eines Heaps wird dies in der Regel in drei Schritten bewerkstelligt:

<ol>
  <li>Add the new element to the end of the array.</li>
  <li>Ist das Element größer als sein Elternteil, tausche es aus.</li>
  <li>Fahre mit dem Umschalten fort, bis das neue Element entweder kleiner als sein übergeordnetes Element ist oder bis du die Wurzel des Baums erreicht hast.</li>
</ol>

Füge schließlich eine `print`-Methode hinzu, die ein Array mit allen Elementen zurückgibt, die dem Heap hinzugefügt wurden.

# --hints--

Die `MaxHeap`-Datenstruktur sollte vorhanden sein.

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

`MaxHeap` sollte eine Methode namens `insert` haben.

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

`MaxHeap` sollte eine Methode namens `print` haben.

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

Die `insert` Methode sollte Elemente entsprechend der max heap Eigenschaft hinzufügen.

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
