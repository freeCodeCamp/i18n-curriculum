---
id: 5900f4fd1000cf542c51000f
title: 'Problem 401: Summe der Quadrate von Teilern'
challengeType: 1
forumTopicId: 302069
dashedName: problem-401-sum-of-squares-of-divisors
---

# --description--

Die Teiler von 6 sind 1, 2, 3 und 6.

Die Summe der Quadrate dieser Zahlen ist $1 + 4 + 9 + 36 = 50$.

Lasse $\sigma_2(n)$ die Summe der Quadrate der Teiler von $n$ sein. Somit ist $\sigma_2(6) = 50$.

Lasse $\Sigma_2$ die Summationsfunktion von $\sigma_2$, also $\Sigma_2(n) = \sum \sigma_2(i)$ für $i=1$ bis $n$ sein. Die ersten 6 Werte von $\Sigma_2$ sind: 1, 6, 16, 37, 63 und 113.

Finde $\Sigma_2({10}^{15})$ modulo ${10}^9$.

# --hints--

`sumOfSquaresDivisors()` sollte `281632621` zurückgeben.

```js
assert.strictEqual(sumOfSquaresDivisors(), 281632621);
```

# --seed--

## --seed-contents--

```js
function sumOfSquaresDivisors() {

  return true;
}

sumOfSquaresDivisors();
```

# --solutions--

```js
// solution required
```
