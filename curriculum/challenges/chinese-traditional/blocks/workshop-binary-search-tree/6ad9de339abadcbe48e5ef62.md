---
id: 6ad9de339abadcbe48e5ef62
title: 第 6 步
challengeType: 20
dashedName: step-6
---

# --description--

在 `_insert` 方法的結尾，傳回 `node`。

這樣，每次呼叫都會傳回它收到的子樹，讓呼叫者可以將它指定回 `node.left` 或 `node.right`，一直到根節點為止。

# --hints--

你的 `_insert` 方法應該在結尾傳回 `node`。

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
