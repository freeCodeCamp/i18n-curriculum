---
id: 681dbcca65bbda5f286dc0ca
title: реалізувати алгоритм швидкого сортування
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історії користувача:**

1. Ви повинні визначити функцію з назвою `quick_sort`, щоб реалізувати алгоритм швидкого сортування.

1. Функція `quick_sort` має приймати список цілих чисел як вхідні дані та повертати новий список цих чисел, відсортований за зростанням.

1. Щоб реалізувати алгоритм, ви повинні:
   - Вибрати опорне значення серед елементів вхідного списку (використовуйте перший або останній елемент списку).
   - Розбити вхідний список на три підсписки: один з елементами меншими за опорне, один з елементами, рівними опорному, і один з елементами більшими за опорне.
   - Рекурсивно викликати `quick_sort` для сортування підсписків і об’єднати відсортовані підсписки, щоб отримати фінальний відсортований список.

# --hints--

Ви повинні мати функцію з назвою `quick_sort`.

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

Ваша функція `quick_sort` має приймати один параметр.

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])` має повертати порожній список.

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

Ваша функція `quick_sort` не повинна змінювати список, переданий їй як аргумент.

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])` має повертати `[1, 3, 5, 14, 20]`.

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])` має повертати `[2, 4, 24, 83]`.

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])` має повертати `[4, 8, 15, 16, 23, 42]`.

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` має повертати `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`.

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

Ви не повинні імпортувати жодний модуль або використовувати вбудовані методи сортування у своєму коді.

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
