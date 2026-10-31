---
id: 6ad9de339abadcbe48e5ef62
title: Schritt 6
challengeType: 20
dashedName: step-6
---

# --description--

Geben Sie am Ende der `_insert`-Methode `node` zurück.

So gibt jeder Aufruf den Teilbaum zurück, den er erhalten hat, damit der Aufrufer ihn wieder `node.left` oder `node.right` zuweisen kann, bis hin zur Wurzel.

# --hints--

Ihre `_insert`-Methode sollte am Ende `node` zurückgeben.

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
