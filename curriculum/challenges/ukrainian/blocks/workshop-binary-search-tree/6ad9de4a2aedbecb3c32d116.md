---
id: 6ad9de4a2aedbecb3c32d116
title: Крок 29
challengeType: 20
dashedName: step-29
---

# --description--

Час видалити значення. Наприкінці свого коду викличте `bst.delete`, щоб видалити `50`, яке є коренем і має двох дочірніх елементів.

Потім викличте `print` із рядком `'Search for 50:'` та `bst.search(50)` як аргументами. Нарешті, викличте `print` із рядком `'Inorder traversal after deleting 50:'` та `bst.inorder_traversal()`.

`60`, інордний наступник `50`, займає його місце, і обхід залишається відсортованим.

Отже, ваше двійкове дерево пошуку завершене!

# --hints--

Ви повинні викликати `bst.delete(50)`.

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).has_stmt("bst.delete(50)")
  `)
})
```

Ви повинні викликати `print('Search for 50:', bst.search(50))`.

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).has_stmt("print('Search for 50:', bst.search(50))")
  `)
})
```

Ви повинні викликати `print('Inorder traversal after deleting 50:', bst.inorder_traversal())`.

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
