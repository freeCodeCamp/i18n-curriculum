---
id: 686fdcfe055bcda9f651dd2e
title: 构建一个邻接列表到矩阵的转换器
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

在本实验中，你将构建一个函数，将图的邻接列表表现转换为邻接矩阵。邻接列表是一个字典，其中每个密钥代表一个节点，且对应的值是该密钥节点连接的节点列表。邻接矩阵是一个二维数组，其中位置 `[i][j]` 的条目为 `1` 表示存在从节点 `i` 到节点 `j` 的边，否则为 `0`。

例如，给定邻接列表：

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

对应的邻接矩阵为：

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**目标：**实现以下用户需求并通过所有测试以完成实验。

**用户故事：**

1. 你应该定义一个名为 `adjacency_list_to_matrix` 的函数，将邻接列表转换为邻接矩阵。
2. 该函数应接受一个字典作为其参数，该字典表现无权（无向或有向）图的邻接列表。
3. 该函数应该：
   - 将邻接列表转换为邻接矩阵。
   - 打印邻接矩阵中的每一行。
   - 返回邻接矩阵。

例如，`adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})` 应该打印：

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

并返回 `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`。


# --hints--

你应该定义一个名为 `adjacency_list_to_matrix` 的函数。

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

`adjacency_list_to_matrix` 函数应有一个参数。

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

该函数应正确地从邻接列表中确定节点数。

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

该函数应正确将矩阵值设置为 `1`，用于存在的边。

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

该函数应打印矩阵的每一行。

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

该函数应返回邻接矩阵。

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

当给定邻接列表 `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}` 时，函数应返回 `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`。

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

当给定邻接列表 `{0: [1], 1: [0]}` 时，函数应返回 `[[0, 1], [1, 0]]`。

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

当给定邻接列表 `{0: [], 1: [], 2: []}` 时，函数应返回 `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`。

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
