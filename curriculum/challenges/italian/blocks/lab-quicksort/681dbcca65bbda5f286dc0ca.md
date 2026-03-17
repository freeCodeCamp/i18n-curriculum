---
id: 681dbcca65bbda5f286dc0ca
title: "implementare l'algoritmo quicksort"
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**Obiettivo:** Completa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

**Storie utente:**

1. Devi definire una funzione chiamata `quick_sort` per implementare l'algoritmo quicksort.

1. La funzione `quick_sort` deve prendere come input una lista di numeri interi e restituire una nuova lista di questi numeri ordinata dal più piccolo al più grande.

1. Per implementare l'algoritmo, devi:
   - Scegliere un valore pivot tra gli elementi della lista di input (usa il primo o l'ultimo elemento della lista).
   - Suddividere la lista di input in tre sotto-liste: una con gli elementi minori del pivot, una con gli elementi uguali al pivot e una con gli elementi maggiori del pivot.
   - Chiamare ricorsivamente `quick_sort` per ordinare le sotto-liste e concatenare le sotto-liste ordinate per ottenere la lista finale ordinata.

# --hints--

Devi avere una funzione chiamata `quick_sort`.

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

La tua funzione `quick_sort` deve prendere un solo parametro.

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])` deve restituire una lista vuota.

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

La tua funzione `quick_sort` non deve modificare la lista passata come argomento.

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])` deve restituire `[1, 3, 5, 14, 20]`.

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])` deve restituire `[2, 4, 24, 83]`.

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])` deve restituire `[4, 8, 15, 16, 23, 42]`.

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` deve restituire `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`.

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

Non devi importare nessun modulo né usare metodi di ordinamento integrati nel tuo codice.

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
