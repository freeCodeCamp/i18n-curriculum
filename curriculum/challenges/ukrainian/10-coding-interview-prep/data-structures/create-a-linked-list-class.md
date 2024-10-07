---
id: 587d8251367417b2b2512c62
title: Створіть клас Linked List
challengeType: 1
forumTopicId: 301628
dashedName: create-a-linked-list-class
---

# --description--

Let's create a `linked list` class. Every linked list should start out with a few basic properties: a `head` (the first item in your list) and a `length` (number of items in your list). Sometimes you'll see implementations of linked lists that incorporate a `tail` for the last element of the list, but for now we'll just stick with these two. Whenever we add an element to the linked list, our `length` property should be incremented by one.

Ми будемо додавати елементи до зв’язаного списку, тому перший метод, який створимо, — це метод `add`.

Якщо список порожній, додати елемент до нього досить легко: ми просто перенесемо цей елемент в клас `Node` та призначимо цей вузол до властивості `head` зв’язаного списку.

Але що робити, якщо в списку вже є один чи більше елементів? Як додати елемент до цього списку? Нагадаємо, що кожен вузол у зв’язаному списку має властивість `next`. Щоб додати вузол до списку, знайдіть останній вузол даного списку та вкажіть його властивість `next` на новий вузол. (Підказка: ви зрозумієте, що дійшли до кінця зв’язаного списку, коли властивість `next` набуває значення `null`.)

# --instructions--

Напишіть метод `add`, який призначає перший вузол, який ви додаєте до зв’язаного списку, до `head`. Після цього при додаванні вузла кожен вузол має посилатись на властивість `next` попереднього вузла.

Зверніть увагу

Довжина списку має збільшуватись на одиницю щоразу, коли до зв’язаного списку додається новий елемент.

# --hints--

Клас `LinkedList` повинен мати метод `add`.

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.add === 'function';
  })()
);
```

Клас `LinkedList` має призначити `head` до першого доданого вузла.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    return test.head().element === 'cat';
  })()
);
```

Попередній вузол у класі `LinkedList` має посилатися на найновіший вузол.

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

Розмір класу `LinkedList` має дорівнювати кількості вузлів у зв’язаному списку.

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
