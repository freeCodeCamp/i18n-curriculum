---
id: 587d8255367417b2b2512c74
title: Erstelle eine Prioritäts-Warteschlangenklasse
challengeType: 1
forumTopicId: 301630
dashedName: create-a-priority-queue-class
---

# --description--

In this challenge you will be creating a Priority Queue. A Priority Queue is a special type of Queue in which items may have additional information which specifies their priority. This could be simply represented with an integer. Item priority will override placement order in determining the sequence items are dequeued. If an item with a higher priority is enqueued after items with lower priority, the higher priority item will be dequeued before all the others.

Nehmen wir zum Beispiel an, wir haben eine Prioritätswarteschlange mit drei Einträgen:

```js
[['kitten', 2], ['dog', 2], ['rabbit', 2]]
```

Hier steht der zweite Wert (eine ganze Zahl) für die Priorität des Elements. Wenn wir `['human', 1]` mit einer Priorität von `1` in die Warteschlange stellen (unter der Annahme, dass niedrigere Prioritäten Vorrang haben), wäre er dann das erste Element, das aus der Warteschlange genommen wird. Die Sammlung würde wie folgt aussehen:

```js
[['human', 1], ['kitten', 2], ['dog', 2], ['rabbit', 2]]
```

Wir haben begonnen, eine `PriorityQueue` im Code-Editor zu schreiben. Du musst eine `enqueue`-Methode zum Hinzufügen von Elementen mit einer Priorität, eine `dequeue`-Methode zum Entfernen und Zurückgeben von Elementen, eine `size`-Methode zum Zurückgeben der Anzahl von Elementen in der Warteschlange, eine `front`-Methode zum Zurückgeben des Elements am Anfang der Warteschlange und schließlich eine `isEmpty`-Methode, die `true` zurückgibt, wenn die Warteschlange leer ist, oder `false`, wenn sie es nicht ist.

Das `enqueue` sollte Elemente mit dem oben gezeigten Format (`['human', 1]`) akzeptieren, wobei `1` die Priorität darstellt. `dequeue` und `front` sollten nur den Namen des Elements zurückgeben, nicht seine Priorität.

# --hints--

Deine `PriorityQueue` Klasse sollte eine `enqueue` Methode haben.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.enqueue === 'function';
  })()
);
```

Ihre `PriorityQueue` Klasse sollte eine `dequeue`-Methode haben.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.dequeue === 'function';
  })()
);
```

Deine `PriorityQueue` Klasse sollte eine `size` Methode haben.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.size === 'function';
  })()
);
```

Deine `PriorityQueue` Klasse sollte eine `front` Methode haben.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.front === 'function';
  })()
);
```

Deine `PriorityQueue` Klasse sollte eine `isEmpty` Methode haben.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.isEmpty === 'function';
  })()
);
```

Deine `PriorityQueue`Klasse sollte die aktuelle Anzahl der Elemente mit Hilfe der `size`-Methode korrekt verfolgen, wenn Elemente in die Warteschlange gestellt und aus der Warteschlange entfernt werden.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    test.enqueue(['David Brown', 2]);
    test.enqueue(['Jon Snow', 1]);
    var size1 = test.size();
    test.dequeue();
    var size2 = test.size();
    test.enqueue(['A', 3]);
    test.enqueue(['B', 3]);
    test.enqueue(['C', 3]);
    return size1 === 2 && size2 === 1 && test.size() === 4;
  })()
);
```

Die `front`-Methode sollte das richtige Element an der Spitze der Warteschlange zurückgeben, wenn Elemente in die Warteschlange aufgenommen oder aus ihr entfernt werden.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    test.enqueue(['David Brown', 2]);
    var front1 = test.front();
    test.enqueue(['Jon Snow', 1]);
    var front2 = test.front();
    test.dequeue();
    test.enqueue(['A', 3]);
    var front3 = test.front();
    test.enqueue(['B', 3]);
    test.enqueue(['C', 3]);
    test.dequeue();
    var front4 = test.front();
    return (
      front1 === 'David Brown' &&
      front2 === 'Jon Snow' &&
      front3 === 'David Brown' &&
      front4 === 'A'
    );
  })()
);
```

Die Methode `isEmpty` sollte `true` zurückgeben, wenn die Warteschlange leer ist.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    test.enqueue(['A', 1]);
    test.enqueue(['B', 1]);
    test.dequeue();
    var first = test.isEmpty();
    test.dequeue();
    return !first && test.isEmpty();
  })()
);
```

Die Prioritäts-Warteschlange sollte Elemente mit einer höheren Priorität vor Elementen mit einer niedrigeren Priorität zurückgeben und ansonsten Elemente in der Reihenfolge first-in-first-out zurückgeben.

```js
assert(
  (function () {
    var test = new PriorityQueue();
    test.enqueue(['A', 5]);
    test.enqueue(['B', 5]);
    test.enqueue(['C', 5]);
    test.enqueue(['D', 3]);
    test.enqueue(['E', 1]);
    test.enqueue(['F', 7]);
    var result = [];
    result.push(test.dequeue());
    result.push(test.dequeue());
    result.push(test.dequeue());
    result.push(test.dequeue());
    result.push(test.dequeue());
    result.push(test.dequeue());
    return result.join('') === 'EDABCF';
  })()
);
```

# --seed--

## --seed-contents--

```js
function PriorityQueue () {
  this.collection = [];
  this.printCollection = function() {
    console.log(this.collection);
  };
  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
function PriorityQueue() {
  this.collection = [];
  this.printCollection = function () {
    console.log(this.collection);
  };
  // Only change code below this line
  this.enqueue = function (newitem) {
    if (this.isEmpty()) {
      return this.collection.push(newitem);
    }

    this.collection = this.collection.reverse();
    var found_index = this.collection.findIndex(function (item) {
      return newitem[1] >= item[1];
    });
    if (found_index === -1) {
      this.collection.push(newitem);
    } else {
      this.collection.splice(found_index, 0, newitem);
    }
    this.collection = this.collection.reverse();
  };
  this.dequeue = function () {
    if (!this.isEmpty()) {
      return this.collection.shift()[0];
    } else {
      return "The queue is empty.";
    }
  };
  this.size = function () {
    return this.collection.length;
  };
  this.front = function () {
    return this.collection[0][0];
  };
  this.isEmpty = function () {
    return this.size() > 0 ? false : true;
  };
  // Only change code above this line
}
```
