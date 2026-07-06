---
id: 691f7773cddba1caf1bf5ecc
title: "تحدٍّ 133: ساعات ضوء النهار"
challengeType: 28
dashedName: challenge-133
---

# --description--

يوم 21 ديسمبر هو الانقلاب الشتوي لنصف الكرة الشمالي والانقلاب الصيفي لنصف الكرة الجنوبي. هذا يعني أنه اليوم الذي يحتوي على أقل ساعات ضوء نهار في الشمال وأكثرها في الجنوب.

معطى رقم خط العرض من -90 إلى 90، أرجع تقديرًا تقريبيًا لساعات ضوء النهار في يوم الانقلاب باستخدام الجدول التالي:

|خط العرض|ساعات ضوء النهار|
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

- إذا لم يتطابق خط العرض المعطى تمامًا مع أي مدخل في الجدول، فاستخدم قيمة أقرب خط عرض.

# --hints--

`daylightHours(45)` يجب أن تُرجع `9`.

```js
assert.equal(daylightHours(45), 9);
```

`daylightHours(0)` يجب أن تُرجع `12`.

```js
assert.equal(daylightHours(0), 12);
```

`daylightHours(-90)` يجب أن تُرجع `24`.

```js
assert.equal(daylightHours(-90), 24);
```

`daylightHours(-10)` يجب أن تُرجع `12`.

```js
assert.equal(daylightHours(-10), 12);
```

`daylightHours(23)` يجب أن تُرجع `10`.

```js
assert.equal(daylightHours(23), 10);
```

`daylightHours(88)` يجب أن تُرجع `0`.

```js
assert.equal(daylightHours(88), 0);
```

`daylightHours(-33)` يجب أن تُرجع `13`.

```js
assert.equal(daylightHours(-33), 13);
```

`daylightHours(70)` يجب أن تُرجع `2`.

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
