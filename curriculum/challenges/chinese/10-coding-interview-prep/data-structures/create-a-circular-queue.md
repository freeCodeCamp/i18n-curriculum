---
id: 587d8255367417b2b2512c75
title: 创建循环队列
challengeType: 1
forumTopicId: 301625
dashedName: create-a-circular-queue
---

# --description--

In this challenge you will be creating a Circular Queue. A circular queue is a queue that writes to the end of a collection then begins overwriting itself at the beginning of the collection. This type of data structure is useful in certain situations. For example, a circular queue can be used for streaming media. Once the queue is full, new media data will overwrite old data.

可以用一个长度为 `5` 的数组来演示：

```js
[null, null, null, null, null]
 ^Read @ 0
 ^Write @ 0
```

这里的读写都在第 `0` 位。 现在队列获得 3 个新记录 `a`、`b` 和 `c` 。 我们的队列现在看起来像：

```js
[a, b, c, null, null]
 ^Read @ 0
          ^Write @ 3
```

随着读头读取数据，它可以选择删除数值或者保留它们。

```js
[null, null, null, null, null]
                   ^Read @ 3
                   ^Write @ 3
```

现在我们写入的值 `d`、`e` 和 `f` 到队列。 一旦写入到数组的末尾，它将回到起始：

```js
[f, null, null, d, e]
                ^Read @ 3
    ^Write @ 1
```

这种方法需要恒定的内存数量，但允许处理大得多的文件。

# --instructions--

在此挑战中，我们将实现循环队列。 循环队列应提供 `enqueue` 和 `dequeue` 方法，允许你读取和写入队列。 类本身也应该接受一个整数，您可以使用该整数在创建队列时指定队列的大小。 我们已经在代码编辑器中为您编写了此类的起始版本。

将项目排入队列时，写入指针应向前推进，并在到达队列末尾时循环回到开头。 如果成功，则 `enqueue` 方法应返回你入列的项木，否则返回 `null`。

同样，当你使项目出列时，读指针应向前推进。 当你将一个项目移出队列时，应该返回该项目。 如果你不能将一个项目移出队列时，你应该返回 `null`。

不应允许写指针超过读指针的位置（我们的类不会让你覆盖你还没有读过的数据），并且读指针不能超过你写的数据的位置。

# --hints--

`enqueue` 方法将项目添加到循环队列中。

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(591);
    var print = test.print();
    return print[0] === 17 && print[1] === 32 && print[2] === 591;
  })()
);
```

你不应该在超过读取指针的位置加入项目。

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(591);
    test.enqueue(13);
    test.enqueue(25);
    test.enqueue(59);
    var print = test.print();
    return print[0] === 17 && print[1] === 32 && print[2] === 591;
  })()
);
```

`dequeue` 方法使队列中的项目出列。

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(591);
    return (
      test.dequeue() === 17 && test.dequeue() === 32 && test.dequeue() === 591
    );
  })()
);
```

项目出队后，其在队列中的位置应重置为 `null`。

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(672);
    test.dequeue();
    test.dequeue();
    var print = test.print();
    return print[0] === null && print[1] === null && print[2] === 672;
  })()
);
```

试图超过写指针的位置去出列项目应该返回 `null`，并且不会推进写指针。

```js
assert(
  (function () {
    var test = new CircularQueue(3);
    test.enqueue(17);
    test.enqueue(32);
    test.enqueue(591);
    return (
      test.dequeue() === 17 &&
      test.dequeue() === 32 &&
      test.dequeue() === 591 &&
      test.dequeue() === null &&
      test.dequeue() === null &&
      test.dequeue() === null &&
      test.dequeue() === null &&
      test.enqueue(100) === 100 &&
      test.dequeue() === 100
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
class CircularQueue {
  constructor(size) {

    this.queue = [];
    this.read = 0;
    this.write = 0;
    this.max = size - 1;

    while (size > 0) {
      this.queue.push(null);
      size--;
    }
  }

  print() {
    return this.queue;
  }

  enqueue(item) {
    // Only change code below this line

    // Only change code above this line
  }

  dequeue() {
    // Only change code below this line

    // Only change code above this line
  }
}
```

# --solutions--

```js
class CircularQueue {
  constructor(size) {
    this.queue = [];
    this.read = 0;
    this.write = 0;
    this.max = size - 1;

    while (size > 0) {
      this.queue.push(null);
      size--;
    }
  }

  print() {
    return this.queue;
  }

  enqueue(item) {
    // Only change code below this line
    console.log(this.write, this.max);
    if (this.queue[this.write] === null) {
      this.queue[this.write++] = item;

      if (this.write > this.max) {
        this.write = 0;
      }
      return item;
    }
    return null;
    // Only change code above this line
  }

  dequeue() {
    // Only change code below this line
    if (this.queue[this.read] !== null) {
      let item = this.queue[this.read];
      this.queue[this.read++] = null;
      if (this.read > this.max) {
        this.read = 0;
      }
      return item;
    }
    return null;
    // Only change code above this line
  }
}
```
