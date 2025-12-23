---
id: 691f7773cddba1caf1bf5ecb
title: "Desafío 132: Eliminar los Más Frecuentes"
challengeType: 29
dashedName: challenge-132
---

# --description--

Dado un arreglo de valores, elimina todas las ocurrencias del elemento que aparece con mayor frecuencia y devuelve el arreglo resultante.

- Si varios valores están empatados como los más frecuentes, elimina todos ellos.
- No cambies ninguno de los otros elementos ni su orden.

# --hints--

`purge_most_frequent([1, 2, 2, 3])` debería devolver `[1, 3]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([1, 2, 2, 3]), [1, 3])`)
}})
```

`purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` debería devolver `["a", "b", "b", "c", "c", "c"]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"])`)
}})
```

`purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"])` debería devolver `["red", "green", "red", "green"]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"])`)
}})
```

`purge_most_frequent([5, 5, 5, 5])` debería devolver `[]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([5, 5, 5, 5]), [])`)
}})
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])` debería devolver `[10, 3]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([10, 12, 7, 3, 7, 7, 12, 12]), [10, 3])`)
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
