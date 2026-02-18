---
id: 691f7773cddba1caf1bf5ecc
title: "挑战 133：日照时间"
challengeType: 28
dashedName: challenge-133
---

# --description--

12 月 21 日是北半球的冬至，也是南半球的夏至。这意味着这一天北半球的日照时间最短，南半球的日照时间最长。

给定一个从 -90 到 90 的纬度数字，使用以下表格返回夏至日的日照时间大致估算值：

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

- 如果给定的纬度与表格条目不完全匹配，则使用最接近纬度的值。

# --hints--

`daylightHours(45)` 应该返回 `9`。

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` 应返回 `12`。

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` 应返回 `24`。

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` 应该返回 `12`。

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` 应返回 `10`。

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` 应返回 `0`。

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` 应该返回 `13`。

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` 应该返回 `2`。

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
