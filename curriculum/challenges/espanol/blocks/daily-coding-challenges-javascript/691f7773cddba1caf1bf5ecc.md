---
id: 691f7773cddba1caf1bf5ecc
title: "Desafío 133: Horas de luz diurna"
challengeType: 28
dashedName: challenge-133
---

# --description--

El 21 de diciembre es el solsticio de invierno para el hemisferio norte y el solsticio de verano para el hemisferio sur. Eso significa que es el día con menos luz solar en el norte y con más luz solar en el sur.

Dado un número de latitud de -90 a 90, devuelve una aproximación aproximada de las horas de luz durante el solsticio usando la siguiente tabla:

|Latitud|Horas de luz diurna|
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

- Si la latitud dada no coincide exactamente con una entrada de la tabla, usa el valor de la latitud más cercana.

# --hints--

`daylightHours(45)` debería devolver `9`.

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` debería devolver `12`.

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` debería devolver `24`.

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` debería devolver `12`.

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` debería devolver `10`.

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` debería devolver `0`.

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` debería devolver `13`.

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` debería devolver `2`.

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
