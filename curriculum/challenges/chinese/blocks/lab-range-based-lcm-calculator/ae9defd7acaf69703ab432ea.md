---
id: ae9defd7acaf69703ab432ea
title: 实现基于范围的 LCM 计算器
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

在本实验中，你将创建一个函数，该函数接受一个包含两个数字的数组，并返回这两个数字及其之间所有数字的最小公倍数（LCM）。

**目标**：完成以下用户故事并通过所有测试以完成实验。

**用户故事**

1. 你应该有一个 `smallestCommons` 函数，它接受一个包含两个数字的数组作为参数。
1. `smallestCommons` 函数应返回能够被两个数字及它们之间范围内所有循序数字整除的最小公倍数。
1. 该函数应处理两个数字不按数值顺序排列的输入。

# --hints--

你应该有一个 `smallestCommons` 函数。

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` 应返回 a number。

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` 应该返回 `60`。

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` 应该返回 `60`。

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` 应该返回 `2520`。

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` 应该返回 `360360`。

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` 应该返回 `6056820`。

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
