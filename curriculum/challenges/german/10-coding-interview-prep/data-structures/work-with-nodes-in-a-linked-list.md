---
id: 587d8251367417b2b2512c61
title: Arbeiten mit Knoten in einer verknüpften Liste
challengeType: 1
forumTopicId: 301721
dashedName: work-with-nodes-in-a-linked-list
---

# --description--

Another common data structure you'll run into in computer science is the <dfn>linked list</dfn>. A linked list is a linear collection of data elements, called 'nodes', each of which points to the next. Each <dfn>node</dfn> in a linked list contains two key pieces of information: the `element` itself, and a reference to the next `node`.

Stell dir vor, dass du in einer Conga-Linie stehst. Du hast deine Hände auf der nächsten Person in der Schlange, und die Person hinter dir hat ihre Hände auf dir. Du kannst die Person direkt vor dir sehen, aber sie versperrt dir die Sicht auf die anderen Personen in der Schlange. Ein Knoten ist wie eine Person in einer Conga-Linie: Sie weiß, wer sie ist, und sie kann nur die nächste Person in der Reihe sehen, aber sie ist sich der anderen Personen vor oder hinter ihr nicht bewusst.

# --instructions--

In unserem Code-Editor haben wir zwei Knoten erstellt, `Kitten` und `Puppy`, und wir haben den Knoten `Kitten` manuell mit dem Knoten `Puppy` verbunden.

Erstelle einen `Cat`- und einen `Dog`-Knoten und füge sie manuell in die Zeile ein.

# --hints--

Dein `Puppy`-Knoten sollte einen Verweis auf einen `Cat`-Knoten enthalten.

```js
assert(Puppy.next.element === 'Cat');
```

Dein `Cat`-Knoten sollte einen Verweis auf einen `Dog`-Knoten haben.

```js
assert(Cat.next.element === 'Dog');
```

# --seed--

## --seed-contents--

```js
var Node = function(element) {
  this.element = element;
  this.next = null;
};
var Kitten = new Node('Kitten');
var Puppy = new Node('Puppy');

Kitten.next = Puppy;
// Only change code below this line
```

# --solutions--

```js
// solution required
```
