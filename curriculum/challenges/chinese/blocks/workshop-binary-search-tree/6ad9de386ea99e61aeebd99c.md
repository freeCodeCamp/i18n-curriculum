---
id: 6ad9de386ea99e61aeebd99c
title: 第 11 步
challengeType: 20
dashedName: step-11
---

# --description--

当 `node` 是 `None` 时，没有节点可访问，因此该方法应停止递归。

创建一个 `if` 语句来检查 `node` 是否为真。在该 `if` 语句内，调用 `self._inorder_traversal`，并将 `node.left` 和 `result` 作为参数传入。这会先访问整个左子树。

# --hints--

你应该有一个 `if` 语句来检查 `node` 是否为真。

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

在你的 `if` 语句内，你应该调用 `self._inorder_traversal(node.left, result)`。

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
