---
id: 5900f38c1000cf542c50fe9f
title: 'Problema 32: Produtos pandigitais'
challengeType: 1
forumTopicId: 301976
dashedName: problem-32-pandigital-products
---

# --description--

Dizemos que um número de `n` algarismos é pandigital se ele usar todos os algarismos de 1 a `n` uma única vez. Por exemplo, o número 15234 é pandigital pois possui 5 algarismos e utiliza todos os algarismos entre 1 e 5.

Considere o produto 39 x 186 = 7254. O multiplicando (39), multiplicador (186) e o produto (7254) possuem, no total, nove algarismos e nenhum deles se repete.

Calcule a soma de todos os produtos cujo multiplicando, multiplicador e produto formam um número pandigital (entre 1 e `n`).

**Dica:** alguns produtos podem ser obtidos de mais de uma forma. Portanto, certifique-se de incluí-lo apenas uma vez na sua soma.

# --hints--

`pandigitalProducts(4)` deve retornar um número.

```js
assert(typeof pandigitalProducts(4) === 'number');
```

`pandigitalProducts(4)` deve retornar `12`.

```js
assert.strictEqual(pandigitalProducts(4), 12);
```

`pandigitalProducts(6)` deve retornar `162`.

```js
assert.strictEqual(pandigitalProducts(6), 162);
```

`pandigitalProducts(7)` deve retornar `0`.

```js
assert.strictEqual(pandigitalProducts(7), 0);
```

`pandigitalProducts(8)` deve retornar `13458`.

```js
assert.strictEqual(pandigitalProducts(8), 13458);
```

`pandigitalProducts(9)` deve retornar `45228`.

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
