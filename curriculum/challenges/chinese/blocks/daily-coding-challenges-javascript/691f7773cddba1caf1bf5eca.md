---
id: 691f7773cddba1caf1bf5eca
title: "挑战 131：点对"
challengeType: 28
dashedName: challenge-131
---

# --description--

给定一个整数数组和一个目标数字，查找数组中所有值相加等于目标的元素点对，并返回它们索引的和。

例如，给定 `[2, 3, 4, 6, 8]` 和 `10`，你将查找两个有效点对：

- `2` 和 `8` （2 ＋ 8 ＝ 10），它们的索引是 `0` 和 `4`
- `4` 和 `6`（4 + 6 = 10），它们的索引是 `2` 和 `3`

将所有索引相加以获得返回值 `9`。

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` 应该返回 `9`。

```js
assert.equal(pairwise([2, 3, 4, 6, 8], 10), 9);
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` 应该返回 `15`。

```js
assert.equal(pairwise([4, 1, 5, 2, 6, 3], 7), 15);
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` 应该返回 `22`。

```js
assert.equal(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22);
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` 应该返回 `10`。

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
