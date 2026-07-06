---
id: 691f7773cddba1caf1bf5ecc
title: "تحدٍّ 133: ساعات ضوء النهار"
challengeType: 29
dashedName: challenge-133
---

# --description--

يوم 21 ديسمبر هو الانقلاب الشتوي لنصف الكرة الشمالي والانقلاب الصيفي لنصف الكرة الجنوبي. هذا يعني أنه اليوم الذي يحتوي على أقل ساعات ضوء نهار في الشمال وأكثرها في الجنوب.

بالنظر إلى رقم خط العرض من -90 إلى 90، أرجع تقديرًا تقريبيًا لساعات ضوء النهار في يوم الانقلاب باستخدام الجدول التالي:

|خط العرض|ساعات ضوء النهار|
|-|-|
|-90|24|
|-75|23|
|-60|21|
|-45|15|
|-30|13|
|-15|12|
|0|12|
|15|11|
|30|10|
|45|9|
|60|6|
|75|2|
|90|0|

- إذا لم يتطابق خط العرض المعطى تمامًا مع أي إدخال في الجدول، فاستخدم قيمة أقرب خط عرض.

# --hints--

`daylight_hours(45)` يجب أن تُرجع `9`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(45), 9)`)
}})
```

`daylight_hours(0)` يجب أن تُرجع `12`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(0), 12)`)
}})
```

`daylight_hours(-90)` يجب أن تُرجع `24`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-90), 24)`)
}})
```

`daylight_hours(-10)` يجب أن تُرجع `12`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-10), 12)`)
}})
```

`daylight_hours(23)` يجب أن تُرجع `10`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(23), 10)`)
}})
```

`daylight_hours(88)` يجب أن تُرجع `0`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(88), 0)`)
}})
```

`daylight_hours(-33)` يجب أن تُرجع `13`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-33), 13)`)
}})
```

`daylight_hours(70)` يجب أن تُرجع `2`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(70), 2)`)
}})
```

# --seed--

## --seed-contents--

```py
def daylight_hours(latitude):

    return latitude
```

# --solutions--

```py
def daylight_hours(latitude):
    table = [
        (-90, 24),
        (-75, 23),
        (-60, 21),
        (-45, 15),
        (-30, 13),
        (-15, 12),
        (0, 12),
        (15, 11),
        (30, 10),
        (45, 9),
        (60, 6),
        (75, 2),
        (90, 0)
    ]

    closest_lat, hours = table[0]

    for lat, h in table:
        if abs(lat - latitude) < abs(closest_lat - latitude):
            closest_lat, hours = lat, h

    return hours
```
