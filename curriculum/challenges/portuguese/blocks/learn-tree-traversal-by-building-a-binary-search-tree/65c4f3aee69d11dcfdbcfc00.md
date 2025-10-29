---
id: 65c4f3aee69d11dcfdbcfc00
title: Passo 18
challengeType: 20
dashedName: step-18
---

# --description--

Agora, dentro do método `insert`, você precisa chamar o método auxiliar `_insert()` que definimos anteriormente.Aqui, `_insert` encapsulou a implementação da lógica de inserção.Isto é útil para recursão e para manter os detalhes da implementação ocultos do usuário.

Delete `pass` e atribua `self._insert(self.root, key)` a `self.root`.

Observe que:

- `self.root` passa o nó raiz da árvore como o primeiro argumento. Este é o ponto de partida para o processo de inserção.
- `key`: passa o valor `key` que você deseja inserir como o segundo argumento.

# --hints--

Você deve remover a palavra-chave `pass` do método `insert`.

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

Você deve chamar recursivamente o método `_insert()` usando `self._insert()`

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

Você deve passar `self.root` e `key` para sua chamada de `_insert()`.

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

Você deve atribuir o valor de retorno da sua chamada `_insert()` para `self.root`.

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
