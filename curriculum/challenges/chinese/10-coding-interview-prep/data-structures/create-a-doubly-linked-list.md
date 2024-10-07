---
id: 587d825a367417b2b2512c87
title: 创建双向链接列表
challengeType: 1
forumTopicId: 301626
dashedName: create-a-doubly-linked-list
---

# --description--

All of the linked lists we've created so far are singly linked lists. Here, we'll create a <dfn>doubly linked list</dfn>. As the name implies, nodes in a doubly linked list have references to the next and previous node in the list.

这允许我们在两个方向上遍历列表，但它还需要使用更多内存，因为每个节点必须包含对列表中前一个节点的附加引用。

# --instructions--

我们提供了一个 `Node` 对象以及我们的 `DoublyLinkedList` 的起始代码。 让我们将两个名为 `add` 和 `remove` 的方法添加到我们的双向链表结构中。 `add`方法应该将给定元素添加到列表中，而`remove`方法应该删除列表中所有出现的给定元素。

编写这些方法时要小心处理任何可能的边缘情况，例如删除第一个或最后一个元素。 此外，删除空列表中的任何项应返回 `null`。

# --hints--

存在`DoublyLinkedList`数据结构。

```js
assert(
  (function () {
    var test = false;
    if (typeof DoublyLinkedList !== 'undefined') {
      test = new DoublyLinkedList();
    }
    return typeof test == 'object';
  })()
);
```

`DoublyLinkedList` 应该有一个名为 `add`的方法。

```js
assert(
  (function () {
    var test = false;
    if (typeof DoublyLinkedList !== 'undefined') {
      test = new DoublyLinkedList();
    }
    if (test.add == undefined) {
      return false;
    }
    return typeof test.add == 'function';
  })()
);
```

`DoublyLinkedList` 应该有一个名为 `remove`的方法。

```js
assert(
  (function () {
    var test = false;
    if (typeof DoublyLinkedList !== 'undefined') {
      test = new DoublyLinkedList();
    }
    if (test.remove == undefined) {
      return false;
    }
    return typeof test.remove == 'function';
  })()
);
```

从一个空列表中移除项应当返回 `null`。

```js
assert(
  (function () {
    var test = false;
    if (typeof DoublyLinkedList !== 'undefined') {
      test = new DoublyLinkedList();
    }
    return test.remove(100) == null;
  })()
);
```

`add`方法应当将元素添加到列表中。

```js
assert(
  (function () {
    var test = false;
    if (typeof DoublyLinkedList !== 'undefined') {
      test = new DoublyLinkedList();
    }
    test.add(5);
    test.add(6);
    test.add(723);
    return test.print().join('') == '56723';
  })()
);
```

每个节点都应该跟踪上一个节点。

```js
assert(
  (function () {
    var test = false;
    if (typeof DoublyLinkedList !== 'undefined') {
      test = new DoublyLinkedList();
    }
    test.add(50);
    test.add(68);
    test.add(73);
    return test.printReverse().join('') == '736850';
  })()
);
```

第一个项目应该从列表中删除。

```js
assert(
  (function () {
    var test = false;
    if (typeof DoublyLinkedList !== 'undefined') {
      test = new DoublyLinkedList();
    }
    test.add(25);
    test.add(35);
    test.add(60);
    test.remove(25);
    return test.print().join('') == '3560';
  })()
);
```

最后一个项目应该从列表中删除。

```js
assert(
  (function () {
    var test = false;
    if (typeof DoublyLinkedList !== 'undefined') {
      test = new DoublyLinkedList();
    }
    test.add(25);
    test.add(35);
    test.add(60);
    test.remove(60);
    return test.print().join('') == '2535';
  })()
);
```

# --seed--

## --after-user-code--

```js
DoublyLinkedList.prototype = Object.assign(
  DoublyLinkedList.prototype,
  {

  print() {
    if (this.head == null) {
      return null;
    } else {
      var result = new Array();
      var node = this.head;
      while (node.next != null) {
        result.push(node.data);
        node = node.next;
      };
      result.push(node.data);
      return result;
    };
  },
  printReverse() {
    if (this.tail == null) {
      return null;
    } else {
      var result = new Array();
      var node = this.tail;
      while (node.prev != null) {
        result.push(node.data);
        node = node.prev;
      };
      result.push(node.data);
      return result;
    };
  }
});
```

## --seed-contents--

```js
var Node = function(data, prev) {
  this.data = data;
  this.prev = prev;
  this.next = null;
};
var DoublyLinkedList = function() {
  this.head = null;
  this.tail = null;
  // Only change code below this line

  // Only change code above this line
};
```

# --solutions--

```js
// solution required
```
