---
id: 6ad9de339abadcbe48e5ef62
title: ステップ 6
challengeType: 20
dashedName: step-6
---

# --description--

`_insert` メソッドの最後に、`node` を返してください。

こうすることで、各呼び出しは受け取ったサブツリーを返すため、呼び出し元はそれを `node.left` または `node.right` に代入して、ルートまで戻していけます。

# --hints--

`_insert` メソッドは最後に `node` を返す必要があります。

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
