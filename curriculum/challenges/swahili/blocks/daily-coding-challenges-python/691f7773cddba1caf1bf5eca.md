---
id: 691f7773cddba1caf1bf5eca
title: "Challenge 131: Pairwise"
challengeType: 29
dashedName: challenge-131
---

# --description--

Ikiwa umepewa safu ya data ya nambari kamili na nambari lengwa, tafuta jozi zote za vipengele katika safu ya data ambavyo thamani zao zinajumuika kuwa nambari lengwa na rudisha jumla ya nambari za viashiria vyao.

Kwa mfano, ukipata `[2, 3, 4, 6, 8]` na `10`, utapata jozi mbili halali:

- `2` na `8` (2 + 8 = 10), viashiria vyake ni `0` na `4`
- `4` na `6` (4 + 6 = 10), viashiria vyake ni `2` na `3`

Jumlisha viashiria vyote kupata thamani ya return ya `9`.

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` should return `9`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([2, 3, 4, 6, 8], 10), 9)`)
}})
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` should return `15`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([4, 1, 5, 2, 6, 3], 7), 15)`)
}})
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` should return `22`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22)`)
}})
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` should return `10`.

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
