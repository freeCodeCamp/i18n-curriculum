---
id: 587d8255367417b2b2512c75
title: 創建循環隊列
challengeType: 1
forumTopicId: 301625
dashedName: create-a-circular-queue
---

# --description--

In this challenge you will be creating a Circular Queue. A circular queue is a queue that writes to the end of a collection then begins overwriting itself at the beginning of the collection. This type of data structure is useful in certain situations. For example, a circular queue can be used for streaming media. Once the queue is full, new media data will overwrite old data.

可以用一個長度爲 `5` 的數組來演示：

```js
[null, null, null, null, null]
 ^Read @ 0
 ^Write @ 0
```

這裏的讀寫都在第 `0` 位。 現在隊列獲得 3 個新記錄 `a`、`b` 和 `c` 。 我們的隊列現在看起來像：

```js
[a, b, c, null, null]
 ^Read @ 0
          ^Write @ 3
```

隨着讀頭讀取數據，它可以選擇刪除數值或者保留它們。

```js
[null, null, null, null, null]
                   ^Read @ 3
                   ^Write @ 3
```

現在我們寫入的值 `d`、`e` 和 `f` 到隊列。 一旦寫入到數組的末尾，它將回到起始：

```js
[f, null, null, d, e]
                ^Read @ 3
    ^Write @ 1
```

這種方法需要恆定的內存數量，但允許處理大得多的文件。

# --instructions--

在此挑戰中，我們將實現循環隊列。 循環隊列應提供 `enqueue` 和 `dequeue` 方法，允許你讀取和寫入隊列。 類本身也應該接受一個整數，您可以使用該整數在創建隊列時指定隊列的大小。 我們已經在代碼編輯器中爲您編寫了此類的起始版本。

將項目排入隊列時，寫入指針應向前推進，並在到達隊列末尾時循環回到開頭。 如果成功，則 `enqueue` 方法應返回你入列的項木，否則返回 `null`。

同樣，當你使項目出列時，讀指針應向前推進。 當你將一個項目移出隊列時，應該返回該項目。 如果你不能將一個項目移出隊列時，你應該返回 `null`。

不應允許寫指針超過讀指針的位置（我們的類不會讓你覆蓋你還沒有讀過的數據），並且讀指針不能超過你寫的數據的位置。

# --hints--

`enqueue` 方法將項目添加到循環隊列中。

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

你不應該在超過讀取指針的位置加入項目。

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

`dequeue` 方法使隊列中的項目出列。

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

項目出隊後，其在隊列中的位置應重置爲 `null`。

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

試圖超過寫指針的位置去出列項目應該返回 `null`，並且不會推進寫指針。

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
