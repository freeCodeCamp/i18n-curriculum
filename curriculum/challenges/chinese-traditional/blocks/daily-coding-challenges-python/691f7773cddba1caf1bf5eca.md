---
id: 691f7773cddba1caf1bf5eca
title: "挑戰 131：配對"
challengeType: 29
dashedName: challenge-131
---

# --description--

給定一個整數陣列和一個標的數字，找出陣列中所有值加總等於標的的元素配對，並傳回它們索引的總和。

例如，給定 `[2, 3, 4, 6, 8]` 和 `10`，你會找到兩個有效的配對：

- `2` 和 `8`（2 ＋ 8 ＝ 10），其索引為 `0` 和 `4`
- `4` 和 `6`（4 + 6 = 10），其索引為 `2` 和 `3`

將所有索引相加以取得 `9` 的返回值。

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` 應該傳回 `9`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([2, 3, 4, 6, 8], 10), 9)`)
}})
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` 應該傳回 `15`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([4, 1, 5, 2, 6, 3], 7), 15)`)
}})
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` 應該傳回 `22`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22)`)
}})
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` 應該傳回 `10`。

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
