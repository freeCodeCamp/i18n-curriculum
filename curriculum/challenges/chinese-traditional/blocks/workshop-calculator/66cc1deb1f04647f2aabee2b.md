---
id: 66cc1deb1f04647f2aabee2b
title: 第 15 步
challengeType: 1
dashedName: step-15
---

# --description--

如果你查看主控台，你會看到 `Infinity` 值。`Infinity` 是 JavaScript 中一個特殊的值，用來表述比任何其他數字都大的數字。

除以零在數學中不是有效的操作。

為了處理這個邊緣案例，你應該更新你的 `calculateQuotient` 函式（程式），改為檢查 `num2` 是否為零。 

如果是，該函式（程式）應該傳回字串 `"Error: Division by zero"`。否則，應該傳回將 `num1` 除以 `num2` 的結果。

# --hints--

如果 `num2` 是零，你的 `calculateQuotient` 函式（程式）應該傳回字串 `"Error: Division by zero"`。 

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

如果 `num2` 不為零，你的 `calculateQuotient` 函式（程式）應該傳回將 `num1` 除以 `num2` 的結果。

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
