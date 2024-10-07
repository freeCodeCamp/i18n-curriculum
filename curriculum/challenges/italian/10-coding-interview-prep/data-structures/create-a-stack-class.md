---
id: 587d8250367417b2b2512c5f
title: Creare una classe Stack
challengeType: 1
forumTopicId: 301633
dashedName: create-a-stack-class
---

# --description--

In the last section, we talked about what a stack is and how we can use an array to represent a stack. In this section, we will be creating our own stack class. Although you can use arrays to create stacks, sometimes it is best to limit the amount of control we have with our stacks. Apart from the `push` and `pop` method, stacks have other useful methods. Let's add a `peek`, `isEmpty`, and `clear` method to our stack class.

# --instructions--

Scrivi un metodo `push` che inserisce un elemento in cima allo stack, un metodo `pop` che rimuove e restituisce l'elemento in cima allo stack, un metodo `peek` che guarda l'elemento in cima allo stack, un metodo `isEmpty` che controlla se lo stack è vuoto, e un metodo `clear` che rimuove tutti gli elementi dallo stack. Normalmente gli stack non hanno questo, ma abbiamo aggiunto un metodo di aiuto `print` che visualizza la collezione nella console.

# --hints--

La tua classe `Stack` dovrebbe avere un metodo `push`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.push === 'function';
  })()
);
```

La tua classe `Stack` dovrebbe avere un metodo `pop`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.pop === 'function';
  })()
);
```

La tua classe `Stack` dovrebbe avere un metodo `peek`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.peek === 'function';
  })()
);
```

La tua classe `Stack` dovrebbe avere un metodo `isEmpty`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.isEmpty === 'function';
  })()
);
```

La tua classe `Stack` dovrebbe avere un metodo `clear`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.clear === 'function';
  })()
);
```

Il metodo `peek` dovrebbe restituire l'elemento in cima allo stack

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

Il metodo `pop` dovrebbe rimuovere e restituire l'elemento in cima allo stack

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

Il metodo `isEmpty` dovrebbe restituire true se uno stack non contiene alcun elemento

```js
assert(
  (function () {
    var test = new Stack();
    return test.isEmpty();
  })()
);
```

Il metodo `clear` dovrebbe rimuovere tutti gli elementi dallo stack

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
