---
id: 587d8250367417b2b2512c60
title: 創建隊列類
challengeType: 1
forumTopicId: 301631
dashedName: create-a-queue-class
---

# --description--

Like stacks, queues are a collection of elements. But unlike stacks, queues follow the FIFO (First-In First-Out) principle. Elements added to a queue are pushed to the tail, or the end, of the queue, and only the element at the front of the queue is allowed to be removed.

我們可以用一個數組來表示一個隊列，但就像堆棧一樣，我們想限制我們對隊列的控制量。

隊列類的兩個主要方法是 enqueue（入列）和 dequeue（出列）方法。 enqueue 方法將一個元素推到隊列的尾部，dequeue 方法移除並返回隊列前面的元素。 其他有用的方法是 front、size 和 isEmpty 方法。

# --instructions--

編寫一個 `enqueue` 方法將一個元素推到隊列的尾部，一個 `dequeue` 方法刪除並返回前端的元素，一個 `front` 方法來查看前端的元素，一個 `size` 方法來顯示長度，以及一個 `isEmpty` 方法檢查隊列是否爲空。

# --hints--

你的 `Queue` 類應該有一個 `enqueue` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.enqueue === 'function';
  })()
);
```

你的 `Queue` 類應該有一個 `dequeue` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.dequeue === 'function';
  })()
);
```

你的 `Queue` 類應該有一個 `front` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.front === 'function';
  })()
);
```

你的 `Queue` 類應該有一個 `size` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.size === 'function';
  })()
);
```

您的 `Queue` 類應該有一個 `isEmpty` 方法。

```js
assert(
  (function () {
    var test = new Queue();
    return typeof test.isEmpty === 'function';
  })()
);
```

`dequeue` 方法應該移除並返回隊列的前端元素

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

`front` 方法應該返回隊列前面元素的值

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

`size` 方法應該返回隊列的長度

```js
assert(
  (function () {
    var test = new Queue();
    test.enqueue('Smith');
    return test.size() === 1;
  })()
);
```

如果隊列中有元素，`isEmpty` 方法應該返回 `false`

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
