---
id: 691f7773cddba1caf1bf5ecc
title: "Desafio 133: Horas de Luz do Dia"
challengeType: 29
dashedName: challenge-133
---

# --description--

21 de dezembro é o solstício de inverno para o hemisfério norte e o solstício de verão para o hemisfério sul. Isso significa que é o dia com menos luz do dia no norte e mais luz do dia no sul.

Dado um número de latitude de -90 a 90, retorne uma aproximação aproximada das horas de luz do dia no solstício usando a tabela a seguir:

|Latitude|Horas de Luz do Dia|
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

- Se a latitude fornecida não corresponder exatamente a uma entrada da tabela, use o valor da latitude mais próxima.

# --hints--

`daylight_hours(45)` deve retornar `9`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(45), 9)`)
}})
```

`daylight_hours(0)` deve retornar `12`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(0), 12)`)
}})
```

`daylight_hours(-90)` deve retornar `24`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-90), 24)`)
}})
```

`daylight_hours(-10)` deve retornar `12`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-10), 12)`)
}})
```

`daylight_hours(23)` deve retornar `10`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(23), 10)`)
}})
```

`daylight_hours(88)` deve retornar `0`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(88), 0)`)
}})
```

`daylight_hours(-33)` deve retornar `13`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-33), 13)`)
}})
```

`daylight_hours(70)` deve retornar `2`.

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
