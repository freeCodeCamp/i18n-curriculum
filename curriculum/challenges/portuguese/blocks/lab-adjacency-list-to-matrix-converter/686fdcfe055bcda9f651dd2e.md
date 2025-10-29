---
id: 686fdcfe055bcda9f651dd2e
title: Construir um Conversor de Lista de Adjacência para Matriz
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

Neste laboratório, você construirá uma função que converte uma representação de lista de adjacência de um grafo em uma matriz de adjacência.Uma lista de adjacência é um dicionário onde cada chave representa um nó, e o valor correspondente é uma lista de nós aos quais o nó chave está conectado.Uma matriz de adjacência é um array 2D onde a entrada na posição `[i][j]` é `1` se houver uma aresta do nó `i` para o nó `j`, e `0` caso contrário.

Por exemplo, dada a lista de adjacência:

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

A matriz de adjacência correspondente seria:

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**Objetivo:** Cumprir as user stories abaixo e fazer todos os testes passarem para completar o laboratório.

**Histórias de Usuário:**

1. Você deve definir uma função chamada `adjacency_list_to_matrix` para converter uma lista de adjacência em uma matriz de adjacência.
2. A função deve receber um dicionário que representa a lista de adjacência de um grafo não ponderado (seja não direcionado ou direcionado) como seu argumento.
3. A função deve:
   - Converta a lista de adjacência para uma matriz de adjacência.
   - Imprima cada linha na matriz de adjacência.
   - Retorne a matriz de adjacência.

Por exemplo, `adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})` deve imprimir:

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

e retorne `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`.


# --hints--

Você deve definir uma função chamada `adjacency_list_to_matrix`.

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

A função `adjacency_list_to_matrix` deve ter um parâmetro.

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

A função deve determinar corretamente o número de nós a partir da lista de adjacência.

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

A função deve definir corretamente os valores da matriz para `1` para arestas existentes.

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

A função deve imprimir cada linha da matriz.

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

A função deve retornar a matriz de adjacência.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

Quando dada a lista de adjacência `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}`, a função deve retornar `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`.

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

Quando fornecida a lista de adjacência `{0: [1], 1: [0]}`, a função deve retornar `[[0, 1], [1, 0]]`.

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

Quando fornecida a lista de adjacência `{0: [], 1: [], 2: []}`, a função deve retornar `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`.

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
