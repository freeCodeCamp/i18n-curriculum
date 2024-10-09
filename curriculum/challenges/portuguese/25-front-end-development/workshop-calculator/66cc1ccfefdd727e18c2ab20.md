---
id: 66cc1ccfefdd727e18c2ab20
title: Passo 14
challengeType: 1
dashedName: step-14
---

# --description--

Your `calculateQuotient` appears to be working correctly but there is one case that you have not tested yet.

Adicione um `console.log` que chama a função `calculateQuotient` com os argumentos `3` e `0`.

Certifique-se de examinar atentamente o resultado dessa chamada.

# --hints--

Você deve ter um `console.log` que chama a função `calculateQuotient` com os argumentos `3` e `0`.

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
