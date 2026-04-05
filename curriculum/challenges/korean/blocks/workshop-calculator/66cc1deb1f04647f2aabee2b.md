---
id: 66cc1deb1f04647f2aabee2b
title: 15단계
challengeType: 1
dashedName: step-15
---

# --description--

콘솔을 보면 `Infinity` 값을 볼 수 있습니다. `Infinity`은 JavaScript에서 다른 어떤 숫자보다 큰 숫자를 나타내는 특별한 값입니다.

0으로 나누기는 수학적으로 유효한 연산이 아닙니다.

이 예외 상황을 처리하려면 `calculateQuotient` 함수를 업데이트하여 `num2`이 0인지 확인해야 합니다.

만약 0이라면 함수는 문자열 `"Error: Division by zero"`를 반환해야 합니다. 그렇지 않으면 `num1`를 `num2`으로 나눈 결과를 반환해야 합니다.

# --hints--

`calculateQuotient` 함수는 `"Error: Division by zero"`이 0일 때 문자열 `num2`를 반환해야 합니다.

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

`calculateQuotient` 함수는 `num1`이 0이 아닐 때 `num2`을 `num2`로 나눈 결과를 반환해야 합니다.

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
