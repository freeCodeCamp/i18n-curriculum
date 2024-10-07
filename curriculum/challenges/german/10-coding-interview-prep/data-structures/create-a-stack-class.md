---
id: 587d8250367417b2b2512c5f
title: Erstelle eine Set-Klasse
challengeType: 1
forumTopicId: 301633
dashedName: create-a-stack-class
---

# --description--

In the last section, we talked about what a stack is and how we can use an array to represent a stack. In this section, we will be creating our own stack class. Although you can use arrays to create stacks, sometimes it is best to limit the amount of control we have with our stacks. Apart from the `push` and `pop` method, stacks have other useful methods. Let's add a `peek`, `isEmpty`, and `clear` method to our stack class.

# --instructions--

Schreibe eine `push`-Methode, die ein Element an die Spitze des Stapels schiebt, eine `pop`-Methode, die das Element an der Spitze des Stapels entfernt und zurückgibt, eine `peek`-Methode, die das oberste Element im Stapel betrachtet, eine `isEmpty`-Methode, die prüft, ob der Stapel leer ist, und eine `clear`-Methode, die alle Elemente vom Stapel entfernt. Normalerweise haben Stacks dies nicht, aber wir haben eine `print` Hilfsmethode hinzugefügt, die die Sammlung auf der Konsole protokolliert.

# --hints--

Deine `Stack` Klasse sollte eine `push` Methode haben.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.push === 'function';
  })()
);
```

Deine `Stack`-Klasse sollte eine `pop`-Methode haben.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.pop === 'function';
  })()
);
```

Deine `Stack` Klasse sollte eine `peek` Methode haben.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.peek === 'function';
  })()
);
```

Deine `Stack` Klasse sollte eine `isEmpty` Methode haben.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.isEmpty === 'function';
  })()
);
```

Deine `Stack` Klasse sollte eine `clear` Methode haben.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.clear === 'function';
  })()
);
```

Die Methode `peek` sollte das oberste Element des Stacks zurückgeben

```js
assert(
  (function () {
    var test = new Stack();
    test.push('CS61');
    test.push('CS50');
    return test.peek() === 'CS50' && test.peek() === 'CS50';
  })()
);
```

Die Methode `pop` sollte das oberste Element des Stacks entfernen und zurückgeben

```js
assert(
  (function () {
    var test = new Stack();
    test.push('CS61');
    test.push('CS50');
    return test.pop() === 'CS50' && test.pop() === 'CS61';
  })()
);
```

Die Methode `isEmpty` sollte true zurückgeben, wenn ein Stapel keine Elemente enthält.

```js
assert(
  (function () {
    var test = new Stack();
    return test.isEmpty();
  })()
);
```

Die Methode `clear` sollte alle Elemente vom Stapel entfernen

```js
assert(
  (function () {
    var test = new Stack();
    test.push('CS61');
    test.push('CS50');
    test.clear();
    return test.isEmpty();
  })()
);
```

# --seed--

## --seed-contents--

```js
function Stack() {
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
class Stack {
  constructor() {
    this.collection = [];
  }
  print() {
    console.log(this.collection);
  }
  push(val) {
    this.collection.push(val);
  }
  pop() {
    return this.collection.pop();
  }
  peek() {
    return this.collection[this.collection.length - 1];
  }
  isEmpty() {
    return this.collection.length === 0;
  }
  clear() {
    return (this.collection.length = 0);
  }
}
```
