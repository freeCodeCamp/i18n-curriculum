---
id: 6ad9de386ea99e61aeebd99c
title: 11단계
challengeType: 20
dashedName: step-11
---

# --description--

`node`가 `None`일 때 방문할 것이 없으므로 메서드는 재귀를 멈춰야 합니다.

`node`가 참인지 확인하는 `if` 문을 만드세요. `if` 문 안에서 `node.left`와 `result`를 인수로 하여 `self._inorder_traversal`을 호출하세요. 이렇게 하면 다른 어떤 것보다 먼저 왼쪽 부분 트리를 모두 방문합니다.

# --hints--

`node`가 참인지 확인하는 `if` 문이 있어야 합니다.

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

`if` 문 안에서 `self._inorder_traversal(node.left, result)`를 호출해야 합니다.

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
