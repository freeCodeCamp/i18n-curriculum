---
id: 6ad9de3f70eefadf878d68a0
title: 18단계
challengeType: 20
dashedName: step-18
---

# --description--

`BinarySearchTree` 클래스 안에 `self`와 `key`라는 두 매개변수를 가진 `search` 메서드를 만드세요. 그 안에서 `self.root`와 `key`를 사용해 `self._search`를 호출한 결과를 반환하세요.

# --hints--

`BinarySearchTree` 클래스 안에 `search` 메서드를 만드세요.

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").has_function("search")
  `)
})
```

`search` 메서드는 `self`와 `key`라는 두 매개변수를 가져야 합니다.

```js
({
  test: () =>
    runPython(`
    assert _Node(_code).find_class("BinarySearchTree").find_function("search").has_args("self, key")
  `)
})
```

`search` 메서드는 `self._search(self.root, key)`를 반환해야 합니다.

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
