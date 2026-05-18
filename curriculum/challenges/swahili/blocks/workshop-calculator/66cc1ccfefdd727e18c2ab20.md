---
id: 66cc1ccfefdd727e18c2ab20
title: Hatua 14
challengeType: 1
dashedName: step-14
---

# --description--

`calculateQuotient` yako inaonekana inafanya kazi vizuri lakini kuna kesi moja ambayo bado hujajaribu.

Ongeza `console.log` inayofanya wito wa kitendakazi cha `calculateQuotient` kwa hoja `3` na `0`.

Hakikisha unatazama kwa makini matokeo ya wito huu.

# --hints--

Unapaswa kuwa na `console.log` inayofanya wito wa kitendakazi cha `calculateQuotient` kwa hoja `3` na `0`.

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
