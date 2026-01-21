---
id: 66cc1deb1f04647f2aabee2b
title: 步驟15
challengeType: 1
dashedName: step-15
---

# --description--

如果你查看控制檯，就會看到 `Infinity` 值。 `Infinity` 是 JavaScript 中的一個特殊值，表示一個比其他任何數字都大的數字。

除以零不是數學中的有效運算。

爲了考慮這種極端情況，你應該更新 `calculateQuotient` 函數，改爲檢查 `num2` 是否爲零。

如果是，函數應返回字符串 `"Error: Division by zero"`。 否則，應返回 `num1` 除以 `num2` 的結果。

# --hints--

如果 `num2` 是零，你的 `calculateQuotient` 函數應返回字符串 `"Error: Division by zero"`。

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

如果 `num2` 不是零，你的 `calculateQuotient` 函數應返回 `num1` 除以 `num2` 的結果。

```js
assert.strictEqual(calculateQuotient(10, 2), 5);
assert.strictEqual(calculateQuotient(3, 3), 1);
```

# --seed--

## --seed-contents--

```js
function calculateSum(num1, num2) {
  return num1 + num2;
}

console.log(calculateSum(2, 5));
console.log(calculateSum(10, 10));
console.log(calculateSum(5, 5));

function calculateDifference(num1, num2) {
  return num1 - num2;
}

console.log(calculateDifference(22, 5));
console.log(calculateDifference(12, 1));
console.log(calculateDifference(17, 9));

function calculateProduct(num1, num2) {
  return num1 * num2;
}

console.log(calculateProduct(13, 5));

--fcc-editable-region--
function calculateQuotient(num1, num2) {
  return num1 / num2;
}
--fcc-editable-region--

console.log(calculateQuotient(7, 11));
console.log(calculateQuotient(3, 0));
```
