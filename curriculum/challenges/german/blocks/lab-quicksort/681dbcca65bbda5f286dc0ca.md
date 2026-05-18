---
id: 681dbcca65bbda5f286dc0ca
title: Implementieren Sie den Quicksort-Algorithmus
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**Ziel:** Erfüllen Sie die untenstehenden User Stories und bringen Sie alle Tests zum Bestehen, um das Labor abzuschließen.

**User Stories:**

1. Sie sollten eine Funktion namens `quick_sort` definieren, um den Quicksort-Algorithmus zu implementieren.

1. Die Funktion `quick_sort` sollte eine Liste ganzer Zahlen als Eingabe nehmen und eine neue Liste dieser Zahlen in aufsteigender Reihenfolge zurückgeben.

1. Um den Algorithmus zu implementieren, sollten Sie:
   - Einen Pivot-Wert aus den Elementen der Eingabeliste auswählen (verwenden Sie das erste oder das letzte Element der Liste).
   - Die Eingabeliste in drei Teillisten aufteilen: eine mit Elementen kleiner als der Pivot, eine mit Elementen gleich dem Pivot und eine mit Elementen größer als der Pivot.
   - `quick_sort` rekursiv aufrufen, um die Teillisten zu sortieren, und die sortierten Teillisten zusammenfügen, um die endgültige sortierte Liste zu erzeugen.

# --hints--

Sie sollten eine Funktion namens `quick_sort` haben.

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

Ihre Funktion `quick_sort` sollte einen einzelnen Parameter haben.

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])` sollte eine leere Liste zurückgeben.

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

Ihre Funktion `quick_sort` sollte die als Argument übergebene Liste nicht verändern.

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])` sollte `[1, 3, 5, 14, 20]` zurückgeben.

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])` sollte `[2, 4, 24, 83]` zurückgeben.

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])` sollte `[4, 8, 15, 16, 23, 42]` zurückgeben.

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` sollte `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]` zurückgeben.

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

Sie sollten kein Modul importieren oder eingebaute Sortiermethoden in Ihrem Code verwenden.

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
