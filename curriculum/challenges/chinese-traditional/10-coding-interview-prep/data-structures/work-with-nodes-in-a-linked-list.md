---
id: 587d8251367417b2b2512c61
title: 使用鏈表中的節點
challengeType: 1
forumTopicId: 301721
dashedName: work-with-nodes-in-a-linked-list
---

# --description--

Another common data structure you'll run into in computer science is the <dfn>linked list</dfn>. A linked list is a linear collection of data elements, called 'nodes', each of which points to the next. Each <dfn>node</dfn> in a linked list contains two key pieces of information: the `element` itself, and a reference to the next `node`.

想象一下你在康加舞線上。 你的手放在隊伍中的前一個人身上，而你後面的人的手也放在你身上。 您可以看到正前方的人，但他們擋住了其他人的視線。 一個節點就像一個康加舞線上的人：他們知道自己是誰，他們只能看到下一個人，但他們並不知道前方或後方的其他人。

# --instructions--

在我們的代碼編輯器中，我們已經創建了兩個節點，`Kitten` 和 `Puppy`，並且我們已經手動將 `Kitten` 節點連接到 `Puppy` 節點。

創建 `Cat` 和 `Dog` 節點並手動將它們添加到行中。

# --hints--

你的 `Puppy` 節點應該引用 `Cat` 節點。

```js
assert(Puppy.next.element === 'Cat');
```

你的 `Cat` 節點應該引用 `Dog` 節點。

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
