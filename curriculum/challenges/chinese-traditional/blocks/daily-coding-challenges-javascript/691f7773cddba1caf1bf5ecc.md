---
id: 691f7773cddba1caf1bf5ecc
title: "挑戰 133：日照時數"
challengeType: 28
dashedName: challenge-133
---

# --description--

12 月 21 日是北半球的冬至，也是南半球的夏至。這表示這一天北半球的日照時間最短，南半球的日照時間最長。

給定一個介於 -90 到 90 的緯度數字，使用下表傳回夏至日的日照時數粗略估計值：

|Latitude|Daylight Hours|
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

- 如果給定的緯度與表格中的條目不完全相符，請使用最接近緯度的值。

# --hints--

`daylightHours(45)` 應該傳回 `9`。

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` 應該傳回 `12`。

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` 應該傳回 `24`。

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` 應該傳回 `12`。

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` 應該傳回 `10`。

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` 應該傳回 `0`。

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` 應該傳回 `13`。

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` 應該傳回 `2`。

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
