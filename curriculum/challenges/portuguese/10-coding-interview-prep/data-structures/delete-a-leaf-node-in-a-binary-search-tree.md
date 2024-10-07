---
id: 587d8258367417b2b2512c80
title: Excluir um nó de folha em uma árvore binária de busca
challengeType: 1
forumTopicId: 301637
dashedName: delete-a-leaf-node-in-a-binary-search-tree
---

# --description--

This is the first of three challenges where we will implement a more difficult operation in binary search trees: deletion. Deletion is difficult because removing nodes breaks links in the tree. These links must be carefully reestablished to ensure the binary tree structure is maintained. For some deletions, this means the tree must be rearranged. In general, you will encounter one of three cases when trying to delete a node: Leaf Node: The target to delete has zero children. One Child: The target to delete only has one child. Two Children: The target to delete has two child nodes. Removing a leaf node is easy, we simply remove it. Deleting a node with one child is also relatively easy, we simply remove it and link its parent to child of the node we deleted. Removing a node with two children is more difficult, however, because this creates two child nodes that need to be reconnected to the parent tree. We'll see how to deal with this case in the third challenge. Additionally, you need to be mindful of some edge cases when handling deletion. What if the tree is empty? What if the node to delete is the root node? What if there are only two elements in the tree? For now, let's handle the first case where we delete a leaf node.

# --instructions--

Crie um método em nossa árvore binária chamado `remove`. Vamos construir a lógica para nossa operação de exclusão aqui. Primeiro, você vai querer criar uma função dentro de remove que encontre o nó que estamos tentando excluir na árvore atual. Se o nó não estiver presente na árvore, `remove` deve retornar `null`. Agora, se o nó de destino for um nó de folha sem filhos, então a referência pai deve ser definida como `null`. Isto efetivamente exclui o nó da árvore. Para fazer isso, você terá que acompanhar o pai do nó que estamos tentando excluir também. Também será útil criar uma maneira de rastrear o número de filhos que o nó alvo tem, pois isso determinará qual o caso da nossa exclusão. Trataremos do segundo e do terceiro caso nos próximos desafios. Boa sorte!

# --hints--

A estrutura de dados `BinarySearchTree` deve existir.

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

A árvore binária de busca deve ter um método chamado `remove`.

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

Tentar remover um elemento de uma árvore vazia deve retornar `null`.

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

Tentar remover um elemento que não existe deve retornar `null`.

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

Se o nó raiz não tem filhos, a exclusão deve definir a raiz como `null`.

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

O método `remove` deve remover os nós de folha da árvore.

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
