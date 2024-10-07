---
id: 587d8251367417b2b2512c61
title: 使用链表中的节点
challengeType: 1
forumTopicId: 301721
dashedName: work-with-nodes-in-a-linked-list
---

# --description--

Another common data structure you'll run into in computer science is the <dfn>linked list</dfn>. A linked list is a linear collection of data elements, called 'nodes', each of which points to the next. Each <dfn>node</dfn> in a linked list contains two key pieces of information: the `element` itself, and a reference to the next `node`.

想象一下你在康加舞线上。 你的手放在队伍中的前一个人身上，而你后面的人的手也放在你身上。 您可以看到正前方的人，但他们挡住了其他人的视线。 一个节点就像一个康加舞线上的人：他们知道自己是谁，他们只能看到下一个人，但他们并不知道前方或后方的其他人。

# --instructions--

在我们的代码编辑器中，我们已经创建了两个节点，`Kitten` 和 `Puppy`，并且我们已经手动将 `Kitten` 节点连接到 `Puppy` 节点。

创建 `Cat` 和 `Dog` 节点并手动将它们添加到行中。

# --hints--

你的 `Puppy` 节点应该引用 `Cat` 节点。

```js
assert(Puppy.next.element === 'Cat');
```

你的 `Cat` 节点应该引用 `Dog` 节点。

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
