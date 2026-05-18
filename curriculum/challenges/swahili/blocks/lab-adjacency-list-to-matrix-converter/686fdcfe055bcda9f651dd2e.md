---
id: 686fdcfe055bcda9f651dd2e
title: Jenga Kigeuzi cha Orodha ya Ujirani kwa Matriki ya Ujirani
challengeType: 27
dashedName: build-an-adjacency-list-to-matrix-converter
---

# --description--

Katika maabara hii, u-tajenga kitendakazi kinachobadilisha uwakilishi wa orodha ya ujirani ya grafu kuwa matriki ya ujirani. Orodha ya ujirani ni kamusi ambapo kila ufunguo unawakilisha nodi, na thamani inayolingana ni orodha ya nodi ambazo nodi ya ufunguo imeunganishwa nazo. Matriki ya ujirani ni safu ya data ya pande mbili ambapo kipengee kilichopo katika nafasi `[i][j]` ni `1` ikiwa kuna kiunganishi kutoka nodi `i` kwenda nodi `j`, na `0` vinginevyo.

Kwa mfano, ikitolewa orodha ya ujirani:

```py
{
    0: [1, 2],
    1: [2],
    2: [0, 3],
    3: [2]
}
```

Matriki ya ujirani inayolingana itakuwa:

```py
[
    [0, 1, 1, 0],
    [0, 0, 1, 0],
    [1, 0, 0, 1],
    [0, 0, 1, 0]
]
```

**Lengo:** Timiza hadithi za watumizi zilizo hapa chini na upite vipimo vyote ili kumaliza maabara hii.

**Hadithi za watumizi:**

1. Unapaswa kufafanua kitendakazi kinachoitwa `adjacency_list_to_matrix` kubadilisha orodha ya ujirani kuwa matriki ya ujirani.
2. Kitendakazi kinapaswa kuchukua kamusi inayowakilisha orodha ya ujirani ya grafu isiyo na uzito (iwe isiyo na mwelekeo au yenye mwelekeo) kama hoja yake.
3. Kitendakazi kinapaswa:
   - Badilisha orodha ya ujirani kuwa matriki ya ujirani.
   - Chapisha kila safu katika matriki ya ujirani.
   - Rudisha matriki ya ujirani.

Kwa mfano, `adjacency_list_to_matrix({0: [2], 1: [2, 3], 2: [0, 1, 3], 3: [1, 2]})` inapaswa kuchapisha:

```md
[0, 0, 1, 0]
[0, 0, 1, 1]
[1, 1, 0, 1]
[0, 1, 1, 0]
```

na kurudisha `[[0, 0, 1, 0], [0, 0, 1, 1], [1, 1, 0, 1], [0, 1, 1, 0]]`.


# --hints--

Unapaswa kufafanua kitendakazi kinachoitwa `adjacency_list_to_matrix`.

```js
({ 
    test: () => assert(runPython(`
    _Node(_code).has_function("adjacency_list_to_matrix")
    `)) 
})
```

Kitendakazi `adjacency_list_to_matrix` kinapaswa kuwa na kigezo kimoja.

```js
({ test: () => assert(runPython(`
    import inspect 
    sig = inspect.signature(adjacency_list_to_matrix)
    len(sig.parameters) == 1
  `))
})
```

Kitendakazi kinapaswa kubaini idadi ya nodi kutoka orodha ya ujirani kwa usahihi.

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

Kitendakazi kinapaswa kuweka thamani za matriki kuwa `1` kwa viunganishi vilivyopo kwa usahihi.

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

Kitendakazi kinapaswa kuchapisha kila safu ya matriki.

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

Kitendakazi kinapaswa kurudisha matriki ya ujirani.

```js
({ 
    test: () => runPython(`
        adj_list = {0: [1], 1: []}
        result = adjacency_list_to_matrix(adj_list)
        assert result == [[0, 1], [0, 0]]
    `) 
})
```

Ikipewa orodha ya ujirani `{0: [1, 2], 1: [2], 2: [0, 3], 3: [2]}`, kitendakazi kinapaswa kurudisha `[[0, 1, 1, 0], [0, 0, 1, 0], [1, 0, 0, 1], [0, 0, 1, 0]]`.

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

Ikipewa orodha ya ujirani `{0: [1], 1: [0]}`, kitendakazi kinapaswa kurudisha `[[0, 1], [1, 0]]`.

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

Ikipewa orodha ya ujirani `{0: [], 1: [], 2: []}`, kitendakazi kinapaswa kurudisha `[[0, 0, 0], [0, 0, 0], [0, 0, 0]]`.

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
