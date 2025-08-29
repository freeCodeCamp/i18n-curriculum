---
id: 65c4f3aee69d11dcfdbcfc00
title: 步驟18
challengeType: 20
dashedName: step-18
---

# --description--

現在，在 `insert` 方法內部，你需要調用我們之前定義的輔助方法 `_insert()`。 這裏，`_insert` 已經封裝了插入邏輯的實現。 這對於遞歸和向用戶隱藏實現細節很有用。

刪除 `pass` 並將 `self._insert(self.root, key)` 分配給 `self.root`。

Note that:

- `self.root` 將樹的根節點作爲第一個參數傳遞。 這是插入過程的起點。
- `key`：傳遞你想要插入的 `key` 值作爲第二個參數。

# --hints--

你應該從 `insert` 方法中刪除 `pass` 關鍵字。

```js
({
  test: () => {
    assert.isFalse(
      runPython(
        `_Node(_code).find_class("BinarySearchTree").find_function("insert").has_pass()`
      )
    );
  },
});

```

你應該使用 `self._insert()` 遞歸調用 `_insert()` 方法

```js
({ test: () =>
  {
    const transformedCode = code.replace(/\r/g, "");        
    const ins = __helpers.python.getDef("\n"+transformedCode, "insert");
    const {function_body} = ins;    
    assert(function_body.match(/self\._insert\s*\([^(]*\)/));
  }
})
```

你應該將 `self.root` 和 `key` 傳遞給你的 `_insert()` 調用。

```js
({ test: () =>
  {
    const transformedCode = code.replace(/\r/g, "");        
    const ins = __helpers.python.getDef("\n"+transformedCode, "insert");
    const {function_body} = ins;    
    assert(function_body.match(/self\._insert\s*\(\s*self\.root\s*,\s*key\s*\)/));
  }
})
```

你應該將 `_insert()` 調用的返回值分配給 `self.root`。

```js
({ test: () =>
  {
    const transformedCode = code.replace(/\r/g, "");        
    const ins = __helpers.python.getDef("\n"+transformedCode, "insert");
    const {function_body} = ins;    
    assert(function_body.match(/^\s{8}self\.root\s*=\s*self\._insert\s*\(\s*self\.root\s*,\s*key\s*\)/m));
  }
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

--fcc-editable-region--
    def _insert(self, node, key):
        if node is None:
            return TreeNode(key)

        if key < node.key:
            node.left = self._insert(node.left, key)
        elif key > node.key:

            node.right = self._insert(node.right, key)
        return node

    def insert(self, key):
        pass


--fcc-editable-region--
```
