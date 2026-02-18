---
id: 66cc1ccfefdd727e18c2ab20
title: 第 14 步
challengeType: 1
dashedName: step-14
---

# --description--

你的 `calculateQuotient` 似乎運作正常，但有一種情況你還沒有測試過。

為你的程式碼添加一個 `console.log`，該 `console.log` 呼叫 `calculateQuotient` 函式（程式），並帶入引數 `3` 和 `0`。

請務必仔細檢查此 `call` 的輸出。

# --hints--

你應該有一個 `console.log`，它以引數 `3` 和 `0` 呼叫 `calculateQuotient` 函式（程式）。

```js
assert.match(code, /console\.log\s*\(\s*calculateQuotient\s*\(\s*3\s*,\s*0\s*\)\s*\)\s*;?/);
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

function calculateQuotient(num1, num2) {
  return num1 / num2;
}

console.log(calculateQuotient(7, 11));

--fcc-editable-region--

--fcc-editable-region--
```
