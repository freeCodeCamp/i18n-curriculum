---
id: 681dbcca65bbda5f286dc0ca
title: Implementar el algoritmo Quicksort
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**Objetivo:** Cumplir con las historias de usuario a continuación y pasar todas las pruebas para completar el laboratorio.

**Historias de usuario:**

1. Deberías definir una función llamada `quick_sort` para implementar el algoritmo quicksort.

1. La función `quick_sort` debería tomar una lista de enteros como entrada y devolver una nueva lista de estos enteros en orden de menor a mayor.

1. To implement the algorithm, you should:
   - Elegir un valor pivote de los elementos de la lista de entrada (usar el primer o el último elemento de la lista).
   - Dividir la lista de entrada en tres sublistas: una con elementos menores que el pivote, una con elementos iguales al pivote, y una con elementos mayores que el pivote.
   - Llamar recursivamente a `quick_sort` para ordenar las sublistas y concatenar las sublistas ordenadas para producir la lista final ordenada.

# --hints--

Deberías tener una función llamada `quick_sort`.

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

La función `quick_sort` debería tomar un solo parámetro.

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])` debería devolver una lista vacía.

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

La función `quick_sort` no debería modificar la lista pasada como argumento.

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])` debería devolver `[1, 3, 5, 14, 20]`.

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])` debería devolver `[2, 4, 24, 83]`.

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])` debería devolver `[4, 8, 15, 16, 23, 42]`.

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` debería devolver `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`.

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

No debes importar ningún módulo ni usar métodos de ordenación incorporados en tu código.

```js
({ test: () => runPython(`
    assert len(_Node(_code).find_imports()) == 0
    assert not _Node(_code).block_has_call("sort")
    assert not _Node(_code).block_has_call("sorted")
`)})
```

# --seed--

## --seed-contents--

```py

```

# --solutions--

```py
def quick_sort(numbers):
    if not numbers:
        return []
    pivot = numbers[0]
    lesser = []
    equal = []
    greater = []
    for number in numbers:
        if number < pivot:
            lesser.append(number)
        elif number > pivot:
            greater.append(number)
        else:
            equal.append(number)
    return quick_sort(lesser) + equal + quick_sort(greater)
```
