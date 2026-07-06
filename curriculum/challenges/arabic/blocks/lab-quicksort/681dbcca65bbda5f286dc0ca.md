---
id: 681dbcca65bbda5f286dc0ca
title: تنفيذ خوارزمية الترتيب السريع
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**الهدف:** نفذ قصص المستخدم أدناه واجعل جميع الاختبارات تنجح لإكمال المختبر.

**قصص المستخدم:**

1. يجب أن تعرف دالة باسم `quick_sort` لتنفيذ خوارزمية الترتيب السريع.

1. يجب أن تأخذ دالة `quick_sort` قائمة من الأعداد الصحيحة كمُدخَل وتُرجع قائمة جديدة من هذه الأعداد مرتبة من الأصغر إلى الأكبر.

1. لتنفيذ الخوارزمية، يجب أن:
   - تختار قيمة محور من عناصر القائمة المُدخَلة (استخدم العنصر الأول أو الأخير من القائمة).
   - تقسم القائمة المُدخَلة إلى ثلاث قوائم فرعية: واحدة بالعناصر الأقل من المحور، وأخرى بالعناصر المتساوية مع المحور، وثالثة بالعناصر الأكبر من المحور.
   - تستدعي دالة `quick_sort` بشكل متكرر لترتيب القوائم الفرعية ثم تدمج القوائم الفرعية المرتبة لإنتاج القائمة النهائية المرتبة.

# --hints--

يجب أن يكون لديك دالة باسم `quick_sort`.

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

يجب أن تأخذ دالة `quick_sort` معلمة واحدة فقط.

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

يجب أن تُرجع `quick_sort([])` قائمة فارغة.

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

يجب ألا تعدل دالة `quick_sort` القائمة التي تُمرر إليها كمعلمة.

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

يجب أن تُرجع `quick_sort([20, 3, 14, 1, 5])` القائمة `[1, 3, 5, 14, 20]`.

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

يجب أن تُرجع `quick_sort([83, 4, 24, 2])` القائمة `[2, 4, 24, 83]`.

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

يجب أن تُرجع `quick_sort([4, 42, 16, 23, 15, 8])` القائمة `[4, 8, 15, 16, 23, 42]`.

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

يجب أن تُرجع `quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` القائمة `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`.

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

يجب ألا تستورد أي وحدة أو تستخدم طرق الترتيب المدمجة في شفرتك.

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
