---
id: 681dbcca65bbda5f286dc0ca
title: 퀵소트 알고리즘 구현하기
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**목표:** 아래 사용자 스토리를 충족하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리:**

1. 퀵소트 알고리즘을 구현하기 위해 `quick_sort`라는 이름의 함수를 정의해야 합니다.

1. `quick_sort` 함수는 정수 리스트를 입력으로 받아 이 정수들을 오름차순으로 정렬한 새 리스트를 반환해야 합니다.

1. 알고리즘을 구현하려면 다음을 수행하세요:
   - 입력 리스트의 요소 중에서 피벗 값을 선택하세요(리스트의 첫 번째 또는 마지막 요소를 사용).
   - 입력 리스트를 세 개의 하위 리스트로 분할하세요: 피벗보다 작은 요소들, 피벗과 같은 요소들, 피벗보다 큰 요소들.
   - 하위 리스트들을 정렬하기 위해 재귀적으로 `quick_sort`를 호출하고, 정렬된 하위 리스트들을 연결하여 최종 정렬 리스트를 만드세요.

# --hints--

`quick_sort`라는 이름의 함수가 있어야 합니다.

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

`quick_sort` 함수는 하나의 매개변수를 받아야 합니다.

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])`는 빈 리스트를 반환해야 합니다.

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

`quick_sort` 함수는 인수로 전달된 리스트를 수정하지 않아야 합니다.

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])`는 `[1, 3, 5, 14, 20]`를 반환해야 합니다.

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])`는 `[2, 4, 24, 83]`를 반환해야 합니다.

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])`는 `[4, 8, 15, 16, 23, 42]`를 반환해야 합니다.

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])`는 `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`를 반환해야 합니다.

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

코드에서 어떤 모듈도 가져오지 말고 내장 정렬 메서드를 사용하지 마세요.

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
