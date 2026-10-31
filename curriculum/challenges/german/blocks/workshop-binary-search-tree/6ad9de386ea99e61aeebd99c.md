---
id: 6ad9de386ea99e61aeebd99c
title: Schritt 11
challengeType: 20
dashedName: step-11
---

# --description--

Wenn `node` `None` ist, gibt es nichts zu besuchen, daher sollte die Methode die Rekursion stoppen.

Erstellen Sie eine `if`-Anweisung, die überprüft, ob `node` wahr ist. Rufen Sie innerhalb der `if`-Anweisung `self._inorder_traversal` mit `node.left` und `result` als Argumente auf. So wird zuerst der gesamte linke Teilbaum besucht.

# --hints--

Sie sollten eine `if`-Anweisung haben, die überprüft, ob `node` wahr ist.

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

Innerhalb Ihrer `if`-Anweisung sollten Sie `self._inorder_traversal(node.left, result)` aufrufen.

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
