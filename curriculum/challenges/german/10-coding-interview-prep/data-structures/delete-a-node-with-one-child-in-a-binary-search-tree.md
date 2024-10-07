---
id: 587d8258367417b2b2512c81
title: Löschen eines Knotens mit einem Kind in einem binären Suchbaum
challengeType: 1
forumTopicId: 301638
dashedName: delete-a-node-with-one-child-in-a-binary-search-tree
---

# --description--

Now that we can delete leaf nodes let's move on to the second case: deleting a node with one child. For this case, say we have a tree with the following nodes 1 — 2 — 3 where 1 is the root. To delete 2, we simply need to make the right reference in 1 point to 3. More generally to delete a node with only one child, we make that node's parent reference the next node in the tree.

# --instructions--

Wir haben in unserer `remove`-Methode etwas Code bereitgestellt, der die Aufgaben aus der letzten Herausforderung erfüllt. Wir suchen das zu löschende Ziel und seinen übergeordneten Knoten und bestimmen die Anzahl der Kinder, die der Zielknoten hat. Fügen wir hier den nächsten Fall für Zielknoten mit nur einem Kind hinzu. Hier müssen wir feststellen, ob das einzelne Kind ein linker oder rechter Zweig im Baum ist, und dann den richtigen Verweis im übergeordneten Knoten auf diesen Knoten setzen. Außerdem müssen wir den Fall berücksichtigen, dass das Ziel der Wurzelknoten ist (das bedeutet, dass der übergeordnete Knoten `null` ist). Es steht dir frei, den gesamten Startcode durch deinen eigenen zu ersetzen, solange er die Tests besteht.

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

Die Methode `remove` sollte Knoten mit einem Kind entfernen.

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
    test.add(1);
    test.add(4);
    test.add(3);
    test.add(2);
    test.add(6);
    test.add(8);
    test.remove(6);
    test.remove(3);
    return test.inorder().join('') == '1248';
  })()
);
```

Das Entfernen der Wurzel in einem Baum mit zwei Knoten sollte den zweiten als Wurzel festlegen.

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
    test.add(27);
    test.remove(15);
    return test.inorder().join('') == '27';
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
  this.remove = function(value) {
    if (this.root === null) {
      return null;
    }
    var target;
    var parent = null;
    // Find the target value and its parent
    (function findValue(node = this.root) {
      if (value == node.value) {
        target = node;
      } else if (value < node.value && node.left !== null) {
        parent = node;
        return findValue(node.left);
      } else if (value < node.value && node.left === null) {
        return null;
      } else if (value > node.value && node.right !== null) {
        parent = node;
        return findValue(node.right);
      } else {
        return null;
      }
    }.bind(this)());
    if (target === null) {
      return null;
    }
    // Count the children of the target to delete
    var children =
      (target.left !== null ? 1 : 0) + (target.right !== null ? 1 : 0);
    // Case 1: Target has no children
    if (children === 0) {
      if (target == this.root) {
        this.root = null;
      } else {
        if (parent.left == target) {
          parent.left = null;
        } else {
          parent.right = null;
        }
      }
    }
    // Case 2: Target has one child
    // Only change code below this line
  };
}
```

# --solutions--

```js
// solution required
```
