---
id: 66cc1deb1f04647f2aabee2b
title: Hatua 15
challengeType: 1
dashedName: step-15
---

# --description--

Kama utaangalia kwenye konsoli, utaona thamani ya `Infinity`. `Infinity` ni thamani maalum katika JavaScript inayowakilisha nambari kubwa kuliko nambari nyingine yoyote.

Mgawanyiko kwa sifuri si operesheni halali katika hisabati.

Ili kushughulikia kesi hii ya kipekee, unapaswa kusahihisha kitendakazi chako cha `calculateQuotient` badala yake kihakikishe kama `num2` ni sifuri.

Kama ni hivyo, kitendakazi kinapaswa kurudisha mfuatano wa herufi `"Error: Division by zero"`. Vinginevyo, kinapaswa kurudisha matokeo ya kugawanya `num1` kwa `num2`.

# --hints--

Kitendakazi chako cha `calculateQuotient` kinapaswa kurudisha mfuatano wa herufi `"Error: Division by zero"` ikiwa `num2` ni sifuri.

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

Kitendakazi chako cha `calculateQuotient` kinapaswa kurudisha matokeo ya kugawanya `num1` kwa `num2` ikiwa `num2` si sifuri.

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

function calculateQuotient(num1, num2) {
--fcc-editable-region--
  return num1 / num2;
--fcc-editable-region--
}

console.log(calculateQuotient(7, 11));
console.log(calculateQuotient(3, 0));
```
