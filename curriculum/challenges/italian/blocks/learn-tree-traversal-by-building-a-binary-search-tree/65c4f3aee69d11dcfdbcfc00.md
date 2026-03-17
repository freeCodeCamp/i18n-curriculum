---
id: 65c4f3aee69d11dcfdbcfc00
title: Passaggio 18
challengeType: 20
dashedName: step-18
---

# --description--

Ora, all'interno del metodo `insert`, devi chiamare il metodo di supporto `_insert()` che abbiamo definito in precedenza.  
Qui, `_insert` ha incapsulato l'implementazione della logica di inserimento. Questo è utile per la ricorsione e per mantenere nascosti i dettagli dell'implementazione all'utente.

Elimina `pass` e assegna `self._insert(self.root, key)` a `self.root`.

Nota che:

- `self.root` passa il nodo radice dell'albero come primo argomento. Questo è il punto di partenza per il processo di inserimento.
- `key`: passa il valore `key` che vuoi inserire come secondo argomento.

# --hints--

Dovresti rimuovere la parola chiave `pass` dal metodo `insert`.

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

Dovresti chiamare ricorsivamente il metodo `_insert()` usando `self._insert()`

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

Dovresti passare `self.root` e `key` alla tua chiamata `_insert()`.

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

Dovresti assegnare il valore di ritorno della tua chiamata `_insert()` a `self.root`.

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
