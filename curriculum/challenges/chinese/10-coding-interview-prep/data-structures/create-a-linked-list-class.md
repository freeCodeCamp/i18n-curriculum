---
id: 587d8251367417b2b2512c62
title: 创建链表类
challengeType: 1
forumTopicId: 301628
dashedName: create-a-linked-list-class
---

# --description--

Let's create a `linked list` class. Every linked list should start out with a few basic properties: a `head` (the first item in your list) and a `length` (number of items in your list). Sometimes you'll see implementations of linked lists that incorporate a `tail` for the last element of the list, but for now we'll just stick with these two. Whenever we add an element to the linked list, our `length` property should be incremented by one.

我们希望有一种向链表添加项的方法，因此我们要创建的第一个方法是 `add` 方法。

如果我们的链表是空的，那么向链表添加一个元素就很简单了：我们只需将该元素包装在一个 `Node` 类中，然后将该节点分配给我们的链表的 `head`。

但是如果我们的列表已经有一个或多个成员呢？ 我们如何在列表中添加元素？ 回想一下，链表中的每个节点都有一个 `next` 属性。 要将节点添加到列表，在列表中找到最后一个节点，并将该节点的 `next` 属性指向新节点。 （提示：当节点的 `next` 属性为 `null` 的时候，你知道已到达链表的末尾。）

# --instructions--

编写一个 add 方法，将你推送到链表的第一个节点分配给 `head`；之后，每当添加节点时，每个节点都应该被前一个节点的 `next` 属性引用。

注意

每次将元素添加到链表时，列表的 `length` 都应增加 1。

# --hints--

你的 `LinkedList` 类应该有一个 `add` 方法。

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.add === 'function';
  })()
);
```

你的 `LinkedList` 类应该将 `head` 分配给添加的第一个节点。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    return test.head().element === 'cat';
  })()
);
```

`LinkedList` 类中的前一个 `node` 应该引用最新创建的节点。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('fish');
    return test.head().next.element === 'dog' && test.head().next.next.element === 'fish';
  })()
);
```

`LinkedList` 类的 `size` 应该等于链表中的节点数量。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    return test.size() === 2;
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

  this.head = function(){
    return head;
  };

  this.size = function(){
    return length;
  };

  this.add = function(element){
    // Only change code below this line

    // Only change code above this line
  };
}
```

# --solutions--

```js
function LinkedList() { 
  var length = 0; 
  var head = null; 

  var Node = function(element){
    this.element = element; 
    this.next = null; 
  }; 

  this.head = function(){
    return head;
  };

  this.size = function(){
    return length;
  };

  this.add = function(element){
    // Only change code below this line
    if (head == null) {
      head = new Node(element);
    } 
    else {
      let currentNode = head;
      while (currentNode.next != null) {
        // currentNode.next will be last node of linked list after loop
        currentNode = currentNode.next;
      }
      currentNode.next = new Node(element);
    }
    length++;
    // Only change code above this line
  };
}
```
