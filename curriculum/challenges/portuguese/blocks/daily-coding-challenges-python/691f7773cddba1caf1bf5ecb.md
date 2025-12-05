---
id: 691f7773cddba1caf1bf5ecb
title: "Desafio 132: Eliminar os Mais Frequentes"
challengeType: 29
dashedName: challenge-132
---

# --description--

Dado um array de valores, remova todas as ocorrências do elemento que ocorre com mais frequência e retorne o array resultante.

- Se vários valores estiverem empatados como os mais frequentes, remova todos eles.
- Não altere nenhum dos outros elementos ou sua ordem.

# --hints--

`purge_most_frequent([1, 2, 2, 3])` deve retornar `[1, 3]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([1, 2, 2, 3]), [1, 3])`)
}})
```

`purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` deve retornar `["a", "b", "b", "c", "c", "c"]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"])`)
}})
```

`purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"])` deve retornar `["red", "green", "red", "green"]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"])`)
}})
```

`purge_most_frequent([5, 5, 5, 5])` deve retornar `[]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([5, 5, 5, 5]), [])`)
}})
```

# --seed--

## --seed-contents--

```py
def purge_most_frequent(arr):

    return arr
```

# --solutions--

```py
def purge_most_frequent(arr):
    freq = {}
    for val in arr:
        freq[val] = freq.get(val, 0) + 1

    max_freq = max(freq.values())
    to_remove = {val for val, count in freq.items() if count == max_freq}

    return [val for val in arr if val not in to_remove]
```
