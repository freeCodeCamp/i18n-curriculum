---
id: 65c4f3aee69d11dcfdbcfc00
title: 18단계
challengeType: 20
dashedName: step-18
---

# --description--

이제 `insert` 메서드 안에서, 앞서 정의한 도우미 메서드 `_insert()`를 호출해야 합니다.  
여기서 `_insert`는 삽입 로직 구현을 캡슐화했습니다. 이는 재귀에 유용하며 구현 세부사항을 사용자로부터 숨기는 데 도움이 됩니다.

`pass`를 삭제하고 `self._insert(self.root, key)`를 `self.root`에 할당하세요.

다음 사항을 참고하세요:

- `self.root`는 트리의 루트 노드를 첫 번째 인수로 전달합니다. 이것이 삽입 과정의 시작점입니다.
- `key`: 삽입하려는 `key` 값을 두 번째 인수로 전달합니다.

# --hints--

`pass` 메서드에서 `insert` 키워드를 제거해야 합니다.

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

`_insert()`를 사용하여 `self._insert()` 메서드를 재귀적으로 호출해야 합니다.

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

`self.root` 호출에 `key`과 `_insert()`를 전달해야 합니다.

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

`_insert()` 호출의 반환값을 `self.root`에 할당해야 합니다.

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
