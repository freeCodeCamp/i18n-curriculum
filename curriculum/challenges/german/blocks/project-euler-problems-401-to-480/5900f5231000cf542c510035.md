---
id: 5900f5231000cf542c510035
title: 'Problem 439: Summe der Summe der Divisoren'
challengeType: 1
forumTopicId: 302110
dashedName: problem-439-sum-of-sum-of-divisors
---

# --description--

$d(k)$ sei die Summe aller Teiler von $k$.

Wir definieren die Funktion $S(N) = \sum_{i = 1}^N \sum_{j = 1}^N d(i \times j)$.

Zum Beispiel $S(3) = d(1) + d(2) + d(3) + d(2) + d(4) + d(6) + d(3) + d(6) + d(9) = 59$.

Dir wird gegeben, dass $S({10}^3) = 563\\,576\\,517\\,282$ und $S({10}^5)\bmod {10}^9 = 215\\,766\\,508$.

Finde $S({10}^{11})\bmod {10}^9$.

# --hints--

`sumOfSumOfDivisors()` sollte `968697378` zurückgeben.

```js
assert.strictEqual(sumOfSumOfDivisors(), 968697378);
```

# --seed--

## --seed-contents--

```js
function sumOfSumOfDivisors() {

  return true;
}

sumOfSumOfDivisors();
```

# --solutions--

```js
// solution required
```
