---
id: 65c4f3aee69d11dcfdbcfc00
title: الخطوة 18
challengeType: 20
dashedName: step-18
---

# --description--

الآن، داخل طريقة `insert`، تحتاج إلى استدعاء طريقة المساعدة `_insert()` التي عرّفناها سابقًا.
هنا، قامت `_insert` بتغليف تنفيذ منطق الإدخال. هذا مفيد للتكرار ولإخفاء تفاصيل التنفيذ عن المستخدم.

احذف `pass` وقم بتعيين `self._insert(self.root, key)` إلى `self.root`.

لاحظ أن:

- `self.root` يمرر عقدة الجذر للشجرة كأول معلمة. هذه هي نقطة البداية لعملية الإدخال.
- `key`: يمرر قيمة `key` التي تريد إدخالها كمعلمة ثانية.

# --hints--

يجب إزالة الكلمة المفتاحية `pass` من طريقة `insert`.

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

يجب استدعاء طريقة `_insert()` بشكل متكرر باستخدام `self._insert()`

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

يجب تمرير `self.root` و `key` إلى استدعاء `_insert()` الخاص بك.

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

يجب تعيين قيمة الإرجاع لاستدعاء `_insert()` الخاص بك إلى `self.root`.

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
