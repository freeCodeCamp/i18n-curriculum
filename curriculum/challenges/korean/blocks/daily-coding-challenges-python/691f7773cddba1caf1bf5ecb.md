---
id: 691f7773cddba1caf1bf5ecb
title: "Challenge 132: Purge Most Frequent"
challengeType: 29
dashedName: challenge-132
---

# --description--

값들의 배열이 주어졌을 때, 가장 자주 등장하는 요소를 모두 제거하고 결과 배열을 반환하세요.

- 여러 값이 가장 자주 등장하는 경우, 모두 제거하세요.
- 다른 요소들이나 그 순서는 변경하지 마세요.

# --hints--

`purge_most_frequent([1, 2, 2, 3])` should return `[1, 3]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([1, 2, 2, 3]), [1, 3])`)
}})
```

`purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` should return `["a", "b", "b", "c", "c", "c"]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"])`)
}})
```

`purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"])` should return `["red", "green", "red", "green"]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"])`)
}})
```

`purge_most_frequent([5, 5, 5, 5])` should return `[]`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([5, 5, 5, 5]), [])`)
}})
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])` should return `[10, 3]`.

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
