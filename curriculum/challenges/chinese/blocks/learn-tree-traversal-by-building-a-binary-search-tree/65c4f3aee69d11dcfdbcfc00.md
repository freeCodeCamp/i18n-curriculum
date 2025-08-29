---
id: 65c4f3aee69d11dcfdbcfc00
title: 步骤18
challengeType: 20
dashedName: step-18
---

# --description--

现在，在 `insert` 方法内部，你需要调用我们之前定义的辅助方法 `_insert()`。 这里，`_insert` 已经封装了插入逻辑的实现。 这对于递归和向用户隐藏实现细节很有用。

删除 `pass` 并将 `self._insert(self.root, key)` 分配给 `self.root`。

Note that:

- `self.root` 将树的根节点作为第一个参数传递。 这是插入过程的起点。
- `key`：传递你想要插入的 `key` 值作为第二个参数。

# --hints--

你应该从 `insert` 方法中删除 `pass` 关键字。

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

你应该使用 `self._insert()` 递归调用 `_insert()` 方法

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

你应该将 `self.root` 和 `key` 传递给你的 `_insert()` 调用。

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

你应该将 `_insert()` 调用的返回值分配给 `self.root`。

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
