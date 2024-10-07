---
id: 587d8251367417b2b2512c63
title: 从链表中删除元素
challengeType: 1
forumTopicId: 301712
dashedName: remove-elements-from-a-linked-list
---

# --description--

The next important method that any implementation of a linked list will need is a `remove` method. This method should take the element we want to remove as an argument, and then search the list to find and remove the node that contains that element.

每当我们从链表中删除一个节点时，重要的是我们不要意外地孤立列表的其余部分。 回想一下，每个节点的`next`属性都指向列表中跟随它的节点。 如果我们删除中间元素，比如说，我们要确保我们从该元素的前一个节点的`next`属性到中间元素的`next`属性（这是列表中的下一个节点）的连接！

这听起来可能非常混乱，所以让我们回到康加舞的例子，以便我们有一个好的概念模型。 想象一下你在一个康加线上，而你前面的人离开了队伍。 刚刚离开队伍的人不再对排队的人有手，而你也不再对离开的人有手。 你上前一步，把手放在你看到的下一个人身上。

如果我们希望删除的元素是 `head` 元素，我们将 `head` 重新分配给链表的第二个节点。

# --instructions--

编写一个 `remove` 方法，该方法接受一个元素并将其从链表中删除。

**注意：**每从链表中删除一个元素，链表的 `length` 就应该减 1。

# --hints--

你的 `LinkedList` 类应该有一个 `remove` 方法。

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.remove === 'function';
  })()
);
```

当第一个节点被删除时，您的 `remove` 方法应该将 `head` 重新分配给第二个节点。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.remove('cat');
    return test.head().element === 'dog';
  })()
);
```

你的 `remove` 方法每移除一个节点，就应该将链表的 `length` 减少一个。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('hamster');
    test.remove('cat');
    test.remove('fish');
    return test.size() === 2;
  })()
);
```

你的 `remove` 方法应该将被移除节点的前一个节点的引用重新分配给被移除节点的 `next` 引用。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('snake');
    test.add('kitten');
    test.remove('snake');
    return test.head().next.next.element === 'kitten';
  })()
);
```

如果元素不存在于链表中，你的 `remove` 方法不应该改变链表。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    test.add('dog');
    test.add('kitten');
    test.remove('elephant');
    return (
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

  this.remove = function(element){
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

  this.remove = function(element){
    if (head === null) {
      return;
    }
    var previous;
    var currentNode = head;

    while (currentNode.next !== null && currentNode.element !== element) {
      previous = currentNode;
      currentNode = currentNode.next;
    }

    if (currentNode.next === null && currentNode.element !== element) {
      return;
    }
    else if (previous) {
      previous.next = currentNode.next;
    } else {
      head = currentNode.next;
    }

    length--;
  };
} 
```
