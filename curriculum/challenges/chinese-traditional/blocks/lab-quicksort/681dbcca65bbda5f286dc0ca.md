---
id: 681dbcca65bbda5f286dc0ca
title: 實作 Quicksort 演算法
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**目標：** 完成以下使用者故事並通過所有測試以完成實驗。

**使用者故事：**

1. 你應該定義一個名為 `quick_sort` 的函式（程式）來實作快速排序演算法。

1. `quick_sort` 函式（程式）應該接受一個整數列表作為輸入，並傳回一個新的這些整數從小到大排序的列表。

1. 要實作該演算法，你應該：
   - 從輸入列表的元素中選擇一個樞軸值（使用列表的第一個或最後一個元素）。
   - 將輸入列表分割成三個子列表：一個包含小於 pivot 的元素，一個包含與 pivot 相等的元素，還有一個包含大於 pivot 的元素。
   - 遞迴呼叫 `quick_sort` 來排序子列表，並串接排序後的子列表以產生最終排序的列表。

# --hints--

你應該有一個名為 `quick_sort` 的函式（程式）。

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

你的 `quick_sort` 函式應該接受一個單一參數。

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])` 應該傳回一個空的列表。

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

你的 `quick_sort` 函式不應修改作為引數傳入的列表。

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])` 應該傳回 `[1, 3, 5, 14, 20]`。

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])` 應該傳回 `[2, 4, 24, 83]`。

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])` 應該傳回 `[4, 8, 15, 16, 23, 42]`。

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` 應該傳回 `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`。

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

你不應該在你的程式碼中匯入任何模組或使用內建排序方法。

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
