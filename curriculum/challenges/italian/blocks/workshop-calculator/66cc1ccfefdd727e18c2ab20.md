---
id: 66cc1ccfefdd727e18c2ab20
title: Passaggio 14
challengeType: 1
dashedName: step-14
---

# --description--

Il tuo `calculateQuotient` sembra funzionare correttamente ma c’è un caso che non hai ancora testato.

Aggiungi un `console.log` che chiami la funzione `calculateQuotient` con gli argomenti `3` e `0`.

Assicurati di osservare attentamente l’output di questa chiamata.

# --hints--

Dovresti avere un `console.log` che chiami la funzione `calculateQuotient` con gli argomenti `3` e `0`.

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
