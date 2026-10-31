---
id: 6ad9de339abadcbe48e5ef62
title: الخطوة 6
challengeType: 20
dashedName: step-6
---

# --description--

في نهاية طريقة `_insert`، أرجع `node`.

بهذه الطريقة، كل استدعاء يرجع الشجرة الفرعية التي استلمها، حتى يتمكن المستدعي من تعيينها مرة أخرى إلى `node.left` أو `node.right`، وصولًا إلى الجذر.

# --hints--

يجب أن تُرجع طريقة `_insert` الخاصة بك `node` في النهاية.

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
