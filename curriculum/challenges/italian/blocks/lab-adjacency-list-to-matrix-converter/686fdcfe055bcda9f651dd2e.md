---
id: 686fdcfe055bcda9f651dd2e
title: Costruire un convertitore da lista di adiacenza a matrice
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

In questo laboratorio costruirai una funzione che converte una rappresentazione di un grafo tramite lista di adiacenza in una matrice di adiacenza. Una lista di adiacenza è un dizionario in cui ogni chiave rappresenta un nodo e il valore corrispondente è una lista di nodi a cui il nodo chiave è collegato. Una matrice di adiacenza è un array 2D in cui la voce in posizione `[i][j]` è `1` se esiste un arco dal nodo `i` al nodo `j`, e `0` altrimenti.

Per esempio, data la lista di adiacenza:

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

La matrice di adiacenza corrispondente sarebbe:

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**Obiettivo:** Completa le storie utente qui sotto e fai passare tutti i test per completare il laboratorio.

**Storie utente:**

1. Devi definire una funzione chiamata `adjacency_list_to_matrix` per convertire una lista di adiacenza in una matrice di adiacenza.
2. La funzione deve prendere come argomento un dizionario che rappresenta la lista di adiacenza di un grafo non pesato (sia non orientato che orientato).
3. La funzione deve:
   - Convertire la lista di adiacenza in una matrice di adiacenza.
   - Stampare ogni riga della matrice di adiacenza.
   - Restituire la matrice di adiacenza.

Per esempio, `adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})` dovrebbe stampare:

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

e restituire `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`.


# --hints--

Devi definire una funzione chiamata `adjacency_list_to_matrix`.

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

La funzione `adjacency_list_to_matrix` deve avere un parametro.

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

La funzione deve determinare correttamente il numero di nodi dalla lista di adiacenza.

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

La funzione deve impostare correttamente i valori della matrice a `1` per gli archi esistenti.

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

La funzione deve stampare ogni riga della matrice.

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

La funzione deve restituire la matrice di adiacenza.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

Quando riceve la lista di adiacenza `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}`, la funzione deve restituire `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`.

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

Quando riceve la lista di adiacenza `{0: [1], 1: [0]}`, la funzione deve restituire `[[0, 1], [1, 0]]`.

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

Quando riceve la lista di adiacenza `{0: [], 1: [], 2: []}`, la funzione deve restituire `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`.

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
