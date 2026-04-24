---
id: 691f7773cddba1caf1bf5ecb
title: "Challenge 132: Purge Most Frequent"
challengeType: 29
dashedName: challenge-132
---

# --description--

配列が与えられたとき、最も頻繁に出現する要素をすべて削除し、結果の配列を返してください。

- 複数の値が最頻出で同率の場合は、それらすべてを削除してください。
- 他の要素やその順序は変更しないでください。

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
