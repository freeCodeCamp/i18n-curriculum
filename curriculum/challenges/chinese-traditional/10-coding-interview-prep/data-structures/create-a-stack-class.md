---
id: 587d8250367417b2b2512c5f
title: 創建一個堆棧類
challengeType: 1
forumTopicId: 301633
dashedName: create-a-stack-class
---

# --description--

In the last section, we talked about what a stack is and how we can use an array to represent a stack. In this section, we will be creating our own stack class. Although you can use arrays to create stacks, sometimes it is best to limit the amount of control we have with our stacks. Apart from the `push` and `pop` method, stacks have other useful methods. Let's add a `peek`, `isEmpty`, and `clear` method to our stack class.

# --instructions--

說明編寫一個 `push` 方法，將元素推送到堆棧頂部；一個 `pop` 方法刪除堆棧頂部的元素；一個 `peek` 方法來查看堆棧中第一個元素；一個 `isEmpty` 方法，用於檢查堆棧是否爲空；一個 `clear` 方法，清除堆棧中所有的元素。 通常堆棧沒有這個，但我們添加一個 `print` 輔助方法，用於在控制檯輸出集合。

# --hints--

你的 `Stack` 類應該有一個 `push` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.push === 'function';
  })()
);
```

你的 `Stack` 類應該有一個 `pop` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.pop === 'function';
  })()
);
```

你的 `Stack` 類應該有一個 `peek` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.peek === 'function';
  })()
);
```

你的 `Stack` 類應該有一個 `isEmpty` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.isEmpty === 'function';
  })()
);
```

你的 `Stack` 類應該有一個 `clear` 方法。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.clear === 'function';
  })()
);
```

`peek` 方法應該返回棧頂元素

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

`pop` 方法應該移除並返回棧頂元素

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

如果堆棧不包含任何元素，`isEmpty` 方法應該返回 true

```js
assert(
  (function () {
    var test = new Stack();
    return test.isEmpty();
  })()
);
```

`clear` 方法應該從堆棧中刪除所有元素

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
