---
id: 691f7773cddba1caf1bf5ecc
title: "도전 과제 133: 일조 시간"
challengeType: 28
dashedName: challenge-133
---

# --description--

12월 21일은 북반구의 동지이자 남반구의 하지입니다. 즉, 북쪽에서는 일조 시간이 가장 짧고 남쪽에서는 가장 긴 날입니다.

-90에서 90 사이의 위도 숫자가 주어지면, 다음 표를 사용해 동지의 일조 시간을 대략적으로 계산해 반환하세요:

|위도|일조 시간|
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

- 주어진 위도가 표에 정확히 일치하지 않으면, 가장 가까운 위도의 값을 사용하세요.

# --hints--

`daylightHours(45)`는 `9`을 반환해야 합니다.

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)`는 `12`을 반환해야 합니다.

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)`는 `24`을 반환해야 합니다.

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)`는 `12`을 반환해야 합니다.

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)`는 `10`을 반환해야 합니다.

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)`는 `0`을 반환해야 합니다.

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)`는 `13`을 반환해야 합니다.

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)`는 `2`을 반환해야 합니다.

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
