---
id: 691f7773cddba1caf1bf5ecb
title: "挑戰 132：清除最常出現項目"
challengeType: 29
dashedName: challenge-132
---

# --description--

給定一個值的陣列，移除所有最常出現元素的出現次數，並傳回結果陣列。

- 如果多個值同時為出現頻率最高，則移除它們全部。
- 不要更改任何其他元素或其順序。

# --hints--

`purge_most_frequent([1, 2, 2, 3])` 應該傳回 `[1, 3]`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([1, 2, 2, 3]), [1, 3])`)
}})
```

`purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"])` 應該傳回 `["a", "b", "b", "c", "c", "c"]`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["a", "b", "d", "b", "c", "d", "c", "d", "c", "d"]), ["a", "b", "b", "c", "c", "c"])`)
}})
```

`purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"])` 應該傳回 `["red", "green", "red", "green"]`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent(["red", "blue", "green", "red", "blue", "green", "blue"]), ["red", "green", "red", "green"])`)
}})
```

`purge_most_frequent([5, 5, 5, 5])` 應該傳回 `[]`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(purge_most_frequent([5, 5, 5, 5]), [])`)
}})
```

`purgeMostFrequent([10, 12, 7, 3, 7, 7, 12, 12])` 應該傳回 `[10, 3]`。

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
