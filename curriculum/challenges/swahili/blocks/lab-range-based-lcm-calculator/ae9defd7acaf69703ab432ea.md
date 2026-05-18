---
id: ae9defd7acaf69703ab432ea
title: Tekeleza kalkuleta ya LCM inayotegemea safu ya nambari
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

Katika maabara hii, utaunda kitendakazi kinachopokea safu ya data yenye nambari mbili na kurudisha nambari ndogo kabisa ya kawaida (LCM) ya nambari hizo mbili na nambari zote zilizo kati yao.

**Lengo**: Timiza hadithi za watumizi zilizo hapa chini na upite vipimo vyote ili kumaliza maabara hii.

**Hadithi za watumizi:**

1. Unapaswa kuwa na kitendakazi `smallestCommons` kinachokubali safu ya data yenye nambari mbili kama hoja.
1. Kitendakazi `smallestCommons` kinapaswa kurudisha nambari ndogo kabisa ya kawaida inayogawika sawasawa na nambari zote mbili pamoja na nambari zote mfululizo zilizo katika safu kati yao.
1. Kitendakazi kinapaswa kushughulikia ingizo ambapo nambari hizo mbili haziko kwa mpangilio wa nambari.

# --hints--

Unapaswa kuwa na kitendakazi `smallestCommons`.

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` inapaswa kurudisha nambari.

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` inapaswa kurudisha `60`.

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` inapaswa kurudisha `60`.

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` inapaswa kurudisha `2520`.

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` inapaswa kurudisha `360360`.

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` inapaswa kurudisha `6056820`.

```js
assert.strictEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function smallestCommons(arr) {
  let [min, max] = arr.sort((a, b) => a - b);

  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  function lcm(a, b) {
    return (a * b) / gcd(a, b);
  }

  let multiple = min;

  for (let i = min + 1; i <= max; i++) {
    multiple = lcm(multiple, i);
  }

  return multiple;
}
```
