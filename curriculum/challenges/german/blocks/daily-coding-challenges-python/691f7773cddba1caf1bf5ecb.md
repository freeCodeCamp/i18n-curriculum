---
id: 691f7773cddba1caf1bf5ecb
title: "Aufgabe 132: Entfernen der häufigsten Elemente"
challengeType: 29
dashedName: challenge-132
---

# --description--

Gegeben ist ein Array von Werten. Entfernen Sie alle Vorkommen des am häufigsten auftretenden Elements und geben Sie das resultierende Array zurück.

- Wenn mehrere Werte gleich häufig sind, entfernen Sie alle diese Werte.
- Ändern Sie keine der anderen Elemente oder deren Reihenfolge.

# --hints--

`purge_most_frequent([1, 2, 2, 3])` sollte `[1, 3]` zurückgeben.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([1, 2, 2, 3]), [1, 3])`)
}})
```

`purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` sollte `["a", "b", "b", "c", "c", "c"]` zurückgeben.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"])`)
}})
```

`purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"])` sollte `["red", "green", "red", "green"]` zurückgeben.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"])`)
}})
```

`purge_most_frequent([5, 5, 5, 5])` sollte `[]` zurückgeben.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([5, 5, 5, 5]), [])`)
}})
```

`purge_most_frequent([10, 12, 7, 3, 7, 7, 12, 12])` sollte `[10, 3]` zurückgeben.

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
