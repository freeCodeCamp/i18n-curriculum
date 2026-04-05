---
id: 686fdcfe055bcda9f651dd2e
title: 인접 리스트를 인접 행렬로 변환기 만들기
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

이번 실습에서는 그래프의 인접 리스트 표현을 인접 행렬로 변환하는 함수를 만드세요. 인접 리스트는 각 키가 노드를 나타내고, 해당 키 노드와 연결된 노드들의 리스트가 값으로 있는 딕셔너리입니다. 인접 행렬은 2차원 배열로, 위치 `[i][j]`의 값이 노드 `1`에서 노드 `i`로 간선이 있으면 `j`이고, 그렇지 않으면 `0`입니다.

예를 들어, 다음 인접 리스트가 주어지면:

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

해당하는 인접 행렬은 다음과 같습니다:

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**목표:** 아래 사용자 스토리를 충족하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리:**

1. 인접 리스트를 인접 행렬로 변환하는 `adjacency_list_to_matrix`라는 이름의 함수를 정의해야 합니다.
2. 함수는 가중치 없는 (무방향 또는 방향) 그래프의 인접 리스트를 나타내는 딕셔너리를 인수로 받아야 합니다.
3. 함수는 다음을 수행해야 합니다:
   - 인접 리스트를 인접 행렬로 변환합니다.
   - 인접 행렬의 각 행을 출력합니다.
   - 인접 행렬을 반환합니다.

예를 들어, `adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})`는 다음을 출력해야 합니다:

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

그리고 `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`를 반환해야 합니다.


# --hints--

`adjacency_list_to_matrix`라는 이름의 함수를 정의하세요.

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

`adjacency_list_to_matrix` 함수는 매개변수 하나를 가져야 합니다.

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

함수는 인접 리스트에서 노드 수를 정확히 파악해야 합니다.

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

함수는 존재하는 간선에 대해 행렬 값을 `1`으로 정확히 설정해야 합니다.

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

함수는 행렬의 각 행을 출력해야 합니다.

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

함수는 인접 행렬을 반환해야 합니다.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

인접 리스트 `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}`가 주어지면 함수는 `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`를 반환해야 합니다.

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

인접 리스트 `{0: [1], 1: [0]}`가 주어지면 함수는 `[[0, 1], [1, 0]]`를 반환해야 합니다.

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

인접 리스트 `{0: [], 1: [], 2: []}`가 주어지면 함수는 `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`를 반환해야 합니다.

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
