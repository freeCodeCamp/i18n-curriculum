---
id: 5900f3c51000cf542c50fed6
title: 'Problema 88: Números producto-suma'
challengeType: 1
forumTopicId: 302203
dashedName: problem-88-product-sum-numbers
---

# --description--

Un número natural, `N`, que puede ser escrito como la suma y producto de un conjunto dado de al menos dos números naturales, $\\{a_1, a_2, \ldots , a_k\\}$ es llamado número producto-suma: $N = a_1 + a_2 + \cdots + a_k = a_1 × a_2 × \cdots × a_k$.

Por ejemplo, 6 = 1 + 2 + 3 = 1 × 2 × 3.

Para un conjunto dado de tamaño, `k`, llamaremos al menor N con esta propiedad un número producto-suma mínimo. Los números producto-suma mínimos para conjuntos de tamaño, `k` = 2, 3, 4, 5, y 6 son los siguientes.

<div style='margin-left: 4em;'>
  <var>k</var>=2: 4 = 2 × 2 = 2 + 2<br>
  <var>k</var>=3: 6 = 1 × 2 × 3 = 1 + 2 + 3<br>
  <var>k</var>=4: 8 = 1 × 1 × 2 × 4 = 1 + 1 + 2 + 4<br>
  <var>k</var>=5: 8 = 1 × 1 × 2 × 2 × 2  = 1 + 1 + 2 + 2 + 2<br>
  <var>k</var>=6: 12 = 1 × 1 × 1 × 1 × 2 × 6 = 1 + 1 + 1 + 1 + 2 + 6
</div><br>

Por lo tanto, para 2 ≤ `k` ≤ 6, la suma de todos los números producto-suma mínimos es 4 + 6 + 8 + 12 = 30; observar que `8` solo se cuenta una vez en la suma.

De hecho, como el conjunto completo de números producto-suma mínimos para 2 ≤ `k` ≤ 12 es $\\{4, 6, 8, 12, 15, 16\\}$, la suma es `61`.

¿Cuál es la suma de todos los números mínimos producto-suma para 2 ≤ `k` ≤ `límite`?

# --hints--

`productSumNumbers(6)` should return a number.

```js
assert(typeof productSumNumbers(6) === 'number');
```

`productSumNumbers(6)` should return `30`.

```js
assert.strictEqual(productSumNumbers(6), 30);
```

`productSumNumbers(12)` should return `61`.

```js
assert.strictEqual(productSumNumbers(12), 61);
```

`productSumNumbers(300)` should return `12686`.

```js
assert.strictEqual(productSumNumbers(300), 12686);
```

`productSumNumbers(6000)` should return `2125990`.

```js
assert.strictEqual(productSumNumbers(6000), 2125990);
```

`productSumNumbers(12000)` should return `7587457`.

```js
assert.strictEqual(productSumNumbers(12000), 7587457);
```

# --seed--

## --seed-contents--

```js
function productSumNumbers(limit) {

  return true;
}

productSumNumbers(6);
```

# --solutions--

```js
function productSumNumbers(limit) {
  function getProductSums(curProduct, curSum, factorsCount, start) {
    const k = curProduct - curSum + factorsCount;
    if (k <= limit) {
      if (curProduct < minimalProductSums[k]) {
        minimalProductSums[k] = curProduct;
      }
      for (let i = start; i < Math.floor((limit / curProduct) * 2) + 1; i++) {
        getProductSums(curProduct * i, curSum + i, factorsCount + 1, i);
      }
    }
  }

  const minimalProductSums = new Array(limit + 1).fill(2 * limit);
  getProductSums(1, 1, 1, 2);

  const uniqueProductSums = [...new Set(minimalProductSums.slice(2))];

  let sum = 0;
  for (let i = 0; i < uniqueProductSums.length; i++) {
    sum += uniqueProductSums[i];
  }

  return sum;
}
```
