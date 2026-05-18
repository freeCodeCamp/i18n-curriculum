---
id: 65c4f3aee69d11dcfdbcfc00
title: Hatua 18
challengeType: 20
dashedName: step-18
---

# --description--

Sasa, ndani ya njia ya `insert`, unahitaji kuita njia ya msaada `_insert()` ambayo tuliitekeleza awali.  
Hapa, `_insert` imejifunga utekelezaji wa mantiki ya kuingiza. Hii ni muhimu kwa ajili ya kurudia na kwa kuweka maelezo ya utekelezaji yakiwa yamefichwa kutoka kwa mtumizi.

Futa `pass` na weka thamani ya `self._insert(self.root, key)` kwa `self.root`.

Kumbuka kwamba:

- `self.root` hupitisha nodi mzizi wa mti kama hoja ya kwanza. Hii ni mwanzo wa mchakato wa kuingiza.
- `key`: hupitisha thamani ya `key` unayotaka kuingiza kama hoja ya pili.

# --hints--

Unapaswa kuondoa neno la `pass` kutoka kwenye njia ya `insert`.

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

Unapaswa kuita njia ya `_insert()` kwa kurudia ukitumia `self._insert()`

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

Unapaswa kupitisha `self.root` na `key` kwenye wito wako wa `_insert()`.

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

Unapaswa kuweka thamani ya return ya wito wako wa `_insert()` kwa `self.root`.

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
