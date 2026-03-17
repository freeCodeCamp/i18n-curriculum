---
id: 691f7773cddba1caf1bf5ecc
title: "Завдання 133: години денного світла"
challengeType: 28
dashedName: challenge-133
---

# --description--

21 грудня — це зимове сонцестояння для північної півкулі і літнє сонцестояння для південної півкулі. Це означає, що в цей день найменше годин денного світла на півночі і найбільше на півдні.

За заданим числом широти від -90 до 90 поверніть приблизну кількість годин денного світла на сонцестоянні, використовуючи таку таблицю:

|Широта|Години денного світла|
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

- Якщо задана широта не співпадає точно з жодним записом у таблиці, використовуйте значення найближчої широти.

# --hints--

`daylightHours(45)` має повертати `9`.

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` має повертати `12`.

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` має повертати `24`.

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` має повертати `12`.

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` має повертати `10`.

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` має повертати `0`.

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` має повертати `13`.

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` має повертати `2`.

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
