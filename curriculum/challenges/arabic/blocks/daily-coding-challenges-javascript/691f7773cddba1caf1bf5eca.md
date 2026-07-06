---
id: 691f7773cddba1caf1bf5eca
title: "تحدٍّ 131: زوجي"
challengeType: 28
dashedName: challenge-131
---

# --description--

معطاة مصفوفة من الأعداد الصحيحة ورقم هدف، ابحث عن كل أزواج العناصر في المصفوفة التي مجموع قيمها يساوي الهدف وأرجع مجموع مؤشرات هذه الأزواج.

على سبيل المثال، معطاة `[2, 3, 4, 6, 8]` و `10`، ستجد زوجين صالحين:

- `2` و `8` (2 + 8 = 10)، مؤشراتهم `0` و `4`
- `4` و `6` (4 + 6 = 10)، مؤشراتهم `2` و `3`

اجمع كل المؤشرات معًا لتحصل على قيمة إرجاع `9`.

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` يجب أن تُرجع `9`.

```js
assert.equal(pairwise([2, 3, 4, 6, 8], 10), 9);
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` يجب أن تُرجع `15`.

```js
assert.equal(pairwise([4, 1, 5, 2, 6, 3], 7), 15);
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` يجب أن تُرجع `22`.

```js
assert.equal(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22);
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` يجب أن تُرجع `10`.

```js
assert.equal(pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24), 10);
```

# --seed--

## --seed-contents--

```js
function pairwise(arr, target) {

  return arr;
}
```

# --solutions--

```js
function pairwise(arr, target) {
  let total = 0;

  for (let i = 0; i < arr.length; i++) {
    for (let j = i + 1; j < arr.length; j++) {
      if (arr[i] + arr[j] === target) {
        total += i + j;
      }
    }
  }

  return total;
}
```
