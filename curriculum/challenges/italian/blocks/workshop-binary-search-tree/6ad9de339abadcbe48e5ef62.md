---
id: 6ad9de339abadcbe48e5ef62
title: Passaggio 6
challengeType: 20
dashedName: step-6
---

# --description--

Alla fine del metodo `_insert`, restituisci `node`.

In questo modo, ogni chiamata restituisce il sottoalbero che ha ricevuto, così chi chiama può assegnarlo di nuovo a `node.left` o `node.right`, fino alla radice.

# --hints--

Il tuo metodo `_insert` dovrebbe restituire `node` alla fine.

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
