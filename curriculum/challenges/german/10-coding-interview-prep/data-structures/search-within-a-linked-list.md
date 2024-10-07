---
id: 587d8251367417b2b2512c64
title: Suche innerhalb einer verknüpften Liste
challengeType: 1
forumTopicId: 301715
dashedName: search-within-a-linked-list
---

# --description--

Let's add a few more useful methods to our linked list class. Wouldn't it be useful if we could tell if our list was empty or not, as with our `Stack` and `Queue` classes?

Wir sollten auch in der Lage sein, bestimmte Elemente in unserer verknüpften Liste zu finden. Das Durchlaufen von Datenstrukturen ist etwas, das du unbedingt üben solltest! Erzeugen wir eine `indexOf`-Methode, die ein `element` als Argument annimmt und das `index` dieses Elements in der verknüpften Liste zurückgibt. Wenn das Element nicht in der verknüpften Liste gefunden wird, wird `-1` zurückgegeben.

Wir können auch eine Methode implementieren, die das Gegenteil tut: eine `elementAt`-Methode, die ein `index` als Argument nimmt und das `element` am angegebenen `index` zurückgibt. Wenn kein `element` gefunden wird, wird `undefined` zurückgegeben.

# --instructions--

Schreibe eine `isEmpty` Methode, die überprüft ob die verlinkte Liste leer ist, eine `indexOf` Methode, die `index` eines gegebenes Elements zurückgibt und ein `elementAt` die ein `element` an einen gegebenen `index` zurückgibt.

# --hints--

Deine `LinkedList` Klasse sollte eine `isEmpty` Methode haben.

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.isEmpty === 'function';
  })()
);
```

Deine `isEmpty`-Methode sollte `false` zurückgeben, wenn es mindestens ein Element in der verknüpften Liste gibt.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    return test.isEmpty() === false;
  })()
);
```

Deine `isEmpty`-Methode sollte `true` zurückgeben, wenn es keine Elemente in der verknüpften Liste gibt.

```js
assert(
  (function () {
    var test = new LinkedList();
    return test.isEmpty() === true;
  })()
);
```

Deine `LinkedList`-Klasse sollte eine `indexOf`-Methode haben.

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.indexOf === 'function';
  })()
);
```

Deine `indexOf` Methode sollte den Index eines bestimmten Elements in der verknüpften Liste zurückgeben.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    return test.indexOf('cat') === 0;
  })()
);
```

Deine `indexOf` Methode sollte `-1` zurückgeben, wenn das angegebene Element nicht in der verknüpften Liste gefunden wird

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    return test.indexOf('pony') === -1;
  })()
);
```

Deine `LinkedList`-Klasse sollte eine `elementAt`-Methode haben.

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.elementAt === 'function';
  })()
);
```

Deine `elementAt`-Methode sollte das Element zurückgeben, das bei einem bestimmten Index in der verknüpften Liste gefunden wurde.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    return test.elementAt(1) === 'dog';
  })()
);
```

Deine `elementAt`-Methode sollte `undefined` zurückgeben, wenn das angegebene Element bei einem bestimmten Index in der verknüpften Liste nicht gefunden wird.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    return test.elementAt(5) === undefined;
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

  this.size = function() {
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
        currentNode = currentNode.next;
      }

      currentNode.next = node;
    }

    length++;
  };

  this.remove = function(element){
    var currentNode = head;
    var previousNode;
    if(currentNode.element === element){
      head = currentNode.next;
    } else {
      while(currentNode.element !== element) {
        previousNode = currentNode;
        currentNode = currentNode.next;
      }

      previousNode.next = currentNode.next;
    }

    length --;
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

  var Node = function(element){
    this.element = element;
    this.next = null;
  };

  this.size = function() {
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

  this.remove = function(element){
    var currentNode = head;
    var previousNode;
    if(currentNode.element === element){
        head = currentNode.next;
    } else {
        while(currentNode.element !== element) {
            previousNode = currentNode;
            currentNode = currentNode.next;
        }

        previousNode.next = currentNode.next;
    }

    length --;
  };

  this.indexOf = function(element) {
    if (head === null) return -1

    let current = head;
    let index = 0;

    while (current.element !== element && current.next !== null) {
      current = current.next;
      index++
    }

    if (current.element !== element && current.next === null) {
      return -1
    }

    return index;
  }

  this.elementAt = function(index) {
    if (head === null) return undefined;

    let current = head;
    let currentIndex = 0;

    while (currentIndex !== index && current.next !== null) {
      current = current.next;
      currentIndex++
    }

    if (currentIndex !== index && current.next === null) {
      return undefined;
    }

    return current.element;
  }

  this.isEmpty = function() {
    return length === 0;
  }
}
```
