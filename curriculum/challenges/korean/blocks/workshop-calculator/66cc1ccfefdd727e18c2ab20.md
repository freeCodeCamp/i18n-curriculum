---
id: 66cc1ccfefdd727e18c2ab20
title: 14단계
challengeType: 1
dashedName: step-14
---

# --description--

`calculateQuotient`가 제대로 작동하는 것 같지만 아직 테스트하지 않은 경우가 하나 있습니다.

`console.log`를 추가하여 `calculateQuotient` 함수를 인수 `3`과 `0`로 호출하세요.

이 호출의 출력 결과를 꼼꼼히 확인하세요.

# --hints--

`console.log`가 `calculateQuotient` 함수를 인수 `3`과 `0`로 호출해야 합니다.

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
