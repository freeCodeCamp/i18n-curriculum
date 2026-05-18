---
id: 691f7773cddba1caf1bf5eca
title: "Zoezi la 131: Kwa jozi"
challengeType: 28
dashedName: challenge-131
---

# --description--

Ikiwa umepewa safu ya data ya nambari kamili na nambari lengwa, tafuta jozi zote za vipengele katika safu ya data ambavyo thamani zao zinajumuika kuwa nambari lengwa na rudisha jumla ya nambari za viashiria vyao.

Kwa mfano, ukipata `[2, 3, 4, 6, 8]` na `10`, utapata jozi mbili halali:

- `2` na `8` (2 + 8 = 10), viashiria vyake ni `0` na `4`
- `4` na `6` (4 + 6 = 10), viashiria vyake ni `2` na `3`

Jumlisha viashiria vyote kupata thamani ya return ya `9`.

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` inapaswa kurudisha `9`.

```js
assert.equal(pairwise([2, 3, 4, 6, 8], 10), 9);
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` inapaswa kurudisha `15`.

```js
assert.equal(pairwise([4, 1, 5, 2, 6, 3], 7), 15);
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` inapaswa kurudisha `22`.

```js
assert.equal(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22);
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` inapaswa kurudisha `10`.

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
