---
id: 5900f38c1000cf542c50fe9f
title: '問題 32: パンデジタル積'
challengeType: 1
forumTopicId: 301976
dashedName: problem-32-pandigital-products
---

# --description--

1 から `n` までのすべての数字がちょうど 1 回ずつ使われている `n` 桁の数を、「パンデジタルである」と表現することにします。例えば、5 桁の数 15234 は 1 から 5 のパンデジタルです。

積 7254 は珍しい数です。なぜなら等式 39 × 186 = 7254 で表すことができ、その被乗数、乗数、積が 1 から 9 のパンデジタルだからです。

被乗数、乗数、積の等式を 1 から `n` までのパンデジタルとして表せる、すべての積の和を求めなさい。

**ヒント:** 一部の積は複数の等式で得られますが、それを和に一度だけ含めるようにしてください。

# --hints--

`pandigitalProducts(4)` は数値を返す必要があります。

```js
assert(typeof pandigitalProducts(4) === 'number');
```

`pandigitalProducts(4)` は `12` を返す必要があります。

```js
assert.strictEqual(pandigitalProducts(4), 12);
```

`pandigitalProducts(6)` は `162` を返す必要があります。

```js
assert.strictEqual(pandigitalProducts(6), 162);
```

`pandigitalProducts(7)` は `0` を返す必要があります。

```js
assert.strictEqual(pandigitalProducts(7), 0);
```

`pandigitalProducts(8)` は `13458` を返す必要があります。

```js
assert.strictEqual(pandigitalProducts(8), 13458);
```

`pandigitalProducts(9)` は `45228` を返す必要があります。

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
