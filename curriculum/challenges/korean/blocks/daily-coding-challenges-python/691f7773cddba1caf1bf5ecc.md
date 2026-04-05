---
id: 691f7773cddba1caf1bf5ecc
title: "Challenge 133: Daylight Hours"
challengeType: 29
dashedName: challenge-133
---

# --description--

12월 21일은 북반구의 동지이자 남반구의 하지입니다. 즉, 북쪽에서는 일조 시간이 가장 짧고 남쪽에서는 가장 긴 날입니다.

-90에서 90 사이의 위도 숫자가 주어지면, 다음 표를 사용해 동지의 일조 시간을 대략적으로 계산해 반환하세요:

|위도|일조 시간|
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

- 주어진 위도가 표에 정확히 일치하지 않으면, 가장 가까운 위도의 값을 사용하세요.

# --hints--

`daylight_hours(45)` should return `9`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(45), 9)`)
}})
```

`daylight_hours(0)` should return `12`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(0), 12)`)
}})
```

`daylight_hours(-90)` should return `24`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-90), 24)`)
}})
```

`daylight_hours(-10)` should return `12`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-10), 12)`)
}})
```

`daylight_hours(23)` should return `10`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(23), 10)`)
}})
```

`daylight_hours(88)` should return `0`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(88), 0)`)
}})
```

`daylight_hours(-33)` should return `13`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-33), 13)`)
}})
```

`daylight_hours(70)` should return `2`.

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
