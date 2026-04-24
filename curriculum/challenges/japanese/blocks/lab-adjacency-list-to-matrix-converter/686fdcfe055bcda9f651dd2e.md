---
id: 686fdcfe055bcda9f651dd2e
title: 隣接リストから隣接行列への変換器を作成する
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

このラボでは、グラフの隣接リスト表現を隣接行列に変換する関数を作成します。隣接リストは、各キーがノードを表し、そのキーのノードに接続されているノードのリストが対応する値となっている辞書です。隣接行列は2次元配列で、位置`[i][j]`の要素は、ノード`1`からノード`i`への辺がある場合は`j`、そうでなければ`0`となります。

例えば、次の隣接リストが与えられた場合：

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

対応する隣接行列は次のようになります：

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**目的：** 以下のユーザーストーリーを満たし、すべてのテストに合格してラボを完了してください。

**ユーザーストーリー：**

1. 隣接リストを隣接行列に変換するために、`adjacency_list_to_matrix`という名前の関数を定義してください。
2. 関数は、重みなし（無向または有向）グラフの隣接リストを表す辞書を引数として受け取る必要があります。
3. 関数は以下を行う必要があります：
   - 隣接リストを隣接行列に変換する。
   - 隣接行列の各行を出力する。
   - 隣接行列を返す。

例えば、`adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})`は次のように出力し：

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

`[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`を返すべきです。


# --hints--

`adjacency_list_to_matrix`という名前の関数を定義してください。

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

`adjacency_list_to_matrix`関数は1つのパラメータを持つべきです。

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

関数は隣接リストからノード数を正しく判別する必要があります。

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

関数は存在する辺に対して行列の値を`1`に正しく設定する必要があります。

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

関数は行列の各行を出力する必要があります。

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

関数は隣接行列を返す必要があります。

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

隣接リスト`{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}`が与えられた場合、関数は`[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`を返すべきです。

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

隣接リスト`{0: [1], 1: [0]}`が与えられた場合、関数は`[[0, 1], [1, 0]]`を返すべきです。

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

隣接リスト`{0: [], 1: [], 2: []}`が与えられた場合、関数は`[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`を返すべきです。

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
