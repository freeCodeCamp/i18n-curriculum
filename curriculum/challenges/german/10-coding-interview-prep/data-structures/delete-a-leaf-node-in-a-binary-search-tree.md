---
id: 587d8258367417b2b2512c80
title: Lösche einen Blattknoten in einem binären Suchbaum
challengeType: 1
forumTopicId: 301637
dashedName: delete-a-leaf-node-in-a-binary-search-tree
---

# --description--

This is the first of three challenges where we will implement a more difficult operation in binary search trees: deletion. Deletion is difficult because removing nodes breaks links in the tree. These links must be carefully reestablished to ensure the binary tree structure is maintained. For some deletions, this means the tree must be rearranged. In general, you will encounter one of three cases when trying to delete a node: Leaf Node: The target to delete has zero children. One Child: The target to delete only has one child. Two Children: The target to delete has two child nodes. Removing a leaf node is easy, we simply remove it. Deleting a node with one child is also relatively easy, we simply remove it and link its parent to child of the node we deleted. Removing a node with two children is more difficult, however, because this creates two child nodes that need to be reconnected to the parent tree. We'll see how to deal with this case in the third challenge. Additionally, you need to be mindful of some edge cases when handling deletion. What if the tree is empty? What if the node to delete is the root node? What if there are only two elements in the tree? For now, let's handle the first case where we delete a leaf node.

# --instructions--

Erstelle eine Methode in unserem Binärbaum mit dem Namen `remove`. Hier bauen wir die Logik für unseren Löschvorgang auf. Zuerst musst du eine Funktion innerhalb von remove erstellen, die den zu löschenden Knoten im aktuellen Baum findet. Wenn der Knoten nicht im Baum vorhanden ist, sollte `remove` `null` zurückgeben. Wenn der Zielknoten ein Blattknoten ohne Kinder ist, dann sollte der übergeordnete Verweis auf ihn auf `null` gesetzt werden. Dadurch wird der Knoten aus dem Baum gelöscht. Dazu musst du auch den übergeordneten Knoten des Knotens im Auge behalten, den wir zu löschen versuchen. Er wird auch nützlich sein, um eine Möglichkeit zu schaffen, die Anzahl der Kinder des Zielknotens zu verfolgen, da dies bestimmen wird, unter welchen Fall unsere Löschung fällt. Den zweiten und dritten Fall werden wir in den nächsten Herausforderungen behandeln. Viel Glück!

# --hints--

Die Datenstruktur `BinarySearchTree` sollte vorhanden sein.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    }
    return typeof test == 'object';
  })()
);
```

Der binäre Suchbaum sollte eine Methode namens `remove` haben.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    return typeof test.remove == 'function';
  })()
);
```

Der Versuch, ein Element aus einem leeren Baum zu entfernen, sollte `null` zurückgeben.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    if (typeof test.remove !== 'function') {
      return false;
    }
    return test.remove(100) == null;
  })()
);
```

Der Versuch, ein Element zu entfernen, das nicht existiert, sollte `null` zurückgeben.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    if (typeof test.remove !== 'function') {
      return false;
    }
    test.add(15);
    test.add(30);
    return test.remove(100) == null;
  })()
);
```

Er sollte auf `null` gesetzt werden, wenn der Wurzelknoten keine Kinder hat.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    if (typeof test.remove !== 'function') {
      return false;
    }
    test.add(500);
    test.remove(500);
    return test.inorder() == null;
  })()
);
```

Die Methode `remove` soll Blattknoten aus dem Baum entfernen.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    if (typeof test.remove !== 'function') {
      return false;
    }
    test.add(5);
    test.add(3);
    test.add(7);
    test.add(6);
    test.add(10);
    test.add(12);
    test.remove(3);
    test.remove(12);
    test.remove(10);
    return test.inorder().join('') == '567';
  })()
);
```

# --seed--

## --after-user-code--

```js
BinarySearchTree.prototype = Object.assign(
  BinarySearchTree.prototype,
  {
    add: function(value) {
      var node = this.root;
      if (node == null) {
        this.root = new Node(value);
        return;
      } else {
        function searchTree(node) {
          if (value < node.value) {
            if (node.left == null) {
              node.left = new Node(value);
              return;
            } else if (node.left != null) {
              return searchTree(node.left);
            }
          } else if (value > node.value) {
            if (node.right == null) {
              node.right = new Node(value);
              return;
            } else if (node.right != null) {
              return searchTree(node.right);
            }
          } else {
            return null;
          }
        }
        return searchTree(node);
      }
    },
    inorder: function() {
      if (this.root == null) {
        return null;
      } else {
        var result = new Array();
        function traverseInOrder(node) {
          if (node.left != null) {
            traverseInOrder(node.left);
          }
          result.push(node.value);
          if (node.right != null) {
            traverseInOrder(node.right);
          }
        }
        traverseInOrder(this.root);
        return result;
      }
    }
  }
);
```

## --seed-contents--

```js
var displayTree = tree => console.log(JSON.stringify(tree, null, 2));
function Node(value) {
  this.value = value;
  this.left = null;
  this.right = null;
}

function BinarySearchTree() {
  this.root = null;
  // Only change code below this line
}
```

# --solutions--

```js
// solution required
```
