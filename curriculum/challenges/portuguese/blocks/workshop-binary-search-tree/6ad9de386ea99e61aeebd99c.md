---
id: 6ad9de386ea99e61aeebd99c
title: Passo 11
challengeType: 20
dashedName: step-11
---

# --description--

Quando `node` é `None`, não há nada para visitar, então o método deve parar a recursão.

Crie uma declaração `if` que verifique se `node` é verdadeiro. Dentro da declaração `if`, faça a chamada `self._inorder_traversal` com `node.left` e `result` como argumentos. Isso visita a subárvore esquerda inteira antes de qualquer outra coisa.

# --hints--

Você deve ter uma declaração `if` que verifique se `node` é verdadeiro.

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

Dentro da sua declaração `if`, você deve fazer a chamada `self._inorder_traversal(node.left, result)`.

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
