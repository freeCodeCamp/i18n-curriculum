---
id: 6ad9de3f70eefadf878d68a0
title: ステップ 18
challengeType: 20
dashedName: step-18
---

# --description--

`BinarySearchTree`クラスの中に、`self`と`key`という2つのパラメータを持つ`search`メソッドを作成してください。その中で、`self.root`と`key`を使って`self._search`を呼び出した結果を返してください。

# --hints--

`BinarySearchTree`クラスの中に`search`メソッドを作成してください。

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").has_function("search")
  `)
})
```

`search`メソッドは`self`と`key`の2つのパラメータを持つ必要があります。

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").find_function("search").has_args("self, key")
  `)
})
```

`search`メソッドは`self._search(self.root, key)`を返す必要があります。

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").find_function("search").find_body().is_equivalent("return self._search(self.root, key)")
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
        if node:
            self._inorder_traversal(node.left, result)
            result.append(node.key)
            self._inorder_traversal(node.right, result)

    def inorder_traversal(self):
        result = []
        self._inorder_traversal(self.root, result)
        return result

    def _search(self, node, key):
        if node is None or node.key == key:
            return node
        if key < node.key:
            return self._search(node.left, key)
        return self._search(node.right, key)

--fcc-editable-region--
    
--fcc-editable-region--


bst = BinarySearchTree()
nodes = [50, 30, 20, 40, 70, 60, 80]

for node in nodes:
    bst.insert(node)

print('Inorder traversal:', bst.inorder_traversal())
```
