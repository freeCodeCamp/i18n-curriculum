---
id: 587d8251367417b2b2512c65
title: 按索引从链表中删除元素
challengeType: 1
forumTopicId: 301711
dashedName: remove-elements-from-a-linked-list-by-index
---

# --description--

Before we move on to another data structure, let's get a couple of last bits of practice with linked lists.

让我们编写一个 `removeAt` 方法来删​​除给定 `index` 处的 `element`。 该方法应该被称为 `removeAt(index)`。 要删除某个 `index` 处的 `element`，我们需要在沿着链表移动时保持每个节点的运行计数。

用于遍历链表的元素的常用技术涉及<dfn>“转轮”</dfn>或“哨兵”，它们“指向”代码所比较的节点。 在我们的例子中，从列表的 `head` 开始，我们从 `currentIndex` 变量为 `0` 开始。 对于我们遍历的每个节点， `currentIndex` 应该增加 1。

就像我们在上一课中介绍的 remove(element) 方法一样，当我们在 removeAt(index)方法中删除节点时，我们需要注意不要孤立列表的其余部分。 我们通过确保引用已移除节点的节点具有对下一个节点的引用来保持节点的连续性。

# --instructions--

编写一个 removeAt(index) 方法，该方法删除并返回给定 index处的节点。 如果给定的 index 是负数，或者大于或等于链表的 length，该方法应该返回 null。

注意：请记住保留对 currentIndex 的计数。

# --hints--

你的 `LinkedList` 类应该有一个 `removeAt` 方法。

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.removeAt === 'function';
  })()
);
```

你的 `removeAt` 方法应该将链表的 `length` 减少一个。

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

你的 `removeAt` 方法应该从链表中删除指定索引处的元素。

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

当链表中只有一个元素时，您的 `removeAt` 方法应该删除并返回指定索引处的元素，并减少链表的长度。

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

你的 `removeAt` 方法应该返回被移除节点的元素。

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

你的 `removeAt` 方法应该返回 `null` 并且如果给定的索引小于 `0`，链表不应该改变。

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

你的 `removeAt` 方法应该返回 `null`，如果给定的索引大于或等于列表的 `length`，链接列表不应该改变。

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
