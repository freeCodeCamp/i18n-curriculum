---
id: 66cc1deb1f04647f2aabee2b
title: Passo 15
challengeType: 1
dashedName: step-15
---

# --description--

Se você olhar no console, verá o valor `Infinity`. `Infinity` é um valor especial em JavaScript que representa um número maior do que qualquer outro número.

A divisão por zero não é uma operação válida na matemática.

Para tratar este caso limite, você deve atualizar a função `calculateQuotient` para verificar se `num2` é zero. 

Se for, a função deve retornar a string `"Error: Division by zero"`. Caso contrário, deve retornar o resultado da divisão de `num1` por `num2`.

# --hints--

Sua função `calculateQuotient` deve retornar a string `"Error: Division by zero"` se `num2` for zero. 

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

A função `calculateQuotient` deve retornar o resultado da divisão de `num1` por `num2` se `num2` não for zero.

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
