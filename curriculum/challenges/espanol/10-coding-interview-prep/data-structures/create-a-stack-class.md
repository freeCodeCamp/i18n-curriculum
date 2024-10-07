---
id: 587d8250367417b2b2512c5f
title: Crea una Clase Pila
challengeType: 1
forumTopicId: 301633
dashedName: create-a-stack-class
---

# --description--

In the last section, we talked about what a stack is and how we can use an array to represent a stack. In this section, we will be creating our own stack class. Although you can use arrays to create stacks, sometimes it is best to limit the amount of control we have with our stacks. Apart from the `push` and `pop` method, stacks have other useful methods. Let's add a `peek`, `isEmpty`, and `clear` method to our stack class.

# --instructions--

Escribe un método `push` que ponga un elemento en el tope de la pila, un método `pop` que elimine y devuelva el elemento del tope de la pila, un método `peek` que muestre el elemento del tope de la pila, un método `isEmpty` que compruebe si la pila esta vacía, y un método `clear` que elimine todos los elementos de la pila. Normalmente las pilas no tienen esto, pero hemos añadido un método ayudante `print` que registre en consola la colección.

# --hints--

La clase `Stack` debe tener un método `push`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.push === 'function';
  })()
);
```

La clase `Stack` debe tener un método `pop`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.pop === 'function';
  })()
);
```

La clase `Stack` debe tener un método `peek`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.peek === 'function';
  })()
);
```

La clase `Stack` debe tener un método `isEmpty`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.isEmpty === 'function';
  })()
);
```

La clase `Stack` debe tener un método `clear`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.clear === 'function';
  })()
);
```

El método `peek` debe devolver el elemento del tope de la pila

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

El método `pop` debe eliminar y devolver el elemento del tope de la pila

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

El método `isEmpty` debe devolver true si la pila no contiene elementos

```js
assert(
  (function () {
    var test = new Stack();
    return test.isEmpty();
  })()
);
```

El método `clear` debe eliminar todos los elementos de la pila

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
