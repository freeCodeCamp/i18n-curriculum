---
id: 6ad9de3f70eefadf878d68a0
title: 第 18 步
challengeType: 20
dashedName: step-18
---

# --description--

在 `BinarySearchTree` 類別中，創建一個帶有兩個參數 `self` 和 `key` 的 `search` 方法。在方法內，傳回呼叫 `self._search` 並帶入 `self.root` 和 `key` 的結果。

# --hints--

你應該在 `BinarySearchTree` 類別中創建一個 `search` 方法。

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").has_function("search")
  `)
})
```

你的 `search` 方法應該有兩個參數，`self` 和 `key`。

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").find_function("search").has_args("self, key")
  `)
})
```

你的 `search` 方法應該傳回 `self._search(self.root, key)`。

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").find_function("search").find_body().is_equivalent("return self._search(self.root, key)")
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

--fcc-editable-region--
    
--fcc-editable-region--


bst = BinarySearchTree()
nodes = [50, 30, 20, 40, 70, 60, 80]

for node in nodes:
    bst.insert(node)

print('Inorder traversal:', bst.inorder_traversal())
```
