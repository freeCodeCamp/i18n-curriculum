---
id: 691f7773cddba1caf1bf5eca
title: "チャレンジ 131: ペアワイズ"
challengeType: 28
dashedName: challenge-131
---

# --description--

整数の配列と目標の数が与えられたとき、配列内の値の合計が目標の数になるすべての要素のペアを見つけ、それらのインデックスの合計を戻り値として返してください。

例えば、`[2, 3, 4, 6, 8]` と `10` が与えられた場合、2つの有効なペアが見つかります：

- `2` と `8` （2 + 8 = 10）、インデックスは `0` と `4`
- `4` と `6` （4 + 6 = 10）、インデックスは `2` と `3`

すべてのインデックスを合計して、戻り値として `9` を得ます。

# --hints--

`pairwise([2, 3, 4, 6, 8], 10)` は `9` を返すべきです。

```js
assert.equal(pairwise([2, 3, 4, 6, 8], 10), 9);
```

`pairwise([4, 1, 5, 2, 6, 3], 7)` は `15` を返すべきです。

```js
assert.equal(pairwise([4, 1, 5, 2, 6, 3], 7), 15);
```

`pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20)` は `22` を返すべきです。

```js
assert.equal(pairwise([-30, -15, 5, 10, 15, -5, 20, -40], -20), 22);
```

`pairwise([7, 9, 13, 19, 21, 6, 3, 1, 4, 8, 12, 22], 24)` は `10` を返すべきです。

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
