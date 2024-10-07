---
id: 587d8250367417b2b2512c5f
title: 创建一个堆栈类
challengeType: 1
forumTopicId: 301633
dashedName: create-a-stack-class
---

# --description--

In the last section, we talked about what a stack is and how we can use an array to represent a stack. In this section, we will be creating our own stack class. Although you can use arrays to create stacks, sometimes it is best to limit the amount of control we have with our stacks. Apart from the `push` and `pop` method, stacks have other useful methods. Let's add a `peek`, `isEmpty`, and `clear` method to our stack class.

# --instructions--

说明编写一个 `push` 方法，将元素推送到堆栈顶部；一个 `pop` 方法删除堆栈顶部的元素；一个 `peek` 方法来查看堆栈中第一个元素；一个 `isEmpty` 方法，用于检查堆栈是否为空；一个 `clear` 方法，清除堆栈中所有的元素。 通常堆栈没有这个，但我们添加一个 `print` 辅助方法，用于在控制台输出集合。

# --hints--

你的 `Stack` 类应该有一个 `push` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.push === 'function';
  })()
);
```

你的 `Stack` 类应该有一个 `pop` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.pop === 'function';
  })()
);
```

你的 `Stack` 类应该有一个 `peek` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.peek === 'function';
  })()
);
```

你的 `Stack` 类应该有一个 `isEmpty` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.isEmpty === 'function';
  })()
);
```

你的 `Stack` 类应该有一个 `clear` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.clear === 'function';
  })()
);
```

`peek` 方法应该返回栈顶元素

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

`pop` 方法应该移除并返回栈顶元素

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

如果堆栈不包含任何元素，`isEmpty` 方法应该返回 true

```js
assert(
  (function () {
    var test = new Stack();
    return test.isEmpty();
  })()
);
```

`clear` 方法应该从堆栈中删除所有元素

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
