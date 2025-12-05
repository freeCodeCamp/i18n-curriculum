---
id: 686fdcfe055bcda9f651dd2e
title: Construye un convertidor de Lista de Adyacencia a Matriz
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

En este laboratorio, construirás una función que convierte una representación de lista de adyacencia de un grafo en una matriz de adyacencia. Una lista de adyacencia es un diccionario donde cada clave representa un nodo, y el valor correspondiente es una lista de nodos a los que el nodo clave está conectado. Una matriz de adyacencia es un arreglo 2D donde la entrada en la posición `[i][j]` es `1` si hay una arista desde el nodo `i` al nodo `j`, y `0` en caso contrario.

Por ejemplo, dada la lista de adyacencia:

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

La matriz de adyacencia correspondiente sería:

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**Objetivo:** Cumplir con las historias de usuario a continuación y pasar todas las pruebas para completar el laboratorio.

**Historias de usuario:**

1. Debes definir una función llamada `adjacency_list_to_matrix` para convertir una lista de adyacencia en una matriz de adyacencia.
2. La función debe tomar un diccionario que represente la lista de adyacencia de un grafo no ponderado (ya sea no dirigido o dirigido) como argumento.
3. The function should:
   - Convierte la lista de adyacencia en una matriz de adyacencia.
   - Imprime cada fila en la matriz de adyacencia.
   - Devuelve la matriz de adyacencia.

Por ejemplo, `adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})` debería imprimir:

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

y devuelve `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`.


# --hints--

Debes definir una función llamada `adjacency_list_to_matrix`.

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

La función `adjacency_list_to_matrix` debe tener un parámetro.

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

La función debe determinar correctamente el número de nodos a partir de la lista de adyacencia.

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

La función debe establecer correctamente los valores de la matriz a `1` para las aristas existentes.

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

La función debe imprimir cada fila de la matriz.

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

La función debe devolver la matriz de adyacencia.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

Cuando se da la lista de adyacencia `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}`, la función debe devolver `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`.

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

Cuando se da la lista de adyacencia `{0: [1], 1: [0]}`, la función debe devolver `[[0, 1], [1, 0]]`.

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

Cuando se proporciona la lista de adyacencia `{0: [], 1: [], 2: []}`, la función debería devolver `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`.

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
