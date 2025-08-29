---
id: 587d8255367417b2b2512c74
title: 创建优先级队列类
challengeType: 1
forumTopicId: 301630
dashedName: create-a-priority-queue-class
---

# --description--

In this challenge you will be creating a Priority Queue. A Priority Queue is a special type of Queue in which items may have additional information which specifies their priority. This could be simply represented with an integer. Item priority will override placement order in determining the sequence items are dequeued. If an item with a higher priority is enqueued after items with lower priority, the higher priority item will be dequeued before all the others.

例如，假设我们有一个包含三个项目的优先级队列：

```js
[['kitten', 2], ['dog', 2], ['rabbit', 2]]
```

这里的第二个值（整数）表示项目优先级。 如果我们以 `1` 的优先级将 `['human', 1]` 加入队列（假设优先考虑较低的优先级），那么它将是第一个出列的项目。 该集合将如下所示：

```js
[['human', 1], ['kitten', 2], ['dog', 2], ['rabbit', 2]]
```

我们已经在代码编辑器中编写了 `PriorityQueue`。 您需要添加一个 `enqueue` 方法来添加具有优先级的项目，一个 `dequeue` 方法用于删除项目的，一个 `size` 方法用于返回队列中项目数量的，一个 `front` 方法用于返回位于队列前端的元素，以及最后一个 `isEmpty` 方法，如果队列为空则返回 `true`，否则返回 `false`。

`enqueue` 应该接受上面显示的格式 (`['human', 1]`) 的项目，其中 `1` 代表优先级。 `dequeue` 和 `front` 应该只返回项目的名称，而不是它的优先级。

# --hints--

你的 `PriorityQueue` 类应该有一个 `enqueue` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.enqueue === 'function';
  })()
);
```

你的 `PriorityQueue` 类应该有一个 `dequeue` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.dequeue === 'function';
  })()
);
```

你的 `PriorityQueue` 类应该有一个 `size` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.size === 'function';
  })()
);
```

你的 `PriorityQueue` 类应该有一个 `front` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.front === 'function';
  })()
);
```

你的 `PriorityQueue` 类应该有一个 `isEmpty` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.isEmpty === 'function';
  })()
);
```

当项目入列和出列的时候，你的 `PriorityQueue` 类应该使用 `size` 方法正确跟踪当前项目的数量。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    test.enqueue(['David Brown', 2]);
    test.enqueue(['Jon Snow', 1]);
    var size1 = test.size();
    test.dequeue();
    var size2 = test.size();
    test.enqueue(['A', 3]);
    test.enqueue(['B', 3]);
    test.enqueue(['C', 3]);
    return size1 === 2 && size2 === 1 && test.size() === 4;
  })()
);
```

`front` 方法应该在项目入列和出列时正确地返回队列前端的项目。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    test.enqueue(['David Brown', 2]);
    var front1 = test.front();
    test.enqueue(['Jon Snow', 1]);
    var front2 = test.front();
    test.dequeue();
    test.enqueue(['A', 3]);
    var front3 = test.front();
    test.enqueue(['B', 3]);
    test.enqueue(['C', 3]);
    test.dequeue();
    var front4 = test.front();
    return (
      front1 === 'David Brown' &&
      front2 === 'Jon Snow' &&
      front3 === 'David Brown' &&
      front4 === 'A'
    );
  })()
);
```

当队列为空时，`isEmpty` 方法应该返回 `true`。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    test.enqueue(['A', 1]);
    test.enqueue(['B', 1]);
    test.dequeue();
    var first = test.isEmpty();
    test.dequeue();
    return !first && test.isEmpty();
  })()
);
```

优先级排队应该返回优先级较高的项目，然后返回优先级较低的项目，若优先级相同，则按先进先出的顺序返回。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    test.enqueue(['A', 5]);
    test.enqueue(['B', 5]);
    test.enqueue(['C', 5]);
    test.enqueue(['D', 3]);
    test.enqueue(['E', 1]);
    test.enqueue(['F', 7]);
    var result = [];
    result.push(test.dequeue());
    result.push(test.dequeue());
    result.push(test.dequeue());
    result.push(test.dequeue());
    result.push(test.dequeue());
    result.push(test.dequeue());
    return result.join('') === 'EDABCF';
  })()
);
```

# --seed--

## --seed-contents--

```js
function PriorityQueue () {
  this.collection = [];
  this.printCollection = function() {
    console.log(this.collection);
  };
  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
function PriorityQueue() {
  this.collection = [];
  this.printCollection = function () {
    console.log(this.collection);
  };
  // Only change code below this line
  this.enqueue = function (newitem) {
    if (this.isEmpty()) {
      return this.collection.push(newitem);
    }

    this.collection = this.collection.reverse();
    var found_index = this.collection.findIndex(function (item) {
      return newitem[1] >= item[1];
    });
    if (found_index === -1) {
      this.collection.push(newitem);
    } else {
      this.collection.splice(found_index, 0, newitem);
    }
    this.collection = this.collection.reverse();
  };
  this.dequeue = function () {
    if (!this.isEmpty()) {
      return this.collection.shift()[0];
    } else {
      return "The queue is empty.";
    }
  };
  this.size = function () {
    return this.collection.length;
  };
  this.front = function () {
    return this.collection[0][0];
  };
  this.isEmpty = function () {
    return this.size() > 0 ? false : true;
  };
  // Only change code above this line
}
```
