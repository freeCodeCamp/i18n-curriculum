---
id: 691f7773cddba1caf1bf5eca
title: "Sfida 131: coppie a due a due"
challengeType: 29
dashedName: challenge-131
---

# --description--

Dato un array di numeri interi e un numero obiettivo, trova tutte le coppie di elementi nell'array i cui valori sommati danno l'obiettivo e restituisci la somma dei loro indici.

Ad esempio, dati `[2, 3, 4, 6, 8]` e `10`, troverai due coppie valide:

- `2` e `8` (2 + 8 = 10), i cui indici sono `0` e `4`
- `4` e `6` (4 + 6 = 10), i cui indici sono `2` e `3`

Somma tutti gli indici per ottenere un valore di ritorno pari a `9`.

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` dovrebbe restituire `9`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([2, 3, 4, 6, 8], 10), 9)`)
}})
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` dovrebbe restituire `15`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([4, 1, 5, 2, 6, 3], 7), 15)`)
}})
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` dovrebbe restituire `22`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22)`)
}})
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` dovrebbe restituire `10`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24), 10)`)
}})
```

# --seed--

## --seed-contents--

```py
def pairwise(arr, target):

    return arr
```

# --solutions--

```py
def pairwise(arr, target):
    total = 0

    for i in range(len(arr)):
        for j in range(i + 1, len(arr)):
            if arr[i] + arr[j] == target:
                total += i + j

    return total
```
