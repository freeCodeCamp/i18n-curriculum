---
id: 5900f38c1000cf542c50fe9f
title: 'Problem 32: Pandigitale Produkte'
challengeType: 1
forumTopicId: 301976
dashedName: problem-32-pandigital-products
---

# --description--

Wir sagen, dass eine `n`-stellige Zahl pandigital ist, wenn sie alle Ziffern 1 bis `n` genau einmal verwendet; zum Beispiel ist die 5-stellige Zahl 15234 von 1 bis 5 pandigital.

Das Produkt 7254 ist ungewöhnlich, da die Identität 39 × 186 = 7254, die Multiplikand, Multiplikator und Produkt enthält, 1 bis 9 pandigital ist.

Finde die Summe aller Produkte, deren Multiplikand/Multiplikator/Produkt-Identität als 1 durch `n` pandigital geschrieben werden kann.

**Hinweis:** Einige Produkte können auf mehr als eine Weise erhalten werden, also achte darauf, dass du sie nur einmal in deine Summe miteinbeziehst.

# --hints--

`pandigitalProducts(4)` sollte eine Zahl zurückgeben.

```js
assert(typeof pandigitalProducts(4) === 'number');
```

`pandigitalProducts(4)` sollte `12` zurückgeben.

```js
assert.strictEqual(pandigitalProducts(4), 12);
```

`pandigitalProducts(6)` sollte `162` zurückgeben.

```js
assert.strictEqual(pandigitalProducts(6), 162);
```

`pandigitalProducts(7)` sollte `0` zurückgeben.

```js
assert.strictEqual(pandigitalProducts(7), 0);
```

`pandigitalProducts(8)` sollte `13458` zurückgeben.

```js
assert.strictEqual(pandigitalProducts(8), 13458);
```

`pandigitalProducts(9)` sollte `45228` zurückgeben.

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
