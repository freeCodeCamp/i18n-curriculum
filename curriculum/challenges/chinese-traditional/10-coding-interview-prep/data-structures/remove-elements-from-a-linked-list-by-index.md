---
id: 587d8251367417b2b2512c65
title: 按索引從鏈表中刪除元素
challengeType: 1
forumTopicId: 301711
dashedName: remove-elements-from-a-linked-list-by-index
---

# --description--

Before we move on to another data structure, let's get a couple of last bits of practice with linked lists.

讓我們編寫一個 `removeAt` 方法來刪​​除給定 `index` 處的 `element`。 該方法應該被稱爲 `removeAt(index)`。 要刪除某個 `index` 處的 `element`，我們需要在沿着鏈表移動時保持每個節點的運行計數。

用於遍歷鏈表的元素的常用技術涉及<dfn>“轉輪”</dfn>或“哨兵”，它們“指向”代碼所比較的節點。 在我們的例子中，從列表的 `head` 開始，我們從 `currentIndex` 變量爲 `0` 開始。 對於我們遍歷的每個節點， `currentIndex` 應該增加 1。

就像我們在上一課中介紹的 remove(element) 方法一樣，當我們在 removeAt(index)方法中刪除節點時，我們需要注意不要孤立列表的其餘部分。 我們通過確保引用已移除節點的節點具有對下一個節點的引用來保持節點的連續性。

# --instructions--

編寫一個 removeAt(index) 方法，該方法刪除並返回給定 index處的節點。 如果給定的 index 是負數，或者大於或等於鏈表的 length，該方法應該返回 null。

注意：請記住保留對 currentIndex 的計數。

# --hints--

你的 `LinkedList` 類應該有一個 `removeAt` 方法。

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.removeAt === 'function';
  })()
);
```

你的 `removeAt` 方法應該將鏈表的 `length` 減少一個。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    test.removeAt(1);
    return test.size() === 2;
  })()
);
```

你的 `removeAt` 方法應該從鏈表中刪除指定索引處的元素。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    test.add('bird');
    test.removeAt(1);
    return (
      JSON.stringify(test.head()) ===
      '{"element":"cat","next":{"element":"kitten","next":{"element":"bird","next":null}}}'
    );
  })()
);
```

當鏈表中只有一個元素時，您的 `removeAt` 方法應該刪除並返回指定索引處的元素，並減少鏈表的長度。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    var removedItem = test.removeAt(0);
    return test.head() === null && test.size() === 0 && removedItem === 'cat';
  })()
);
```

你的 `removeAt` 方法應該返回被移除節點的元素。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    return test.removeAt(1) === 'dog';
  })()
);
```

你的 `removeAt` 方法應該返回 `null` 並且如果給定的索引小於 `0`，鏈表不應該改變。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    var removedItem = test.removeAt(-1);
    return (
      removedItem === null &&
      JSON.stringify(test.head()) ===
        '{"element":"cat","next":{"element":"dog","next":{"element":"kitten","next":null}}}'
    );
  })()
);
```

你的 `removeAt` 方法應該返回 `null`，如果給定的索引大於或等於列表的 `length`，鏈接列表不應該改變。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    var removedItem = test.removeAt(3);
    return (
      removedItem === null &&
      JSON.stringify(test.head()) ===
        '{"element":"cat","next":{"element":"dog","next":{"element":"kitten","next":null}}}'
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
function LinkedList() {
  var length = 0;
  var head = null;

  var Node = function(element){
    this.element = element;
    this.next = null;
  };

  this.size = function(){
    return length;
  };

  this.head = function(){
    return head;
  };

  this.add = function(element){
    var node = new Node(element);
    if(head === null){
      head = node;
    } else {
      var currentNode = head;

      while(currentNode.next){
        currentNode  = currentNode.next;
      }

      currentNode.next = node;
    }

    length++;
  };

  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
function LinkedList() {
  var length = 0;
  var head = null;

  var Node = function (element) {
    this.element = element;
    this.next = null;
  };

  this.size = function () {
    return length;
  };

  this.head = function () {
    return head;
  };

  this.add = function (element) {
    var node = new Node(element);
    if (head === null) {
      head = node;
    } else {
      var currentNode = head;

      while (currentNode.next) {
        currentNode = currentNode.next;
      }

      currentNode.next = node;
    }

    length++;
  };

  this.removeAt = function (index) {
    var currentNode = head;
    var previous = head;
    var count = 0;
    if (index >= length || index < 0) {
      return null;
    }
    if (index === 0) {
      var removed = head.element;
      head = currentNode.next;
    } else {
      while (count < index) {
        previous = currentNode;
        currentNode = currentNode.next;
        count++;
      }
      var removed = previous.next.element;
      previous.next = currentNode.next;
    }
    length--;
    return removed;
  };
}
```
