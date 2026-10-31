---
id: 6ad9de339abadcbe48e5ef62
title: 第 6 步
challengeType: 20
dashedName: step-6
---

# --description--

在 `_insert` 方法的末尾，返回 `node`。

这样，每次调用都会返回它接收到的子树，以便调用者可以将其重新赋值给 `node.left` 或 `node.right`，一直传递到根节点。

# --hints--

你的 `_insert` 方法应该在末尾返回 `node`。

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").find_function("_insert")[-1].is_equivalent("return node")
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
        if key < node.key:
            node.left = self._insert(node.left, key)
        elif key > node.key:
            node.right = self._insert(node.right, key)
--fcc-editable-region--
        
--fcc-editable-region--
```
