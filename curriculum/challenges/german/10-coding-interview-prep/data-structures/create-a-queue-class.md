---
id: 587d8250367417b2b2512c60
title: Erstelle eine Warteschlangenklasse
challengeType: 1
forumTopicId: 301631
dashedName: create-a-queue-class
---

# --description--

Like stacks, queues are a collection of elements. But unlike stacks, queues follow the FIFO (First-In First-Out) principle. Elements added to a queue are pushed to the tail, or the end, of the queue, and only the element at the front of the queue is allowed to be removed.

Wir könnten ein Array verwenden, um eine Warteschlange darzustellen, aber genau wie bei Stapeln wollen wir die Kontrolle über unsere Warteschlangen begrenzen.

Die beiden wichtigsten Methoden einer Warteschlangenklasse sind die enqueue- und die dequeue-Methode. Die enqueue-Methode schiebt ein Element an das Ende der Warteschlange, und die dequeue-Methode entfernt das Element am Anfang der Warteschlange und gibt es zurück. Weitere nützliche Methoden sind die Methoden front, size und isEmpty.

# --instructions--

Schreibe eine `enqueue`-Methode, die ein Element an das Ende der Warteschlange schiebt, eine `dequeue`-Methode, die das vordere Element entfernt und zurückgibt, eine `front`-Methode, die das vordere Element anzeigt, eine `size`-Methode, die die Länge anzeigt, und eine `isEmpty`-Methode, die überprüft, ob die Warteschlange leer ist.

# --hints--

Deine `Queue`-Klasse sollte eine `enqueue`-Methode haben.

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.enqueue === 'function';
  })()
);
```

Deine `Queue`-Klasse sollte eine `dequeue`-Methode haben.

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.dequeue === 'function';
  })()
);
```

Deine `Queue`-Klasse sollte eine `front`-Methode haben.

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.front === 'function';
  })()
);
```

Deine `Queue`-Klasse sollte eine `size`-Methode haben.

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.size === 'function';
  })()
);
```

Deine `Queue`-Klasse sollte eine `isEmpty`-Methode haben.

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.isEmpty === 'function';
  })()
);
```

Die Methode `dequeue` sollte das vorderste Element der Warteschlange entfernen und zurückgeben

```js
assert(
  (function () {
    var test = new Queue();
    test.enqueue('Smith');
    test.enqueue('John');
    return test.dequeue() === 'Smith';
  })()
);
```

Die Methode `front` sollte den Wert des vordersten Elements der Warteschlange zurückgeben

```js
assert(
  (function () {
    var test = new Queue();
    test.enqueue('Smith');
    test.enqueue('John');
    return test.front() === 'Smith';
  })()
);
```

Die Methode `size` sollte die Länge der Warteschlange zurückgeben

```js
assert(
  (function () {
    var test = new Queue();
    test.enqueue('Smith');
    return test.size() === 1;
  })()
);
```

Die Methode `isEmpty` sollte `false` zurückgeben, wenn sich Elemente in der Warteschlange befinden

```js
assert(
  (function () {
    var test = new Queue();
    test.enqueue('Smith');
    return !test.isEmpty();
  })()
);
```

# --seed--

## --seed-contents--

```js
function Queue() {
  var collection = [];
  this.print = function() {
    console.log(collection);
  };
  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
function Queue () { 
    var collection = [];
    this.print = function() {
        console.log(collection);
    };
    // Only change code below this line
    this.enqueue = function(item) {
        collection.push(item);
    }

    this.dequeue = function() {
        return collection.shift();
    }

    this.front = function() {
        return collection[0];
    }

    this.size = function(){
        return collection.length;
    }

    this.isEmpty = function() {
        return collection.length === 0 ? true : false;
    }
    // Only change code above this line
}
```
