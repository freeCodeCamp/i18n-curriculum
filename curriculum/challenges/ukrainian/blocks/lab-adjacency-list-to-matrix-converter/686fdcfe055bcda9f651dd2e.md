---
id: 686fdcfe055bcda9f651dd2e
title: Побудувати конвертер зі списку суміжності у матрицю суміжності
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

У цій лабораторній роботі ви створите функцію, яка конвертує подання графа у вигляді списку суміжності в матрицю суміжності. Список суміжності — це словник, де кожен ключ представляє вузол, а відповідне значення — це список вузлів, з якими пов’язаний ключовий вузол. Матриця суміжності — це двовимірний масив, де елемент на позиції `[i][j]` дорівнює `1`, якщо існує ребро від вузла `i` до вузла `j`, і `0` в іншому випадку.

Наприклад, для списку суміжності:

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

Відповідна матриця суміжності буде:

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історії користувача:**

1. Ви повинні визначити функцію з іменем `adjacency_list_to_matrix`, яка конвертує список суміжності у матрицю суміжності.
2. Функція має приймати словник, що представляє список суміжності неваженого (орієнтованого або неорієнтованого) графа, як свій параметр.
3. Функція має:
   - Конвертувати список суміжності у матрицю суміжності.
   - Вивести кожен рядок матриці суміжності.
   - Повернути матрицю суміжності.

Наприклад, `adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})` має вивести:

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

і повернути `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`.


# --hints--

Визначте функцію з іменем `adjacency_list_to_matrix`.

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

Функція `adjacency_list_to_matrix` має мати один параметр.

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

Функція має правильно визначити кількість вузлів зі списку суміжності.

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

Функція має правильно встановити значення матриці в `1` для існуючих ребер.

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

Функція має вивести кожен рядок матриці.

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

Функція має повернути матрицю суміжності.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

При поданні списку суміжності `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}` функція має повернути `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`.

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

При поданні списку суміжності `{0: [1], 1: [0]}` функція має повернути `[[0, 1], [1, 0]]`.

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

При поданні списку суміжності `{0: [], 1: [], 2: []}` функція має повернути `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`.

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
