---
id: 587d8251367417b2b2512c63
title: Entfernen von Elementen aus einer verknüpften Liste
challengeType: 1
forumTopicId: 301712
dashedName: remove-elements-from-a-linked-list
---

# --description--

The next important method that any implementation of a linked list will need is a `remove` method. This method should take the element we want to remove as an argument, and then search the list to find and remove the node that contains that element.

Wenn wir einen Knoten aus einer verknüpften Liste entfernen, ist es wichtig, dass wir dabei nicht versehentlich den Rest der Liste verwaisen lassen. Die Eigenschaft `next` eines jeden Knotens zeigt auf den Knoten, der ihm in der Liste folgt. Wenn wir z.B. das mittlere Element entfernen, müssen wir sicherstellen, dass wir eine Verbindung zwischen der `next`-Eigenschaft des vorherigen Knotens dieses Elements und der `next`-Eigenschaft des mittleren Elements haben (das ist der nächste Knoten in der Liste!)

Das mag sehr verwirrend klingen, also kehren wir zum Beispiel der Conga-Linie zurück, damit wir ein gutes konzeptionelles Modell haben. Stell dir vor, du stehst in einer Conga-Linie, und die Person direkt vor dir verlässt die Linie. Die Person, die gerade die Schlange verlassen hat, hat ihre Hände nicht mehr bei den anderen in der Schlange - und du hast deine Hände nicht mehr bei der Person, die gerade gegangen ist. Du trittst vor und legst deine Hände auf die nächste Person, die du siehst.

Wenn es sich bei dem zu entfernenden Element um das `head`-Element handelt, ordnen wir den `head` dem zweiten Knoten der verknüpften Liste zu.

# --instructions--

Schreib eine `remove`-Methode, die ein Element nimmt und es aus der verknüpften Liste entfernt.

**Note:** Das `length` der Liste sollte jedes Mal um eins abnehmen, wenn ein Element aus der verknüpften Liste entfernt wird.

# --hints--

Deine `LinkedList`-Klasse sollte eine `remove` Methode haben.

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.remove === 'function';
  })()
);
```

Deine `remove`-Methode sollte `head` dem zweiten Knoten neu zuordnen, wenn der erste Knoten entfernt wird.

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

Deine `remove`-Methode sollte die `length` der verknüpften Liste für jeden entfernten Knoten um eins verringern.

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

Deine `remove`-Methode sollte die Referenz des vorherigen Knotens des entfernten Knotens der `next`-Referenz des entfernten Knotens neu zuweisen.

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

Deine `remove`-Methode sollte die verknüpfte Liste nicht verändern, wenn das Element nicht in der verknüpften Liste existiert.

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
