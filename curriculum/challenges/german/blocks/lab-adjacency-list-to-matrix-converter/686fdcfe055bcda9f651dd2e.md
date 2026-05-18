---
id: 686fdcfe055bcda9f651dd2e
title: Einen Konverter von Adjazenzliste zu Matrix erstellen
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

In diesem Labor erstellen Sie eine Funktion, die eine Adjazenzlisten-Darstellung eines Graphen in eine Adjazenzmatrix umwandelt. Eine Adjazenzliste ist ein Wörterbuch, bei dem jeder Schlüssel einen Knoten darstellt und der zugehörige Wert eine Liste von Knoten ist, mit denen der Schlüssel-Knoten verbunden ist. Eine Adjazenzmatrix ist ein 2D-Array, bei dem der Eintrag an der Position `[i][j]` `1` ist, wenn eine Kante vom Knoten `i` zum Knoten `j` existiert, und `0` sonst.

Zum Beispiel, gegeben die Adjazenzliste:

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

Die entsprechende Adjazenzmatrix wäre:

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**Ziel:** Erfüllen Sie die untenstehenden User Stories und bestehen Sie alle Tests, um das Labor abzuschließen.

**User Stories:**

1. Sie sollten eine Funktion mit dem Namen `adjacency_list_to_matrix` definieren, um eine Adjazenzliste in eine Adjazenzmatrix umzuwandeln.
2. Die Funktion sollte ein Wörterbuch als Argument annehmen, das die Adjazenzliste eines ungewichteten (entweder ungerichteten oder gerichteten) Graphen darstellt.
3. Die Funktion sollte:
   - Die Adjazenzliste in eine Adjazenzmatrix umwandeln.
   - Jede Zeile der Adjazenzmatrix ausgeben.
   - Die Adjazenzmatrix zurückgeben.

Zum Beispiel sollte `adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})` ausgeben:

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

und `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]` zurückgeben.


# --hints--

Sie sollten eine Funktion mit dem Namen `adjacency_list_to_matrix` definieren.

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

Die Funktion `adjacency_list_to_matrix` sollte einen Parameter haben.

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

Die Funktion sollte die Anzahl der Knoten aus der Adjazenzliste korrekt bestimmen.

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

Die Funktion sollte die Werte in der Matrix für vorhandene Kanten korrekt auf `1` setzen.

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

Die Funktion sollte jede Zeile der Matrix ausgeben.

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

Die Funktion sollte die Adjazenzmatrix zurückgeben.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

Wenn die Funktion die Adjazenzliste `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}` erhält, sollte sie `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]` zurückgeben.

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

Wenn die Funktion die Adjazenzliste `{0: [1], 1: [0]}` erhält, sollte sie `[[0, 1], [1, 0]]` zurückgeben.

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

Wenn die Funktion die Adjazenzliste `{0: [], 1: [], 2: []}` erhält, sollte sie `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]` zurückgeben.

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
