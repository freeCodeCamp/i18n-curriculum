---
id: 587d8251367417b2b2512c61
title: Попрацюйте з вузлами у зв’язаному списку
challengeType: 1
forumTopicId: 301721
dashedName: work-with-nodes-in-a-linked-list
---

# --description--

Another common data structure you'll run into in computer science is the <dfn>linked list</dfn>. A linked list is a linear collection of data elements, called 'nodes', each of which points to the next. Each <dfn>node</dfn> in a linked list contains two key pieces of information: the `element` itself, and a reference to the next `node`.

Уявіть, що ви стоїте в колоні. Ви кладете руки на плечі людини, що стоїть перед вами, а людина позаду вас кладе руки на ваші плечі. Ви бачите людину перед собою, але вона заступає інших. Так само і вузол: він знає, чим є, але може бачити лише наступний елемент і не знає про існування інших.

# --instructions--

У редакторі коду створено два вузли під назвою `Kitten` та `Puppy`, і ми вручну приєднали вузол `Kitten` до вузла `Puppy`.

Створіть вузли `Cat` та `Dog` і вручну додайте їх до лінії.

# --hints--

Вузол `Puppy` повинен мати посилання на вузол `Cat`.

```js
assert(Puppy.next.element === 'Cat');
```

Вузол `Cat` повинен мати посилання на вузол `Dog`.

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
