---
id: 691f7773cddba1caf1bf5eca
title: "Завдання 131: Парами"
challengeType: 29
dashedName: challenge-131
---

# --description--

Дано масив цілих чисел і цільове число. Знайдіть усі пари елементів у масиві, сума значень яких дорівнює цілі, і поверніть суму їхніх індексів.

Наприклад, для `[2, 3, 4, 6, 8]` і `10` ви знайдете дві дійсні пари:

- `2` і `8` (2 + 8 = 10), індекси яких `0` і `4`
- `4` і `6` (4 + 6 = 10), індекси яких `2` і `3`

Додайте всі індекси разом, щоб отримати повернене значення `9`.

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` має повертати `9`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([2, 3, 4, 6, 8], 10), 9)`)
}})
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` має повертати `15`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([4, 1, 5, 2, 6, 3], 7), 15)`)
}})
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` має повертати `22`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22)`)
}})
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` має повертати `10`.

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
