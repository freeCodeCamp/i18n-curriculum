---
id: 6ad9de339abadcbe48e5ef62
title: Passo 6
challengeType: 20
dashedName: step-6
---

# --description--

No final do método `_insert`, retorne `node`.

Dessa forma, cada chamada retorna a subárvore que recebeu, para que quem chamou possa atribuí-la de volta a `node.left` ou `node.right`, até chegar à raiz.

# --hints--

Seu método `_insert` deve retornar `node` no final.

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
