---
id: 587d8250367417b2b2512c60
title: 创建队列类
challengeType: 1
forumTopicId: 301631
dashedName: create-a-queue-class
---

# --description--

Like stacks, queues are a collection of elements. But unlike stacks, queues follow the FIFO (First-In First-Out) principle. Elements added to a queue are pushed to the tail, or the end, of the queue, and only the element at the front of the queue is allowed to be removed.

我们可以用一个数组来表示一个队列，但就像堆栈一样，我们想限制我们对队列的控制量。

队列类的两个主要方法是 enqueue（入列）和 dequeue（出列）方法。 enqueue 方法将一个元素推到队列的尾部，dequeue 方法移除并返回队列前面的元素。 其他有用的方法是 front、size 和 isEmpty 方法。

# --instructions--

编写一个 `enqueue` 方法将一个元素推到队列的尾部，一个 `dequeue` 方法删除并返回前端的元素，一个 `front` 方法来查看前端的元素，一个 `size` 方法来显示长度，以及一个 `isEmpty` 方法检查队列是否为空。

# --hints--

你的 `Queue` 类应该有一个 `enqueue` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.enqueue === 'function';
  })()
);
```

你的 `Queue` 类应该有一个 `dequeue` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.dequeue === 'function';
  })()
);
```

你的 `Queue` 类应该有一个 `front` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.front === 'function';
  })()
);
```

你的 `Queue` 类应该有一个 `size` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.size === 'function';
  })()
);
```

您的 `Queue` 类应该有一个 `isEmpty` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.isEmpty === 'function';
  })()
);
```

`dequeue` 方法应该移除并返回队列的前端元素

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

`front` 方法应该返回队列前面元素的值

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

`size` 方法应该返回队列的长度

```js
assert(
  (function () {
    var test = new Queue();
    test.enqueue('Smith');
    return test.size() === 1;
  })()
);
```

如果队列中有元素，`isEmpty` 方法应该返回 `false`

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
