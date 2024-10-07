---
id: 587d8259367417b2b2512c84
title: Створіть префіксне дерево пошуку
challengeType: 1
forumTopicId: 301634
dashedName: create-a-trie-search-tree
---

# --description--

Here we will move on from binary search trees and take a look at another type of tree structure called a trie. A trie is an ordered search tree commonly used to hold strings, or more generically associative arrays or dynamic datasets in which the keys are strings. They are very good at storing sets of data when many keys will have overlapping prefixes, for example, all the words in a dictionary. Unlike a binary tree, nodes are not associated with actual values. Instead, the path to a node represents a specific key. For instance, if we wanted to store the string code in a trie, we would have four nodes, one for each letter: c — o — d — e. Following that path through all these nodes will then create code as a string — that path is the key we stored. Then, if we wanted to add the string coding, it would share the first three nodes of code before branching away after the d. In this way, large datasets can be stored very compactly. In addition, search can be very quick because it is effectively limited to the length of the string you are storing. Furthermore, unlike binary trees a node can store any number of child nodes. As you might have guessed from the above example, some metadata is commonly stored at nodes that hold the end of a key so that on later traversals that key can still be retrieved. For instance, if we added codes in our example above we would need some way to know that the e in code represents the end of a key that was previously entered. Otherwise, this information would effectively be lost when we add codes.

# --instructions--

Створимо префіксне дерево пошуку для зберігання слів. Воно буде отримувати слова за допомогою методу `add` і зберігати їх у структурі даних префіксного дерева пошуку. А також за допомогою методу `isWord` дозволить дізнатися, чи наданий рядок є словом, а за допомогою методу `print` надасть всі слова, введені у префіксне дерево. Метод `isWord` має повернути булеве значення, а метод `print` має повернути масив всіх цих слів у вигляді рядків. Щоб переконатись, що ця структура даних реалізована правильно, ми надали структуру `Node` для кожного вузла у дереві. Кожен вузол буде об’єктом із властивістю `keys`, що є об’єктом Map від JavaScript. Він міститиме окремі літери, які виступають дійсними ключами кожного вузла. Також ми створили для вузлів властивість `end`, яка може мати значення `true`, якщо вузол являє собою закінчення слова.

# --hints--

Структура `Trie` повинна мати метод `add`.

```js
assert(
  (function testTrie() {
    var test = false;
    if (typeof Trie !== 'undefined') {
      test = new Trie();
    } else {
      return false;
    }
    return typeof test.add == 'function';
  })()
);
```

Структура `Trie` повинна мати метод `print`.

```js
assert(
  (function testTrie() {
    var test = false;
    if (typeof Trie !== 'undefined') {
      test = new Trie();
    } else {
      return false;
    }
    return typeof test.print == 'function';
  })()
);
```

Структура `Trie` повинна мати метод `isWord`.

```js
assert(
  (function testTrie() {
    var test = false;
    if (typeof Trie !== 'undefined') {
      test = new Trie();
    } else {
      return false;
    }
    return typeof test.isWord == 'function';
  })()
);
```

Метод `print` має повернути всі елементи, додані до префіксного дерева, у вигляді рядків в масиві.

```js
assert(
  (function testTrie() {
    var test = false;
    if (typeof Trie !== 'undefined') {
      test = new Trie();
    } else {
      return false;
    }
    test.add('jump');
    test.add('jumps');
    test.add('jumped');
    test.add('house');
    test.add('mouse');
    var added = test.print();
    return (
      added.indexOf('jump') != -1 &&
      added.indexOf('jumps') != -1 &&
      added.indexOf('jumped') != -1 &&
      added.indexOf('house') != -1 &&
      added.indexOf('mouse') != -1 &&
      added.length == 5
    );
  })()
);
```

Метод `isWord` має повернути `true` лише для слів, доданих до дерева, та `false` для всіх інших.

```js
assert(
  (function testTrie() {
    var test = false;
    if (typeof Trie !== 'undefined') {
      test = new Trie();
    } else {
      return false;
    }
    test.add('hop');
    test.add('hops');
    test.add('hopped');
    test.add('hoppy');
    test.add('hope');
    return (
      test.isWord('hop') &&
      !test.isWord('ho') &&
      test.isWord('hopped') &&
      !test.isWord('hopp') &&
      test.isWord('hoppy') &&
      !test.isWord('hoping')
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
var displayTree = tree => console.log(JSON.stringify(tree, null, 2));
var Node = function() {
  this.keys = new Map();
  this.end = false;
  this.setEnd = function() {
    this.end = true;
  };
  this.isEnd = function() {
    return this.end;
  };
};
var Trie = function() {
  // Only change code below this line

  // Only change code above this line
};
```

# --solutions--

```js
// solution required
```
