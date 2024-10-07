---
id: 5900f3e71000cf542c50fefa
title: 'Problem 123: Primzahl-Quadratreste'
challengeType: 1
forumTopicId: 301750
dashedName: problem-123-prime-square-remainders
---

# --description--

Lass $p_n$ die $n$-te Primzahl sein: 2, 3, 5, 7, 11, ..., und lass $r$ den Restwert sein, wenn ${(p_n-1)}^n + {(p_n+1)}^n$ durch ${p_n}^2$ geteilt wird.

Zum Beispiel, wenn $n = 3, p_3 = 5$, und $4^3 + 6^3 = 280 ≡ 5\\ mod\ 25$.

Der kleinste Wert von $n$, für den der Rest zuerst $10^9$ überschreitet, ist 7037.

Finde den kleinsten Wert von $n$, für den der Rest zuerst $10^{10}$ überschreitet.

# --hints--

`primeSquareRemainders()` sollte `21035` zurückgeben.

```js
assert.strictEqual(primeSquareRemainders(), 21035);
```

# --seed--

## --seed-contents--

```js
function primeSquareRemainders() {

  return true;
}

primeSquareRemainders();
```

# --solutions--

```js
// solution required
```
