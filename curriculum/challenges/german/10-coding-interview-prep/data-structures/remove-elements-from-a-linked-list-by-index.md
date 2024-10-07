---
id: 587d8251367417b2b2512c65
title: Entfernen von Elementen aus einer verknüpften Liste nach Index
challengeType: 1
forumTopicId: 301711
dashedName: remove-elements-from-a-linked-list-by-index
---

# --description--

Before we move on to another data structure, let's get a couple of last bits of practice with linked lists.

Schreiben wir eine `removeAt`-Methode, die das `element` bei einem bestimmten `index` entfernt. Die Methode sollte `removeAt(index)` heißen. Um ein `element` an einem bestimmten `index` zu entfernen, müssen wir jeden Knoten zählen, während wir uns durch die verknüpfte Liste bewegen.

Eine gängige Technik zur Iteration durch die Elemente einer verknüpften Liste beinhaltet einen <dfn>'runner'</dfn> oder Sentinel, der auf die Knoten zeigt, die deinen Code vergleichen. In unserem Fall beginnen wir bei `head` unserer Liste mit einer `currentIndex`-Variablen, die bei `0` beginnt. Der `currentIndex` sollte für jeden übergebenen Knoten um eins erhöht werden.

Genau wie bei unserer `remove(element)`-Methode, die <a href="/learn/coding-interview-prep/data-structures/remove-elements-from-a-linked-list" target="_blank" rel="noopener noreferrer nofollow">wir in einer früheren Lektion behandelt haben</a>, müssen wir darauf achten, dass der Rest unserer Liste nicht verwaist, wenn wir den Knoten in unserer `removeAt(index)`-Methode entfernen. Wir halten unsere Knoten zusammenhängend, indem wir sicherstellen, dass der Knoten, der einen Verweis auf den entfernten Knoten hat, einen Verweis auf den nächsten Knoten hat.

# --instructions--

Schreibe eine `removeAt(index)`-Methode, die einen Knoten an einem bestimmten `index` entfernt und zurückgibt. Die Methode sollte `null` zurückgeben, wenn das angegebene `index` entweder negativ oder größer oder gleich dem `length` der verknüpften Liste ist.

**Note:** Vergiss nicht, den `currentIndex` zu zählen.

# --hints--

Deine `LinkedList` Klasse sollte eine `removeAt` Methode haben.

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.removeAt === 'function';
  })()
);
```

Deine `removeAt`-Methode sollte die `length` der verknüpften Liste um eins reduzieren.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    test.removeAt(1);
    return test.size() === 2;
  })()
);
```

Deine `removeAt` Methode sollte das Element am angegebenen Index aus der verknüpften Liste entfernen.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    test.add('bird');
    test.removeAt(1);
    return (
      JSON.stringify(test.head()) ===
      '{"element":"cat","next":{"element":"kitten","next":{"element":"bird","next":null}}}'
    );
  })()
);
```

Wenn nur ein Element in der verknüpften Liste vorhanden ist, sollte deine `removeAt`-Methode das Element am angegebenen Index entfernen und zurückgeben, und die Länge der verknüpften Liste verringern.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    var removedItem = test.removeAt(0);
    return test.head() === null && test.size() === 0 && removedItem === 'cat';
  })()
);
```

Deine `removeAt` Methode sollte das Element des entfernten Knotens zurückgeben.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    return test.removeAt(1) === 'dog';
  })()
);
```

Deine `removeAt`-Methode sollte `null` zurückgeben und die verknüpfte Liste sollte sich nicht ändern, wenn der angegebene Index kleiner als `0` ist.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    var removedItem = test.removeAt(-1);
    return (
      removedItem === null &&
      JSON.stringify(test.head()) ===
        '{"element":"cat","next":{"element":"dog","next":{"element":"kitten","next":null}}}'
    );
  })()
);
```

Deine `removeAt`-Methode sollte `null` zurückgeben und die verknüpfte Liste sollte sich nicht ändern, wenn der angegebene Index größer oder gleich der `length` der Liste ist.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    var removedItem = test.removeAt(3);
    return (
      removedItem === null &&
      JSON.stringify(test.head()) ===
        '{"element":"cat","next":{"element":"dog","next":{"element":"kitten","next":null}}}'
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
function LinkedList() {
  var length = 0;
  var head = null;

  var Node = function(element){
    this.element = element;
    this.next = null;
  };

  this.size = function(){
    return length;
  };

  this.head = function(){
    return head;
  };

  this.add = function(element){
    var node = new Node(element);
    if(head === null){
      head = node;
    } else {
      var currentNode = head;

      while(currentNode.next){
        currentNode  = currentNode.next;
      }

      currentNode.next = node;
    }

    length++;
  };

  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
function LinkedList() {
  var length = 0;
  var head = null;

  var Node = function (element) {
    this.element = element;
    this.next = null;
  };

  this.size = function () {
    return length;
  };

  this.head = function () {
    return head;
  };

  this.add = function (element) {
    var node = new Node(element);
    if (head === null) {
      head = node;
    } else {
      var currentNode = head;

      while (currentNode.next) {
        currentNode = currentNode.next;
      }

      currentNode.next = node;
    }

    length++;
  };

  this.removeAt = function (index) {
    var currentNode = head;
    var previous = head;
    var count = 0;
    if (index >= length || index < 0) {
      return null;
    }
    if (index === 0) {
      var removed = head.element;
      head = currentNode.next;
    } else {
      while (count < index) {
        previous = currentNode;
        currentNode = currentNode.next;
        count++;
      }
      var removed = previous.next.element;
      previous.next = currentNode.next;
    }
    length--;
    return removed;
  };
}
```
