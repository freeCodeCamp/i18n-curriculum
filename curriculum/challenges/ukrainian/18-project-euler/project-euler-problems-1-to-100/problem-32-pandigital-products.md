---
id: 5900f38c1000cf542c50fe9f
title: 'Завдання 32: панцифрові добутки'
challengeType: 1
forumTopicId: 301976
dashedName: problem-32-pandigital-products
---

# --description--

`n`-значне число називають панцифровим, якщо воно містить всі цифри від 1 до `n` лише один раз. Наприклад, п’ятизначне число 15234 є панцифровим, оскільки містить цифри від 1 до 5.

Добуток 7254 є незвичайним, бо приклад 39 × 186 = 7254, який складається з двох множників та добутку, є панцифровим, оскільки містить цифри від 1 до 9.

Знайдіть суму всіх добутків, приклад яких можна записати у вигляді панцифрового від 1 до `n`.

**Підказка:** деякі добутки можна отримати декількома способами, тому переконайтесь, що ви використали його лише один раз.

# --hints--

`pandigitalProducts(4)` має повернути число.

```js
assert(typeof pandigitalProducts(4) === 'number');
```

`pandigitalProducts(4)` має повернути `12`.

```js
assert.strictEqual(pandigitalProducts(4), 12);
```

`pandigitalProducts(6)` має повернути `162`.

```js
assert.strictEqual(pandigitalProducts(6), 162);
```

`pandigitalProducts(7)` має повернути `0`.

```js
assert.strictEqual(pandigitalProducts(7), 0);
```

`pandigitalProducts(8)` має повернути `13458`.

```js
assert.strictEqual(pandigitalProducts(8), 13458);
```

`pandigitalProducts(9)` має повернути `45228`.

```js
assert.strictEqual(pandigitalProducts(9), 45228);
```

# --seed--

## --seed-contents--

```js
function pandigitalProducts(n) {

  return true;
}

pandigitalProducts(4);
```

# --solutions--

```js
// Check for pandigital number
function isPandigital(digitStr) {
  return digitStr
    .split('')
    .sort()
    .every((c, i) => c == i + 1);
}

// Concatenate 3 numbers
function concatenate3Nums(a, b, c) {
  return a.toString() + b.toString() + c.toString();
}

// Find sum of all pandigital products
function pandigitalProducts(n) {
  const products = [];
  let sum = 0;
  const max = Number(Array(n)
    .fill(0)
    .map((_, i) => (n - i).toString())
    .join(''));
  const outerLimit = Math.sqrt(max);

  for (let factor1 = 2; factor1 < outerLimit; factor1++) {
    const innerLimit = max / factor1;

    for (let factor2 = factor1; factor2 < innerLimit; factor2++) {
      const product = factor1 * factor2;
      const concatenated = concatenate3Nums(factor1, factor2, product);

      if (concatenated.length > n) {
        break;
      } else if (concatenated.length == n &&
        isPandigital(concatenated) &&
        !products.includes(product)
      ) {
        products.push(product);
        sum += product;
      }
    }
  }
  return sum;
}
```
