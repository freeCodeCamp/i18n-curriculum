---
id: 587d8251367417b2b2512c62
title: Crea una clase de Lista Enlazada
challengeType: 1
forumTopicId: 301628
dashedName: create-a-linked-list-class
---

# --description--

Let's create a `linked list` class. Every linked list should start out with a few basic properties: a `head` (the first item in your list) and a `length` (number of items in your list). Sometimes you'll see implementations of linked lists that incorporate a `tail` for the last element of the list, but for now we'll just stick with these two. Whenever we add an element to the linked list, our `length` property should be incremented by one.

Queremos tener una forma de agregar elementos a nuestra lista enlazada, por eso el primer método que queremos crear es el método `add`.

Si nuestra lista está vacía, agregar un elemento a nuestra lista enlazada es bastante sencillo, simplemente envolver ese elemento en una clase `Node`, y asignar ese nodo a `head` de nuestra lista enlazada.

Pero ¿qué pasa si nuestra lista ya tiene uno o más elementos? ¿Como agregarmos un elemento a la lista? Recuerda que cada nodo en una lista enlazada tiene una propiedad `next`. Para agregar un nodo a la lista, encuentra el último nodo en la lista, y apunta la propiedad `next` del último nodo a nuestro nuevo nodo. (Sugerencia: sabes que has llegado el final de una lista enlazada cuando la propiedad `next` de un nodo es `null`.)

# --instructions--

Escribe un método agregar que asigne el primer nodo que pongas en la lista enlazada al `head`; después de esto, siempre que agreguemos un nodo, cada node debe ser referenciado en la propiedad `next` del nodo anterior.

Nota

La propiedad `length` de tu lista debe incrementarse en uno al momento que un elemento es añadido a la lista enlazada.

# --hints--

Tu clase `LinkedList` debe tener un método `add`.

```js
assert(
  (function () {
    var test = new LinkedList();
    return typeof test.add === 'function';
  })()
);
```

Tu clase `LinkedList` debe asignar al `head` el primer nodo agregado.

```js
assert(
  (function () {
    var test = new LinkedList();
    test.add('cat');
    return test.head().element === 'cat';
  })()
);
```

El `node` anterior en tu clase `LinkedList` debe tener una referencia al nuevo nodo creado.

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

El `size` de tu clase `LinkedList` deber ser igual a la cantidad de nodos en la lista enlazada.

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
