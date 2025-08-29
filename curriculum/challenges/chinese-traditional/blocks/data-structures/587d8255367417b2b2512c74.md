---
id: 587d8255367417b2b2512c74
title: 創建優先級隊列類
challengeType: 1
forumTopicId: 301630
dashedName: create-a-priority-queue-class
---

# --description--

In this challenge you will be creating a Priority Queue. A Priority Queue is a special type of Queue in which items may have additional information which specifies their priority. This could be simply represented with an integer. Item priority will override placement order in determining the sequence items are dequeued. If an item with a higher priority is enqueued after items with lower priority, the higher priority item will be dequeued before all the others.

例如，假設我們有一個包含三個項目的優先級隊列：

```js
[['kitten', 2], ['dog', 2], ['rabbit', 2]]
```

這裏的第二個值（整數）表示項目優先級。 如果我們以 `1` 的優先級將 `['human', 1]` 加入隊列（假設優先考慮較低的優先級），那麼它將是第一個出列的項目。 該集合將如下所示：

```js
[['human', 1], ['kitten', 2], ['dog', 2], ['rabbit', 2]]
```

我們已經在代碼編輯器中編寫了 `PriorityQueue`。 您需要添加一個 `enqueue` 方法來添加具有優先級的項目，一個 `dequeue` 方法用於刪除項目的，一個 `size` 方法用於返回隊列中項目數量的，一個 `front` 方法用於返回位於隊列前端的元素，以及最後一個 `isEmpty` 方法，如果隊列爲空則返回 `true`，否則返回 `false`。

`enqueue` 應該接受上面顯示的格式 (`['human', 1]`) 的項目，其中 `1` 代表優先級。 `dequeue` 和 `front` 應該只返回項目的名稱，而不是它的優先級。

# --hints--

你的 `PriorityQueue` 類應該有一個 `enqueue` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.enqueue === 'function';
  })()
);
```

你的 `PriorityQueue` 類應該有一個 `dequeue` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.dequeue === 'function';
  })()
);
```

你的 `PriorityQueue` 類應該有一個 `size` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.size === 'function';
  })()
);
```

你的 `PriorityQueue` 類應該有一個 `front` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.front === 'function';
  })()
);
```

你的 `PriorityQueue` 類應該有一個 `isEmpty` 方法。

```js
assert(
  (function () {
    var test = new PriorityQueue();
    return typeof test.isEmpty === 'function';
  })()
);
```

當項目入列和出列的時候，你的 `PriorityQueue` 類應該使用 `size` 方法正確跟蹤當前項目的數量。

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

`front` 方法應該在項目入列和出列時正確地返回隊列前端的項目。

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

當隊列爲空時，`isEmpty` 方法應該返回 `true`。

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

優先級排隊應該返回優先級較高的項目，然後返回優先級較低的項目，若優先級相同，則按先進先出的順序返回。

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
