---
id: 66cc1deb1f04647f2aabee2b
title: Paso 15
challengeType: 1
dashedName: step-15
---

# --description--

Si miras en la consola, verás el valor `Infinity`. `Infinity` es un valor especial en JavaScript que representa un número mayor que cualquier otro número.

La división por cero no es una operación válida en matemáticas.

Para tener en cuenta este caso extremo, debes actualizar tu función `calculateQuotient` para comprobar si `num2` es cero.

Si `num2` es cero, la función debe devolver la cadena `"Error: División por cero"`. De lo contrario, debe devolver el resultado de dividir `num1` por `num2`.

# --hints--

Tu función `calculateQuotient` debe devolver la cadena `"Error: División por cero"` si `num2` es cero.

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

Tu función `calculateQuotient` debe devolver el resultado de dividir `num1` por `num2` si `num2` no es cero.

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
