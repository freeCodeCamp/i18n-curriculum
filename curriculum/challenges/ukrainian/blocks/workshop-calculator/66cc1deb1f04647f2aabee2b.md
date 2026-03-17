---
id: 66cc1deb1f04647f2aabee2b
title: Крок 15
challengeType: 1
dashedName: step-15
---

# --description--

Якщо ви подивитесь у консоль, то побачите значення `Infinity`. `Infinity` — це спеціальне значення в JavaScript, яке представляє число, більше за будь-яке інше число.

Ділення на нуль не є дійсною операцією в математиці.

Щоб врахувати цей крайній випадок, слід оновити вашу функцію `calculateQuotient`, щоб замість цього перевіряти, чи дорівнює `num2` нулю.

Якщо так, функція має повертати рядок `"Error: Division by zero"`. Інакше вона має повертати результат ділення `num1` на `num2`.

# --hints--

Ваша функція `calculateQuotient` має повертати рядок `"Error: Division by zero"`, якщо `num2` дорівнює нулю.

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

Ваша функція `calculateQuotient` має повертати результат ділення `num1` на `num2`, якщо `num2` не дорівнює нулю.

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
