---
id: 5900f38c1000cf542c50fe9f
title: 'Problema 32: prodotti pandigitali'
challengeType: 1
forumTopicId: 301976
dashedName: problem-32-pandigital-products
---

# --description--

Possiamo dire che un numero di `n` cifre è pandigitale se usa tutte le cifre da 1 a `n` esattamente una volta; per esempio, il numero a 5 cifre 15234 è pandigitale per le cifre da 1 a 5.

Il prodotto 7254 è inusuale, in quanto l'identità 39 x 186 = 7254, contenente moltiplicando, moltiplicatore, e prodotto, è pandigitale per le cifre da 1 a 9.

Trova le somme di tutti i prodotti la cui identità moltiplicando/moltiplicatore/prodotto può essere scritta come pandigitale per le cifre da 1 a `n`.

**Indizio:** Alcuni prodotti possono essere ottenuti in più di un modo quindi assicurati di includerli una volta sola nella tua somma.

# --hints--

`pandigitalProducts(4)` dovrebbe restituire un numero.

```js
assert(typeof pandigitalProducts(4) === 'number');
```

`pandigitalProducts(4)` dovrebbe restituire `12`.

```js
assert.strictEqual(pandigitalProducts(4), 12);
```

`pandigitalProducts(6)` dovrebbe restituire `162`.

```js
assert.strictEqual(pandigitalProducts(6), 162);
```

`pandigitalProducts(7)` dovrebbe restituire `0`.

```js
assert.strictEqual(pandigitalProducts(7), 0);
```

`pandigitalProducts(8)` dovrebbe restituire `13458`.

```js
assert.strictEqual(pandigitalProducts(8), 13458);
```

`pandigitalProducts(9)` dovrebbe restituire `45228`.

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
