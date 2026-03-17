---
id: 691f7773cddba1caf1bf5ecc
title: "Sfida 133: ore di luce diurna"
challengeType: 29
dashedName: challenge-133
---

# --description--

Il 21 dicembre è il solstizio d'inverno per l'emisfero nord e il solstizio d'estate per l'emisfero sud. Questo significa che è il giorno con meno ore di luce nel nord e con più ore di luce nel sud.

Dato un numero di latitudine da -90 a 90, restituisci una stima approssimativa delle ore di luce durante il solstizio usando la seguente tabella:

|Latitudine|Ore di luce|
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

- Se la latitudine fornita non corrisponde esattamente a una voce della tabella, usa il valore della latitudine più vicina.

# --hints--

`daylight_hours(45)` dovrebbe restituire `9`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(45), 9)`)
}})
```

`daylight_hours(0)` dovrebbe restituire `12`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(0), 12)`)
}})
```

`daylight_hours(-90)` dovrebbe restituire `24`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-90), 24)`)
}})
```

`daylight_hours(-10)` dovrebbe restituire `12`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-10), 12)`)
}})
```

`daylight_hours(23)` dovrebbe restituire `10`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(23), 10)`)
}})
```

`daylight_hours(88)` dovrebbe restituire `0`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(88), 0)`)
}})
```

`daylight_hours(-33)` dovrebbe restituire `13`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(daylight_hours(-33), 13)`)
}})
```

`daylight_hours(70)` dovrebbe restituire `2`.

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
