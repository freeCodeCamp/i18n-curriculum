---
id: ae9defd7acaf69703ab432ea
title: 實作一個基於區間的 LCM 計算器
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

在本實驗中，你將創建一個函式（程式），該函式接受一個包含兩個數字的陣列，並傳回這兩個數字及其之間所有數字的最小公倍數（LCM）。

**目標**：完成以下使用者故事並通過所有測試以完成實驗。

**使用者故事**

1. 你應該有一個 `smallestCommons` 函式（程式），它接受一個包含兩個數字的陣列作為引數。
1. `smallestCommons` 函式（程式）應該傳回能被兩個數字及它們之間所有連續數字整除的最小公倍數。
1. 該函式（程式）應該控制代碼處理兩個數字未按數值順序輸入的情況。

# --hints--

你應該有一個 `smallestCommons` 函式（程式）。

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` 應該傳回一個數字。

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` 應該傳回 `60`。

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` 應該傳回 `60`。

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` 應該傳回 `2520`。

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` 應該傳回 `360360`。

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` 應該傳回 `6056820`。

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
