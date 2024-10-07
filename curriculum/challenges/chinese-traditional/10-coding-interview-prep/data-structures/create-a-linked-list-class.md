---
id: 587d8251367417b2b2512c62
title: 創建鏈表類
challengeType: 1
forumTopicId: 301628
dashedName: create-a-linked-list-class
---

# --description--

Let's create a `linked list` class. Every linked list should start out with a few basic properties: a `head` (the first item in your list) and a `length` (number of items in your list). Sometimes you'll see implementations of linked lists that incorporate a `tail` for the last element of the list, but for now we'll just stick with these two. Whenever we add an element to the linked list, our `length` property should be incremented by one.

我們希望有一種向鏈表添加項的方法，因此我們要創建的第一個方法是 `add` 方法。

如果我們的鏈表是空的，那麼向鏈表添加一個元素就很簡單了：我們只需將該元素包裝在一個 `Node` 類中，然後將該節點分配給我們的鏈表的 `head`。

但是如果我們的列表已經有一個或多個成員呢？ 我們如何在列表中添加元素？ 回想一下，鏈表中的每個節點都有一個 `next` 屬性。 要將節點添加到列表，在列表中找到最後一個節點，並將該節點的 `next` 屬性指向新節點。 （提示：當節點的 `next` 屬性爲 `null` 的時候，你知道已到達鏈表的末尾。）

# --instructions--

編寫一個 add 方法，將你推送到鏈表的第一個節點分配給 `head`；之後，每當添加節點時，每個節點都應該被前一個節點的 `next` 屬性引用。

注意

每次將元素添加到鏈表時，列表的 `length` 都應增加 1。

# --hints--

你的 `LinkedList` 類應該有一個 `add` 方法。

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.add === 'function';
  })()
);
```

你的 `LinkedList` 類應該將 `head` 分配給添加的第一個節點。

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    return test.head().element === 'cat';
  })()
);
```

`LinkedList` 類中的前一個 `node` 應該引用最新創建的節點。

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

`LinkedList` 類的 `size` 應該等於鏈表中的節點數量。

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
