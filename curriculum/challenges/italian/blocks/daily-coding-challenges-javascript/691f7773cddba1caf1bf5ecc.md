---
id: 691f7773cddba1caf1bf5ecc
title: "Sfida 133: ore di luce diurna"
challengeType: 28
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

`daylightHours(45)` dovrebbe restituire `9`.

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` dovrebbe restituire `12`.

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` dovrebbe restituire `24`.

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` dovrebbe restituire `12`.

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` dovrebbe restituire `10`.

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` dovrebbe restituire `0`.

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` dovrebbe restituire `13`.

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` dovrebbe restituire `2`.

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
