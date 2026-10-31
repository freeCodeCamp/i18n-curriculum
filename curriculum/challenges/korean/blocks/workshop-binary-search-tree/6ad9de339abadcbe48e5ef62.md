---
id: 6ad9de339abadcbe48e5ef62
title: 6단계
challengeType: 20
dashedName: step-6
---

# --description--

`_insert` 메서드의 끝에서 `node`를 반환하세요.

이렇게 하면 각 호출이 받은 부분 트리를 반환해서 호출자가 `node.left`나 `node.right`에 다시 할당할 수 있으며, 이 과정이 루트까지 이어집니다.

# --hints--

`_insert` 메서드는 끝에서 `node`를 반환해야 합니다.

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
