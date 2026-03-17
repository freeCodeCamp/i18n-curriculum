---
id: 66cc1deb1f04647f2aabee2b
title: Passaggio 15
challengeType: 1
dashedName: step-15
---

# --description--

Se guardi nella console, vedrai il valore `Infinity`. `Infinity` è un valore speciale in JavaScript che rappresenta un numero maggiore di qualsiasi altro numero.

La divisione per zero non è un'operazione valida in matematica.

Per gestire questo caso limite, dovresti aggiornare la tua funzione `calculateQuotient` per verificare invece se `num2` è zero.

Se lo è, la funzione dovrebbe restituire la stringa `"Error: Division by zero"`. Altrimenti, dovrebbe restituire il risultato della divisione di `num1` per `num2`.

# --hints--

La tua funzione `calculateQuotient` dovrebbe restituire la stringa `"Error: Division by zero"` se `num2` è zero.

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

La tua funzione `calculateQuotient` dovrebbe restituire il risultato della divisione di `num1` per `num2` se `num2` non è zero.

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
