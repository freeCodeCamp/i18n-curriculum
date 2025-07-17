---
id: 5900f38c1000cf542c50fe9f
title: '問題 32：泛數字'
challengeType: 1
forumTopicId: 301976
dashedName: problem-32-pandigital-products
---

# --description--

We shall say that an `n`-digit number is pandigital if it makes use of all the digits 1 to `n` exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

乘法的總數7254是不尋常的，因爲其身份39×186 = 7254，含有乘法、除法和乘法的總數爲1到9個磅。

找出所有被乘數/乘數/產品標識可以寫成1到`n`的泛數字的所有產品的總和。

提示：某些產品可以通過多種方式獲得，因此請確保只在其總和中包括一次。

# --hints--

`pandigitalProducts(4)` 應該返回個整數

```js
assert(typeof pandigitalProducts(4) === 'number');
```

`pandigitalProducts(4)` 應該返回 `12`.

```js
assert.strictEqual(pandigitalProducts(4), 12);
```

`pandigitalProducts(6)` 應該返回 `162`.

```js
assert.strictEqual(pandigitalProducts(6), 162);
```

`pandigitalProducts(7)` 應該返回 `0`.

```js
assert.strictEqual(pandigitalProducts(7), 0);
```

`pandigitalProducts(8)` 應該返回 `13458`.

```js
assert.strictEqual(pandigitalProducts(8), 13458);
```

`pandigitalProducts(9)` 應該返回 `45228`.

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
