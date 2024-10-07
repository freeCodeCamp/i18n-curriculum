---
id: 587d8251367417b2b2512c61
title: Lavorare con i nodi in una lista concatenata
challengeType: 1
forumTopicId: 301721
dashedName: work-with-nodes-in-a-linked-list
---

# --description--

Another common data structure you'll run into in computer science is the <dfn>linked list</dfn>. A linked list is a linear collection of data elements, called 'nodes', each of which points to the next. Each <dfn>node</dfn> in a linked list contains two key pieces of information: the `element` itself, and a reference to the next `node`.

Immagina di essere in un trenino. Hai le mani sulle spalle della persona davanti a te in fila, e la persona dietro di te ha le mani sulle tue spalle. Puoi vedere la persona direttamente di fronte a te, ma stanno bloccando la vista delle altre persone più in la nel trenino. Un nodo è proprio come una persona in un trenino: sanno chi sono e possono vedere solo la persona successiva nella fila, ma non sono a conoscenza delle altre persone davanti o dietro di loro.

# --instructions--

Nel nostro editor di codice, abbiamo creato due noti, `Kitten` e `Puppy`, e abbiamo connesso il nodo `Kitten` al nodo`Puppy`.

Crea dei nodi `Cat` e `Dog` e aggiungili manualmente alla lista.

# --hints--

Il tuo nodo `Puppy` dovrebbe avere un riferimento a un nodo `Cat`.

```js
assert(Puppy.next.element === 'Cat');
```

Il tuo nodo `Cat` dovrebbe avere un riferimento a un nodo `Dog`.

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
