---
id: 587d8251367417b2b2512c61
title: Trabaja con nodos en una lista enlazada
challengeType: 1
forumTopicId: 301721
dashedName: work-with-nodes-in-a-linked-list
---

# --description--

Another common data structure you'll run into in computer science is the <dfn>linked list</dfn>. A linked list is a linear collection of data elements, called 'nodes', each of which points to the next. Each <dfn>node</dfn> in a linked list contains two key pieces of information: the `element` itself, and a reference to the next `node`.

Imagínate en una conga. Tienes las manos puestas sobre la persona que está por delante, y el que está por detrás las tiene puestas sobre tí. Puedes ver a la persona directamente delante de tí, pero éste te bloquea la visión del resto que está por delante en la línea. Un nodo es sencillamente como una persona en una conga: sabe quien es y solo puede ver la siguiente persona en la línea, pero no tiene ni idea del resto de los participantes por delante o por detrás de él.

# --instructions--

En nuestro editor de código, vamos a crear dos nodos, `Kitten` y `Puppy`, y vamos a enlazar manualmente el nodo `Kitten` con el nodo `Puppy`.

Crea un nodo `Cat` y un nodo `Dog` y añádelos manualmente a la línea.

# --hints--

Tu nodo `Puppy` debe tener una referencia al nodo `Cat`.

```js
assert(Puppy.next.element === 'Cat');
```

Tu nodo `Cat` debe tener una referencia al nodo `Dog`.

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
