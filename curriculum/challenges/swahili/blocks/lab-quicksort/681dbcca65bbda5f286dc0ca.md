---
id: 681dbcca65bbda5f286dc0ca
title: Tekeleza algoriti ya quicksort
challengeType: 27
dashedName: implement-the-quicksort-algorithm
---

# --description--

**Lengo:** Timiza hadithi za watumizi zilizo hapa chini na upite vipimo vyote ili ukamilishe maabara.

**Hadithi za watumizi:**

1. Unapaswa kufafanua kitendakazi kinachoitwa `quick_sort` ili kutekeleza algoriti ya quicksort.

1. Kitendakazi cha `quick_sort` kinapaswa kuchukua orodha ya nambari kamili kama ingizo na kurudisha orodha mpya ya nambari hizi zikiwa zimepangwa kutoka ndogo hadi kubwa.

1. Ili kutekeleza algoriti, unapaswa:
   - Chagua thamani ya pivot kutoka kwa vipengele vya orodha ya ingizo (tumia kipengele cha kwanza au cha mwisho cha orodha).
   - Gawanya orodha ya ingizo katika orodha ndogo tatu: moja yenye vipengele vidogo kuliko pivot, moja yenye vipengele sawa na pivot, na moja yenye vipengele vikubwa kuliko pivot.
   - Fanya wito wa kurudia wa `quick_sort` kupangilia orodha ndogo na kuunganisha orodha ndogo zilizopangwa ili kuzalisha orodha ya mwisho iliyopangwa.

# --hints--

Unapaswa kuwa na kitendakazi kinachoitwa `quick_sort`.

```js
({ test: () => runPython(`assert _Node(_code).has_function("quick_sort")`) })
```

Kitendakazi chako cha `quick_sort` kinapaswa kuchukua kigezo kimoja.

```js
({ test: () => runPython(`
from inspect import signature
sig = signature(quick_sort)
assert len(sig.parameters) == 1
`) })
```

`quick_sort([])` inapaswa kurudisha orodha tupu.

```js
({ test: () => runPython(`assert quick_sort([]) == []`) })
```

Kitendakazi chako cha `quick_sort` hakipaswi kubadilisha orodha iliyotumwa kama hoja.

```js
({ test: () => runPython(`
_test_list = [20, 3, 14, 1, 5]
quick_sort(_test_list)
assert _test_list == [20, 3, 14, 1, 5]
`) })
```

`quick_sort([20, 3, 14, 1, 5])` inapaswa kurudisha `[1, 3, 5, 14, 20]`.

```js
({ test: () => runPython(`assert quick_sort([20, 3, 14, 1, 5]) == [1, 3, 5, 14, 20]`) })
```

`quick_sort([83, 4, 24, 2])` inapaswa kurudisha `[2, 4, 24, 83]`.

```js
({ test: () => runPython(`assert quick_sort([83, 4, 24, 2]) == [2, 4, 24, 83]`) })
```

`quick_sort([4, 42, 16, 23, 15, 8])` inapaswa kurudisha `[4, 8, 15, 16, 23, 42]`.

```js
({ test: () => runPython(`assert quick_sort([4, 42, 16, 23, 15, 8]) == [4, 8, 15, 16, 23, 42]`) })
```

`quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56])` inapaswa kurudisha `[11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`.

```js
({ test: () => runPython(`assert quick_sort([87, 11, 23, 18, 18, 23, 11, 56, 87, 56]) == [11, 11, 18, 18, 23, 23, 56, 56, 87, 87]`) })
```

Hupaswi kuleta moduli yoyote au kutumia njia zilizojengwa ndani za kupanga katika msimbo wako.

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
