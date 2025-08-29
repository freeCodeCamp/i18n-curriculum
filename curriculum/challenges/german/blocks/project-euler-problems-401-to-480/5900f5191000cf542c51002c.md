---
id: 5900f5191000cf542c51002c
title: 'Problem 429: Summe der Quadrate von unitären Divisoren'
challengeType: 1
forumTopicId: 302099
dashedName: problem-429-sum-of-squares-of-unitary-divisors
---

# --description--

Ein unitärer Teiler $d$ einer Zahl $n$ ist ein Teiler von $n$, der die Eigenschaft $gcd(d, \frac{n}{d}) = 1$ hat.

Die Einheitlichen Divisoren von $4! = 24$ sind 1, 3, 8 und 24.

Die Summe ihrer Quadrate ist $12 + 32 + 82 + 242 = 650$.

Lasse $S(n)$ die Summe der Quadrate der unitären Teiler von $n$ sein. Somit ist $S(4!) = 650$.

Finde $S(100\\,000\\,000!)$ modulo $1\\,000\\,000\\,009$.

# --hints--

`sumSquaresOfUnitaryDivisors()` sollte `98792821` zurückgeben.

```js
assert.strictEqual(sumSquaresOfUnitaryDivisors(), 98792821);
```

# --seed--

## --seed-contents--

```js
function sumSquaresOfUnitaryDivisors() {

  return true;
}

sumSquaresOfUnitaryDivisors();
```

# --solutions--

```js
// solution required
```
