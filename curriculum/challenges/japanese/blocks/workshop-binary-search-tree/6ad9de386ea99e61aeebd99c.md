---
id: 6ad9de386ea99e61aeebd99c
title: ステップ11
challengeType: 20
dashedName: step-11
---

# --description--

`node` が `None` の場合、訪問するものがないので、メソッドは再帰を停止する必要があります。

`node` が真であるかをチェックする `if` 文を作成してください。`if` 文の中で、`node.left` と `result` を引数にして `self._inorder_traversal` を呼び出してください。これにより、他の処理の前に左のサブツリー全体が訪問されます。

# --hints--

`node` が真であるかをチェックする `if` 文を用意してください。

```js
({
  test: () =>
    runPython(`
    node_if = _Node(_code).find_class("BinarySearchTree").find_function("_inorder_traversal").find_ifs()[0]
    conditions = ["node", "node is not None", "node != None"]
    assert any(node_if.find_conditions()[0].is_equivalent(condition) for condition in conditions)
  `)
})
```

`if` 文の中で、`self._inorder_traversal(node.left, result)` を呼び出してください。

```js
({
  test: () =>
    runPython(`
    node_if = _Node(_code).find_class("BinarySearchTree").find_function("_inorder_traversal").find_ifs()[0]
    assert node_if.find_bodies()[0].is_equivalent("self._inorder_traversal(node.left, result)")
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
--fcc-editable-region--
        pass
--fcc-editable-region--


bst = BinarySearchTree()
nodes = [50, 30, 20, 40, 70, 60, 80]

for node in nodes:
    bst.insert(node)
```
