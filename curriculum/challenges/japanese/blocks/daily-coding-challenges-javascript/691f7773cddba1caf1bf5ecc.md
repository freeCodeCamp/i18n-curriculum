---
id: 691f7773cddba1caf1bf5ecc
title: "チャレンジ 133: 昼間の時間"
challengeType: 28
dashedName: challenge-133
---

# --description--

12月21日は北半球の冬至であり、南半球の夏至です。つまり、この日は北半球で最も昼間の時間が短く、南半球で最も昼間の時間が長い日です。

-90から90までの緯度の数字が与えられたとき、以下のテーブルを使って冬至の日の昼間の時間のおおよその見積もりを返してください。

|緯度|昼間の時間|
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

- 与えられた緯度がテーブルの値と正確に一致しない場合は、最も近い緯度の値を使ってください。

# --hints--

`daylightHours(45)` should return `9`.

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` should return `12`.

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` should return `24`.

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` should return `12`.

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` should return `10`.

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` should return `0`.

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` should return `13`.

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` should return `2`.

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
