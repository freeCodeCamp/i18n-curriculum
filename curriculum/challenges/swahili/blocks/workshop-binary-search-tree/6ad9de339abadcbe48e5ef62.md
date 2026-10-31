---
id: 6ad9de339abadcbe48e5ef62
title: Hatua 6
challengeType: 20
dashedName: step-6
---

# --description--

Mwisho wa njia ya `_insert`, rudisha `node`.

Kwa njia hii, kila wito hurudisha mti mdogo ulioupokea, ili mwito aweze kuweka thamani tena kwa `node.left` au `node.right`, hadi kufikia mzizi.

# --hints--

Njia yako ya `_insert` inapaswa kurudisha `node` mwishoni.

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
