---
id: 691f7773cddba1caf1bf5ecc
title: "Aufgabe 133: Tageslichtstunden"
challengeType: 28
dashedName: challenge-133
---

# --description--

Der 21. Dezember ist die Wintersonnenwende auf der Nordhalbkugel und die Sommersonnenwende auf der Südhalbkugel. Das bedeutet, dass es der Tag mit der geringsten Tageslichtdauer im Norden und der längsten Tageslichtdauer im Süden ist.

Gegeben ist eine Breitengradzahl von -90 bis 90. Geben Sie eine grobe Schätzung der Tageslichtstunden an der Sonnenwende zurück, basierend auf der folgenden Tabelle:

|Breitengrad|Tageslichtstunden|
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

- Wenn der angegebene Breitengrad nicht genau mit einem Eintrag in der Tabelle übereinstimmt, verwenden Sie den Wert des nächstgelegenen Breitengrads.

# --hints--

`daylightHours(45)` sollte `9` zurückgeben.

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` sollte `12` zurückgeben.

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` sollte `24` zurückgeben.

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` sollte `12` zurückgeben.

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` sollte `10` zurückgeben.

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` sollte `0` zurückgeben.

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` sollte `13` zurückgeben.

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` sollte `2` zurückgeben.

```js
assert.equal(daylightHours(70), 2);
```

# --seed--

## --seed-contents--

```js
function daylightHours(latitude) {

  return latitude;
}
```

# --solutions--

```js
function daylightHours(latitude) {
  const table = [
    { lat: -90, hours: 24 },
    { lat: -75, hours: 23 },
    { lat: -60, hours: 21 },
    { lat: -45, hours: 15 },
    { lat: -30, hours: 13 },
    { lat: -15, hours: 12 },
    { lat: 0, hours: 12 },
    { lat: 15, hours: 11 },
    { lat: 30, hours: 10 },
    { lat: 45, hours: 9 },
    { lat: 60, hours: 6 },
    { lat: 75, hours: 2 },
    { lat: 90, hours: 0 }
  ];

  let closest = table[0];

  for (const entry of table) {
    if (Math.abs(entry.lat - latitude) < Math.abs(closest.lat - latitude)) {
      closest = entry;
    }
  }

  return closest.hours;
}
```
