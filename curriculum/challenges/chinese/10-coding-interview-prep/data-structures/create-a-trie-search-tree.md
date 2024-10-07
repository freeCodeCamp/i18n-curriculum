---
id: 587d8259367417b2b2512c84
title: 创建Trie搜索树
challengeType: 1
forumTopicId: 301634
dashedName: create-a-trie-search-tree
---

# --description--

Here we will move on from binary search trees and take a look at another type of tree structure called a trie. A trie is an ordered search tree commonly used to hold strings, or more generically associative arrays or dynamic datasets in which the keys are strings. They are very good at storing sets of data when many keys will have overlapping prefixes, for example, all the words in a dictionary. Unlike a binary tree, nodes are not associated with actual values. Instead, the path to a node represents a specific key. For instance, if we wanted to store the string code in a trie, we would have four nodes, one for each letter: c — o — d — e. Following that path through all these nodes will then create code as a string — that path is the key we stored. Then, if we wanted to add the string coding, it would share the first three nodes of code before branching away after the d. In this way, large datasets can be stored very compactly. In addition, search can be very quick because it is effectively limited to the length of the string you are storing. Furthermore, unlike binary trees a node can store any number of child nodes. As you might have guessed from the above example, some metadata is commonly stored at nodes that hold the end of a key so that on later traversals that key can still be retrieved. For instance, if we added codes in our example above we would need some way to know that the e in code represents the end of a key that was previously entered. Otherwise, this information would effectively be lost when we add codes.

# --instructions--

说明：让我们创建一个存储单词的trie。 它将通过 `add` 方法接受单词并将这些单词存储在一个 trie 数据结构中。 它还允许我们使用 `isWord` 方法查询给定的字符串是否是单词，并使用 `print` 方法检索输入到树中的所有单词。 < code > isWord </code > 应该返回一个布尔值，< code > print </code > 应该返回一个包含所有这些单词的字符串值的数组。 为了验证此数据结构是否正确实现，我们为树中的每个节点提供了一个 `Node` 结构。 每个节点都是一个带有 `keys` 属性的对象，它是一个 JavaScript Map 对象。 这将保存作为每个节点的有效键的单个字母。 我们还在节点上创建了一个 < code > end </code > 属性，如果节点表示一个单词的终止，那么可以将该属性设置为 < code > true </code > 。

# --hints--

< code > Trie </code > 应该有一个 < code > add </code > 方法。

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

< code > Trie </code > 应该有一个 < code > print </code > 方法。

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

< code > Trie </code > 应该有一个 < code > add </code > 方法。

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

< code > print </code > 方法应该返回以字符串形式添加到 trie 中的所有项。

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

`has` 方法，对于已经添加的项目应该返回 `true`, 缺失的项目返回`false` 。

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
