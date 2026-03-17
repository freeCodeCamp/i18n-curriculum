---
id: 65c4f3aee69d11dcfdbcfc00
title: Крок 18
challengeType: 20
dashedName: step-18
---

# --description--

Тепер, всередині методу `insert`, потрібно викликати допоміжний метод `_insert()`, який ми визначили раніше.  
Тут `_insert` інкапсулював реалізацію логіки вставки. Це корисно для рекурсії та для приховування деталей реалізації від користувача.

Видаліть `pass` і призначте `self._insert(self.root, key)` до `self.root`.

Зверніть увагу, що:

- `self.root` передає кореневий вузол дерева як перший аргумент. Це початкова точка для процесу вставки.
- `key`: передає значення `key`, яке ви хочете вставити, як другий аргумент.

# --hints--

Ви повинні видалити ключове слово `pass` з методу `insert`.

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

Ви повинні рекурсивно викликати метод `_insert()`, використовуючи `self._insert()`.

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

Ви повинні передати `self.root` і `key` у виклик `_insert()`.

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

Ви повинні призначити повернене значення виклику `_insert()` до `self.root`.

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
