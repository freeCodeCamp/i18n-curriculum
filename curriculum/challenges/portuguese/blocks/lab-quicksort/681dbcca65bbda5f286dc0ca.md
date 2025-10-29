---
id: 681dbcca65bbda5f286dc0ca
title: Implementar o Algoritmo Quicksort
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**Objetivo:** Cumprir as user stories abaixo e fazer todos os testes passarem para completar o laboratório.

**Histórias de Usuário:**

1. Você deve definir uma função chamada `quick_sort` para implementar o algoritmo quicksort.

1. A função `quick_sort` deve receber uma lista de inteiros como entrada e retornar uma nova lista desses inteiros em ordem crescente, do menor para o maior.

1. Para implementar o algoritmo, você deve:
   - Escolha um valor pivot dentre os elementos da lista de entrada (use o primeiro ou o último elemento da lista).
   - Particione a lista de entrada em três sublistas: uma com elementos menores que o `pivot`, uma com elementos iguais ao `pivot` e uma com elementos maiores que o `pivot`.
   - Chame recursivamente `quick_sort` para ordenar as sublistas e concatene as sublistas ordenadas para produzir a lista final ordenada.

# --hints--

Você deve ter uma função chamada `quick_sort`.

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

Sua função `quick_sort` deve receber um único parâmetro.

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])` deve retornar uma lista vazia.

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

Sua função `quick_sort` não deve modificar a lista passada para ela como argumento.

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])` deve retornar `[1, 3, 5, 14, 20]`.

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])` deve retornar `[2, 4, 24, 83]`.

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])` deve retornar `[4, 8, 15, 16, 23, 42]`.

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` deve retornar `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`.

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

Você não deve usar a função embutida `sorted()` no seu código.

```js
({ test: () => runPython(`
assert not _Node(_code).block_has_call("sorted")
`) })
```

Você não deve usar o método `sort()` em seu código.

```js
({ test: () => runPython(`
assert not _Node(_code).block_has_call("sort")
`) })
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
