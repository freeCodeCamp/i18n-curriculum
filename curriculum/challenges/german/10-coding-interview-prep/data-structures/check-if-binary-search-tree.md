---
id: 5cc0c1b32479e176caf3b422
title: Überprüfe ob ein binärer Suchbaum vorliegt
challengeType: 1
forumTopicId: 301624
dashedName: check-if-tree-is-binary-search-tree
---

# --description--

Since you already know what a binary search tree is, this challenge will establish how it is you can tell that a tree is a binary search tree or not.

Das wichtigste Merkmal eines binären Suchbaumes ist es, dass die Knoten sortiert im Baum liegen. Knoten dürfen maximal 2 Kindknoten (links und rechts des Knotens) haben, abhängig davon, ob der Wert des Kindknotens größer oder gleich dem des Elternknotens (rechts) bzw. kleiner dem des Elternknotens (links) ist.

# --instructions--

In dieser Aufgabe wirst du eine Hilfsprogramm für deinen Baum schreiben. Schreib eine JavaScript Methode `isBinarySearchTree`, welche einen Baum als Input nimmt und einen bool'schen Wert zurückgibt, der angibt, ob ein binärer Suchbaum vorliegt oder nicht. Verwende Rekursion wann immer es möglich ist.

# --hints--

Dein binärer Suchbaum sollte true zurückgeben, wenn er mit `isBinarySearchTree()` überprüft wird.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    test.push(1);
    test.push(5);
    test.push(3);
    test.push(2);
    test.push(4);
    return isBinarySearchTree(test) == true;
  })()
);
```

`isBinarySearchTree()` sollte falsch zurückgeben, wenn einer einen Baum als Eingabe erhält, welcher kein binärer Suchbaum ist.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    test.push(1);
    test.root.left = new Node(1);
    return isBinarySearchTree(test) == false;
  })()
);
```

# --seed--

## --after-user-code--

```js
BinarySearchTree.prototype.push = function(val) {
  var root = this.root;

  if (!root) {
    this.root = new Node(val);
    return;
  }

  var currentNode = root;
  var newNode = new Node(val);

  while (currentNode) {
    if (val < currentNode.value) {
      if (!currentNode.left) {
        currentNode.left = newNode;
        break;
      } else {
        currentNode = currentNode.left;
      }
    } else {
      if (!currentNode.right) {
        currentNode.right = newNode;
        break;
      } else {
        currentNode = currentNode.right;
      }
    }
  }
};
```

## --seed-contents--

```js
var displayTree = (tree) => console.log(JSON.stringify(tree, null, 2));
function Node(value) {
  this.value = value;
  this.left = null;
  this.right = null;
}
function BinarySearchTree() {
  this.root = null;
}
function isBinarySearchTree(tree) {
  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
var displayTree = (tree) => console.log(JSON.stringify(tree, null, 2));
function Node(value) {
  this.value = value;
  this.left = null;
  this.right = null;
}
function BinarySearchTree() {
  this.root = null;
}
function isBinarySearchTree(tree) {
  if (tree.root == null) {
    return null;
  } else {
    let isBST = true;
    function checkTree(node) {
      if (node.left != null) {
        const left = node.left;
        if (left.value >= node.value) {
          isBST = false;
        } else {
          checkTree(left);
        }
      }
      if (node.right != null) {
        const right = node.right;
        if (right.value < node.value) {
          isBST = false;
        } else {
          checkTree(right);
        }
      }
    }
    checkTree(tree.root);
    return isBST;
  }
};
```
