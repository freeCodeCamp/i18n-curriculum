---
id: 65c4f3aee69d11dcfdbcfc00
title: ステップ 18
challengeType: 20
dashedName: step-18
---

# --description--

今、`insert` メソッドの中で、先に定義したヘルパーメソッド `_insert()` を呼び出す必要があります。  
ここで、`_insert` は挿入ロジックの実装をカプセル化しています。これは再帰処理に便利で、実装の詳細をユーザーから隠す役割も果たします。

`pass` を削除し、`self._insert(self.root, key)` を `self.root` に代入してください。

注意点：

- `self.root` はツリーのルートノードを最初の引数として渡します。これは挿入処理の開始点です。
- `key` は挿入したい `key` の値を2番目の引数として渡します。

# --hints--

`pass` メソッドから `insert` キーワードを削除してください。

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

`_insert()` メソッドを `self._insert()` を使って再帰的に呼び出してください。

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

`self.root` の呼び出しに `key` と `_insert()` を渡してください。

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

`_insert()` の呼び出しの戻り値を `self.root` に代入してください。

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
