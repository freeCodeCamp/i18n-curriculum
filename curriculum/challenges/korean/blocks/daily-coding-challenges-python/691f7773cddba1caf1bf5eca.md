---
id: 691f7773cddba1caf1bf5eca
title: "Challenge 131: Pairwise"
challengeType: 29
dashedName: challenge-131
---

# --description--

정수 배열과 목표 숫자가 주어졌을 때, 배열에서 값의 합이 목표 숫자가 되는 모든 요소 쌍을 찾아 그들의 인덱스 합을 반환하세요.

예를 들어 `[2, 3, 4, 6, 8]`와 `10`가 주어지면, 두 개의 유효한 쌍을 찾을 수 있습니다:

- `2`와 `8` (2 + 8 = 10), 인덱스는 `0`와 `4`
- `4`와 `6` (4 + 6 = 10), 인덱스는 `2`와 `3`

모든 인덱스를 더해 반환값 `9`을 얻으세요.

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
