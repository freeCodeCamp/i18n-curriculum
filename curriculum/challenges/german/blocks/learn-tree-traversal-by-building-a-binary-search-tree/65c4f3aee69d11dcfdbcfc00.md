---
id: 65c4f3aee69d11dcfdbcfc00
title: Schritt 18
challengeType: 20
dashedName: step-18
---

# --description--

Jetzt müssen Sie innerhalb der `insert`-Methode die Hilfsmethode `_insert()` aufrufen, die wir zuvor definiert haben.  
Hier hat `_insert` die Implementierung der Einfügelogik gekapselt. Das ist nützlich für Rekursion und dafür, die Implementierungsdetails vor dem Benutzer zu verbergen.

Löschen Sie `pass` und weisen Sie `self._insert(self.root, key)` `self.root` zu.

Beachten Sie, dass:

- `self.root` den Wurzelknoten des Baums als erstes Argument übergibt. Dies ist der Startpunkt für den Einfügeprozess.
- `key`: übergibt den `key`-Wert, den Sie einfügen möchten, als zweites Argument.

# --hints--

Sie sollten das Schlüsselwort `pass` aus der `insert`-Methode entfernen.

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

Sie sollten die `_insert()`-Methode rekursiv mit `self._insert()` aufrufen.

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

Sie sollten `self.root` und `key` an Ihren `_insert()`-Aufruf übergeben.

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

Sie sollten den Rückgabewert Ihres `_insert()`-Aufrufs `self.root` zuweisen.

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
