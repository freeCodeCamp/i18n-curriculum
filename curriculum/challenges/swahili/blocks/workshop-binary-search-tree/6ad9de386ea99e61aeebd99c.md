---
id: 6ad9de386ea99e61aeebd99c
title: Hatua 11
challengeType: 20
dashedName: step-11
---

# --description--

Wakati `node` ni `None`, hakuna cha kutembelea, kwa hivyo njia inapaswa kuacha kurudia tena.

Tengeneza tamko la `if` linalokagua kama `node` ni kweli. Ndani ya tamko la `if`, fanya wito kwa `self._inorder_traversal` ukiwa na hoja `node.left` na `result`. Hii inatembelea mti mdogo wa kushoto wote kabla ya kitu kingine chochote.

# --hints--

Unapaswa kuwa na tamko la `if` linalokagua kama `node` ni kweli.

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

Ndani ya tamko lako la `if`, unapaswa kufanya wito kwa `self._inorder_traversal(node.left, result)`.

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
