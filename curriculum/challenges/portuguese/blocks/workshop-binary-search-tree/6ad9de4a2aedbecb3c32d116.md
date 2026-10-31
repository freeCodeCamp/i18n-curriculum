---
id: 6ad9de4a2aedbecb3c32d116
title: Passo 29
challengeType: 20
dashedName: step-29
---

# --description--

É hora de excluir um valor. No final do seu código, faça uma chamada a `bst.delete` para excluir o `50`, que é a raiz e tem dois filhos.

Depois, faça uma chamada a `print` com a string `'Search for 50:'` e `bst.search(50)` como argumentos. Por fim, faça uma chamada a `print` com a string `'Inorder traversal after deleting 50:'` e `bst.inorder_traversal()`.

`60`, o sucessor em ordem do `50`, assume seu lugar, e a travessia continua ordenada.

Com isso, sua árvore binária de busca está completa!

# --hints--

Você deve fazer a chamada `bst.delete(50)`.

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).has_stmt("bst.delete(50)")
  `)
})
```

Você deve fazer a chamada `print('Search for 50:', bst.search(50))`.

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).has_stmt("print('Search for 50:', bst.search(50))")
  `)
})
```

Você deve fazer a chamada `print('Inorder traversal after deleting 50:', bst.inorder_traversal())`.

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).has_stmt("print('Inorder traversal after deleting 50:', bst.inorder_traversal())")
  `)
})
```

# --seed--

## --seed-contents--

```py
class TreeNode:
    def __init__(self, key):
        self.key = key
        self.left = None
        self.right = None

    def __str__(self):
        return str(self.key)


class BinarySearchTree:
    def __init__(self):
        self.root = None

    def _insert(self, node, key):
        if node is None:
            return TreeNode(key)
        if key < node.key:
            node.left = self._insert(node.left, key)
        elif key > node.key:
            node.right = self._insert(node.right, key)
        return node

    def insert(self, key):
        self.root = self._insert(self.root, key)

    def _inorder_traversal(self, node, result):
        if node:
            self._inorder_traversal(node.left, result)
            result.append(node.key)
            self._inorder_traversal(node.right, result)

    def inorder_traversal(self):
        result = []
        self._inorder_traversal(self.root, result)
        return result

    def _search(self, node, key):
        if node is None or node.key == key:
            return node
        if key < node.key:
            return self._search(node.left, key)
        return self._search(node.right, key)

    def search(self, key):
        return self._search(self.root, key)

    def _delete(self, node, key):
        if node is None:
            return node
        if key < node.key:
            node.left = self._delete(node.left, key)
        elif key > node.key:
            node.right = self._delete(node.right, key)
        else:
            if node.left is None:
                return node.right
            elif node.right is None:
                return node.left

            node.key = self._min_value(node.right)
            node.right = self._delete(node.right, node.key)
        return node

    def _min_value(self, node):
        while node.left is not None:
            node = node.left
        return node.key

    def delete(self, key):
        self.root = self._delete(self.root, key)


bst = BinarySearchTree()
nodes = [50, 30, 20, 40, 70, 60, 80]

for node in nodes:
    bst.insert(node)

print('Inorder traversal:', bst.inorder_traversal())

print('Search for 80:', bst.search(80))
print('Search for 55:', bst.search(55))

--fcc-editable-region--

--fcc-editable-region--
```

# --solutions--

```py
class TreeNode:
    def __init__(self, key):
        self.key = key
        self.left = None
        self.right = None

    def __str__(self):
        return str(self.key)


class BinarySearchTree:
    def __init__(self):
        self.root = None

    def _insert(self, node, key):
        if node is None:
            return TreeNode(key)
        if key < node.key:
            node.left = self._insert(node.left, key)
        elif key > node.key:
            node.right = self._insert(node.right, key)
        return node

    def insert(self, key):
        self.root = self._insert(self.root, key)

    def _inorder_traversal(self, node, result):
        if node:
            self._inorder_traversal(node.left, result)
            result.append(node.key)
            self._inorder_traversal(node.right, result)

    def inorder_traversal(self):
        result = []
        self._inorder_traversal(self.root, result)
        return result

    def _search(self, node, key):
        if node is None or node.key == key:
            return node
        if key < node.key:
            return self._search(node.left, key)
        return self._search(node.right, key)

    def search(self, key):
        return self._search(self.root, key)

    def _delete(self, node, key):
        if node is None:
            return node
        if key < node.key:
            node.left = self._delete(node.left, key)
        elif key > node.key:
            node.right = self._delete(node.right, key)
        else:
            if node.left is None:
                return node.right
            elif node.right is None:
                return node.left

            node.key = self._min_value(node.right)
            node.right = self._delete(node.right, node.key)
        return node

    def _min_value(self, node):
        while node.left is not None:
            node = node.left
        return node.key

    def delete(self, key):
        self.root = self._delete(self.root, key)


bst = BinarySearchTree()
nodes = [50, 30, 20, 40, 70, 60, 80]

for node in nodes:
    bst.insert(node)

print('Inorder traversal:', bst.inorder_traversal())

print('Search for 80:', bst.search(80))
print('Search for 55:', bst.search(55))

bst.delete(50)

print('Search for 50:', bst.search(50))
print('Inorder traversal after deleting 50:', bst.inorder_traversal())
```
