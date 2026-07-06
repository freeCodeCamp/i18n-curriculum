---
id: 686fdcfe055bcda9f651dd2e
title: بناء محول من قائمة مجاورة إلى مصفوفة مجاورة
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

في هذا المختبر، ستبني دالة تحول تمثيل قائمة مجاورة للرسم البياني إلى مصفوفة مجاورة. القائمة المجاورة هي قاموس حيث يمثل كل مفتاح عقدة، والقيمة المقابلة هي مصفوفة من العقد التي ترتبط بها عقدة المفتاح. المصفوفة المجاورة هي مصفوفة ثنائية الأبعاد حيث تكون القيمة في الموقع `[i][j]` هي `1` إذا كان هناك حافة من العقدة `i` إلى العقدة `j`، و`0` خلاف ذلك.

على سبيل المثال، بالنظر إلى القائمة المجاورة:

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

تكون المصفوفة المجاورة المقابلة:

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**الهدف:** حقق قصص المستخدم أدناه واجتز جميع الاختبارات لإكمال المختبر.

**قصص المستخدم:**

1. يجب أن تعرف دالة باسم `adjacency_list_to_matrix` لتحويل القائمة المجاورة إلى مصفوفة مجاورة.
2. يجب أن تأخذ الدالة قاموسًا يمثل القائمة المجاورة لرسم بياني غير موزون (موجه أو غير موجه) كمعلمتها.
3. يجب أن تقوم الدالة بـ:
   - تحويل القائمة المجاورة إلى مصفوفة مجاورة.
   - طباعة كل صف في المصفوفة المجاورة.
   - إرجاع المصفوفة المجاورة.

على سبيل المثال، يجب أن تطبع الدالة `adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})`:

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

وترجع `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`.


# --hints--

يجب أن تعرف دالة باسم `adjacency_list_to_matrix`.

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

يجب أن تحتوي الدالة `adjacency_list_to_matrix` على معلمة واحدة.

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

يجب أن تحدد الدالة عدد العقد بشكل صحيح من القائمة المجاورة.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: [0], 2: []}
        result = adjacency_list_to_matrix(adj_list)
        assert len(result) == 3
        assert len(result[0]) == 3
    `) 
})
```

يجب أن تضبط الدالة قيم المصفوفة إلى `1` للحواف الموجودة بشكل صحيح.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: [0]}
        result = adjacency_list_to_matrix(adj_list)
        assert result[0][1] == 1
        assert result[1][0] == 1
        assert result[0][0] == 0
        assert result[1][1] == 0
    `) 
})
```

يجب أن تطبع الدالة كل صف من المصفوفة.

```js
({ 
    test: () => runPython(`
        import io
        import sys
        
        captured_output = io.StringIO()
        sys.stdout = captured_output
        
        adj_list = {0: [1], 1: []}
        adjacency_list_to_matrix(adj_list)
        
        sys.stdout = sys.__stdout__
        output = captured_output.getvalue()
        
        assert "[0, 1]" in output
        assert "[0, 0]" in output
    `) 
})
```

يجب أن ترجع الدالة المصفوفة المجاورة.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

عند إعطاء القائمة المجاورة `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}`، يجب أن ترجع الدالة `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}
        result = adjacency_list_to_matrix(adj_list)
        expected = [[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]
        assert result == expected
    `) 
})
```

عند إعطاء القائمة المجاورة `{0: [1], 1: [0]}`، يجب أن ترجع الدالة `[[0, 1], [1, 0]]`.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: [0]}
        result = adjacency_list_to_matrix(adj_list)
        expected = [[0, 1], [1, 0]]
        assert result == expected
    `) 
})
```

عند إعطاء القائمة المجاورة `{0: [], 1: [], 2: []}`، يجب أن ترجع الدالة `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [], 1: [], 2: []}
        result = adjacency_list_to_matrix(adj_list)
        expected = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
        assert result == expected
    `) 
})
```

# --seed--

## --seed-contents--

```py

```

# --solutions--

```py
def adjacency_list_to_matrix(adj_list):
    n = len(adj_list)
    
    adj_matrix = [[0] * n for _ in range(n)]

    for src_node, neighbors in adj_list.items(): 
        for dest_node in neighbors:
            adj_matrix[src_node][dest_node] = 1

    for row in adj_matrix:
        print(row)

    return adj_matrix

adj_list = {
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}

matrix = adjacency_list_to_matrix(adj_list)
```
