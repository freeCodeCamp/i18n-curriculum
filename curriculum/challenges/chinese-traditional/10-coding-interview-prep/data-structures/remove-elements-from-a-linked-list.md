---
id: 587d8251367417b2b2512c63
title: 從鏈表中刪除元素
challengeType: 1
forumTopicId: 301712
dashedName: remove-elements-from-a-linked-list
---

# --description--

The next important method that any implementation of a linked list will need is a `remove` method. This method should take the element we want to remove as an argument, and then search the list to find and remove the node that contains that element.

每當我們從鏈表中刪除一個節點時，重要的是我們不要意外地孤立列表的其餘部分。 回想一下，每個節點的`next`屬性都指向列表中跟隨它的節點。 如果我們刪除中間元素，比如說，我們要確保我們從該元素的前一個節點的`next`屬性到中間元素的`next`屬性（這是列表中的下一個節點）的連接！

這聽起來可能非常混亂，所以讓我們回到康加舞的例子，以便我們有一個好的概念模型。 想象一下你在一個康加線上，而你前面的人離開了隊伍。 剛剛離開隊伍的人不再對排隊的人有手，而你也不再對離開的人有手。 你上前一步，把手放在你看到的下一個人身上。

如果我們希望刪除的元素是 `head` 元素，我們將 `head` 重新分配給鏈表的第二個節點。

# --instructions--

編寫一個 `remove` 方法，該方法接受一個元素並將其從鏈表中刪除。

**注意：**每從鏈表中刪除一個元素，鏈表的 `length` 就應該減 1。

# --hints--

你的 `LinkedList` 類應該有一個 `remove` 方法。

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.remove === 'function';
  })()
);
```

當第一個節點被刪除時，您的 `remove` 方法應該將 `head` 重新分配給第二個節點。

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

你的 `remove` 方法每移除一個節點，就應該將鏈表的 `length` 減少一個。

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

你的 `remove` 方法應該將被移除節點的前一個節點的引用重新分配給被移除節點的 `next` 引用。

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

如果元素不存在於鏈表中，你的 `remove` 方法不應該改變鏈表。

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
