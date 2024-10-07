---
id: 587d8251367417b2b2512c62
title: Erstelle eine Linked-List-Klasse
challengeType: 1
forumTopicId: 301628
dashedName: create-a-linked-list-class
---

# --description--

Let's create a `linked list` class. Every linked list should start out with a few basic properties: a `head` (the first item in your list) and a `length` (number of items in your list). Sometimes you'll see implementations of linked lists that incorporate a `tail` for the last element of the list, but for now we'll just stick with these two. Whenever we add an element to the linked list, our `length` property should be incremented by one.

Wir wollen eine Möglichkeit haben, Elemente zu unserer verknüpften Liste hinzuzufügen, also ist die erste Methode, die wir erstellen wollen, die `add` Methode.

Wenn unsere Liste leer ist, ist das Hinzufügen eines Elements zu unserer verknüpften Liste ganz einfach: Wir wickeln das Element einfach in eine `Node`-Klasse ein und weisen diesen Knoten dem `head` unserer verknüpften Liste zu.

Was aber, wenn unsere Liste bereits ein oder mehrere Mitglieder hat? Wie fügt man ein Element zur Liste hinzu? Erinnere dich, dass jeder Knoten in einer verknüpften Liste eine `next` Eigenschaft hat. Um der Liste einen Knoten hinzuzufügen, suche den letzten Knoten in der Liste und richte die `next`-Eigenschaft dieses letzten Knotens auf unseren neuen Knoten. (Hinweis: Du weißt, dass du das Ende einer verknüpften Liste erreicht hast, wenn die `next`-Eigenschaft eines Knotens `null` ist)

# --instructions--

Schreibe eine Add-Methode, die den ersten Knoten, den du in die verknüpfte Liste schiebst, der `head`-Eigenschaft zuweist; danach sollte bei jedem Hinzufügen eines Knotens durch die `next`-Eigenschaft des vorherigen Knotens referenziert werden.

Notiz

Der Wert `length` deiner Liste sollte sich jedes Mal um eins erhöhen, wenn ein Element zur verknüpften Liste hinzugefügt wird.

# --hints--

Deine `LinkedList` Klasse sollte eine `add` Methode haben.

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.add === 'function';
  })()
);
```

Deine `LinkedList`-Klasse sollte dem ersten hinzugefügten Knoten `head` zuweisen.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    return test.head().element === 'cat';
  })()
);
```

Das vorherige `node` in deiner `LinkedList` Klasse sollte einen Verweis auf den zuletzt erstellten Knoten haben.

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

Der `size`-Wert deiner `LinkedList`-Klasse sollte der Anzahl der Knoten in der verknüpften Liste entsprechen.

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
