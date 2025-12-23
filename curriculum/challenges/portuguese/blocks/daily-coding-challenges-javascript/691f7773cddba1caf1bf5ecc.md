---
id: 691f7773cddba1caf1bf5ecc
title: "Desafio 133: Horas de Luz do Dia"
challengeType: 28
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

`daylightHours(45)` deve retornar `9`.

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` deve retornar `12`.

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` deve retornar `24`.

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` deve retornar `12`.

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` deve retornar `10`.

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` deve retornar `0`.

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` deve retornar `13`.

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` deve retornar `2`.

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
