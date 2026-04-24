---
id: 681dbcca65bbda5f286dc0ca
title: クイックソートアルゴリズムを実装する
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**目的：** 以下のストーリーを満たし、すべてのテストに合格してラボを完了してください。

**ストーリー：**

1. クイックソートアルゴリズムを実装するために、`quick_sort` という名前の関数を定義してください。

1. `quick_sort` 関数は整数のリストを入力として受け取り、これらの整数を最小から最大の順に並べ替えた新しいリストを返す必要があります。

1. アルゴリズムを実装するには、以下を行ってください：
   - 入力リストの要素からピボット値を選びます（リストの最初または最後の要素を使います）。
   - 入力リストを3つのサブリストに分割します：ピボットより小さい要素のリスト、ピボットと等しい要素のリスト、ピボットより大きい要素のリスト。
   - サブリストを再帰的に`quick_sort`でソートし、ソート済みのサブリストを連結して最終的なソート済みリストを作成します。

# --hints--

`quick_sort` という名前の関数を用意してください。

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

`quick_sort` 関数は1つのパラメータを受け取る必要があります。

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])` は空のリストを返すべきです。

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

`quick_sort` 関数は引数として渡されたリストを変更してはいけません。

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])` は `[1, 3, 5, 14, 20]` を返すべきです。

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])` は `[2, 4, 24, 83]` を返すべきです。

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])` は `[4, 8, 15, 16, 23, 42]` を返すべきです。

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` は `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]` を返すべきです。

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

コード内でモジュールをインポートしたり、組み込みのソートメソッドを使ったりしないでください。

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
