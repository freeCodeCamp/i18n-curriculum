---
id: ae9defd7acaf69703ab432ea
title: 範囲ベースのLCM計算機を実装する
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

このラボでは、2つの数字の配列を受け取り、その2つの数字とその間のすべての数字の最小公倍数（LCM）を返す関数を作成します。

**目的**：以下のストーリーを満たし、すべてのテストに合格してラボを完了してください。

**ストーリー**

1. `smallestCommons` 関数は、2つの数字の配列を引数として受け取る必要があります。
1. `smallestCommons` 関数は、両方の数字とその間の連続したすべての数字で割り切れる最小の公倍数を返す必要があります。
1. 関数は、2つの数字が数値の順序になっていない入力も処理できる必要があります。

# --hints--

`smallestCommons` 関数を用意してください。

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` は数値を返す必要があります。

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` は `60` を返す必要があります。

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` は `60` を返す必要があります。

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` は `2520` を返す必要があります。

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` は `360360` を返す必要があります。

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` は `6056820` を返す必要があります。

```js
assert.strictEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function smallestCommons(arr) {
  let [min, max] = arr.sort((a, b) => a - b);

  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  function lcm(a, b) {
    return (a * b) / gcd(a, b);
  }

  let multiple = min;

  for (let i = min + 1; i <= max; i++) {
    multiple = lcm(multiple, i);
  }

  return multiple;
}
```
