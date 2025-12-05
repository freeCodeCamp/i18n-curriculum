---
id: 65c4f3aee69d11dcfdbcfc00
title: Paso 18
challengeType: 20
dashedName: step-18
---

# --description--

Ahora, dentro del método `insert`, necesitas llamar al método auxiliar `_insert()` que definimos anteriormente.  
Aquí, `_insert` ha encapsulado la implementación de la lógica de inserción. Esto es útil para la recursión y para mantener los detalles de la implementación ocultos para el usuario.

Elimina `pass` y asigna `self._insert(self.root, key)` a `self.root`.

Ten en cuenta que:

- `self.root` pasa el nodo raíz del árbol como el primer argumento. Este es el punto de partida para el proceso de inserción.
- `key`: pasa el valor de `key` que quieres insertar como el segundo argumento.

# --hints--

Debes eliminar la palabra clave `pass` del método `insert`.

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

Debes llamar recursivamente al método `_insert()` usando `self._insert()`

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

Debes pasar `self.root` y `key` a tu llamada a `_insert()`.

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

Debes asignar el valor de retorno de tu llamada a `_insert()` a `self.root`.

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
