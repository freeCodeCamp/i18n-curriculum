---
id: 66cc1ccfefdd727e18c2ab20
title: Paso 14
challengeType: 1
dashedName: step-14
---

# --description--

Tu `calculateQuotient` parece funcionar correctamente, pero hay un caso que aún no has probado.

Añade un `console.log` que llama a la función `calculateQuotient` con los argumentos `3` y `0`.

Asegúrate de observar detenidamente el resultado de esta llamada.

# --hints--

Deberías tener un `console.log` que llama a la función `calculateQuotient` con los argumentos `3` y `0`.

```js
const strippedCode = __helpers.removeWhiteSpace(__helpers.removeJSComments(code));
const expectedStatement = "console.log(calculateQuotient(3,0))";
assert.include(strippedCode, expectedStatement);
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
