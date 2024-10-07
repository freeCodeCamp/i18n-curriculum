---
id: 587d8250367417b2b2512c5f
title: Створіть клас Stack
challengeType: 1
forumTopicId: 301633
dashedName: create-a-stack-class
---

# --description--

In the last section, we talked about what a stack is and how we can use an array to represent a stack. In this section, we will be creating our own stack class. Although you can use arrays to create stacks, sometimes it is best to limit the amount of control we have with our stacks. Apart from the `push` and `pop` method, stacks have other useful methods. Let's add a `peek`, `isEmpty`, and `clear` method to our stack class.

# --instructions--

Напишіть метод `push`, який додає елемент зверху стека; метод `pop`, який видаляє та повертає елемент, що знаходиться зверху стека; метод `peek`, який переглядає верхній елемент стека; метод `isEmpty`, який перевіряє, чи стек порожній; метод `clear`, який видаляє всі елементи зі стека. Зазвичай стеки не мають цього методу, але ми додали допоміжний метод `print`, який друкує колекцію на консолі.

# --hints--

Клас `Stack` повинен мати метод `push`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.push === 'function';
  })()
);
```

Клас `Stack` повинен мати метод `pop`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.pop === 'function';
  })()
);
```

Клас `Stack` повинен мати метод `peek`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.peek === 'function';
  })()
);
```

Клас `Stack` повинен мати метод `isEmpty`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.isEmpty === 'function';
  })()
);
```

Клас `Stack` повинен мати метод `clear`.

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.clear === 'function';
  })()
);
```

Метод `peek` має повернути верхній елемент стека.

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

Метод `pop` має видалити та повернути верхній елемент стека.

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

Метод `isEmpty` має повернути `true`, якщо стек порожній.

```js
assert(
  (function () {
    var test = new Stack();
    return test.isEmpty();
  })()
);
```

Метод `clear` має видалити всі елементи зі стека.

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
