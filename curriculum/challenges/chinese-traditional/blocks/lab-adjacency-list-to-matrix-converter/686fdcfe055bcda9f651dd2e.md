---
id: 686fdcfe055bcda9f651dd2e
title: 建造一個鄰接列表轉矩陣轉換器
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

在本實驗中，你將建置一個函式，將圖的鄰接列表表述轉換成鄰接矩陣。鄰接列表是一個字典，其中每個鍵代表一個節點，對應的值是一個節點陣列，表示該鍵節點所連接的節點。鄰接矩陣是一個二維陣列，當節點 `i` 到節點 `j` 有邊時，位置 `[i][j]` 的值為 `1`，否則為 `0`。

例如，給定鄰接列表：

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

對應的鄰接矩陣將會是：

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**目標：** 完成以下使用者故事並通過所有測試以完成實驗。

**使用者故事：**

1. 你應該定義一個名為 `adjacency_list_to_matrix` 的函式（程式），將鄰接列表轉換為鄰接矩陣。
2. 該函式（程式）應該接受一個字典作為引數，該字典表述一個無權重（無向或有向）圖的鄰接列表。
3. 該函式（程式）應該：
   - 將鄰接列表轉換為鄰接矩陣。
   - 列印鄰接矩陣中的每一列。
   - 傳回鄰接矩陣。

例如，`adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})` 應該列印：

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

並傳回 `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`。


# --hints--

你應該定義一個名為 `adjacency_list_to_matrix` 的函式（程式）。

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

`adjacency_list_to_matrix` 函式（程式）應該有一個參數。

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

該函式（程式）應正確從鄰接列表中判斷節點數量。

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

該函式（程式）應正確將矩陣值設為 `1`，以表示現有的邊。

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

該函式（程式）應該列印矩陣的每一列。

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

該函式（程式）應該傳回鄰接矩陣。

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

當給定鄰接列表 `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}` 時，該函式應該傳回 `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`。

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

當給定鄰接列表 `{0: [1], 1: [0]}` 時，該函式應該傳回 `[[0, 1], [1, 0]]`。

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

當給定鄰接列表 `{0: [], 1: [], 2: []}` 時，該函式應該傳回 `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`。

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
