---
id: 66cc1deb1f04647f2aabee2b
title: Schritt 15
challengeType: 1
dashedName: step-15
---

# --description--

Wenn Sie in der Konsole nachsehen, sehen Sie den Wert `Infinity`. `Infinity` ist ein spezieller Wert in JavaScript, der eine Zahl darstellt, die größer ist als jede andere Zahl.

Die Division durch Null ist in der Mathematik keine gültige Operation.

Um diesen Sonderfall zu berücksichtigen, sollten Sie Ihre `calculateQuotient`-Funktion so aktualisieren, dass stattdessen geprüft wird, ob `num2` null ist.

Wenn das der Fall ist, sollte die Funktion den String `"Error: Division by zero"` zurückgeben. Andernfalls sollte sie das Ergebnis der Division von `num1` durch `num2` zurückgeben.

# --hints--

Ihre `calculateQuotient`-Funktion sollte den String `"Error: Division by zero"` zurückgeben, wenn `num2` null ist.

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

Ihre `calculateQuotient`-Funktion sollte das Ergebnis der Division von `num1` durch `num2` zurückgeben, wenn `num2` nicht null ist.

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
