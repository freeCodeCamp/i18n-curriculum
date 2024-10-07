---
id: 5900f5131000cf542c510024
title: 'Problem 421: Primfaktoren von n^15+1'
challengeType: 1
forumTopicId: 302091
dashedName: problem-421-prime-factors-of-n151
---

# --description--

Zahlen der Form $n^{15} + 1$ sind zusammengesetzt für jede Integer $n > 1$.

Für positive Integer $n$ und $m$ sei $s(n, m)$ definiert als die Summe der verschiedenen Primfaktoren von $n^{15} + 1$, die $m$ nicht überschreiten.

z.B. $2^{15} + 1 = 3 × 3 × 11 × 331$.

Also sind $s(2, 10) = 3$ und $s(2, 1000) = 3 + 11 + 331 = 345$.

Auch ${10}^{15} + 1 = 7 × 11 × 13 × 211 × 241 × 2161 × 9091$.

Also $s(10, 100) = 31$ und $s(10, 1000) = 483$.

Finde $\sum s(n, {10}^8)$ für $1 ≤ n ≤ {10}^{11}$.

# --hints--

`primeFactorsOfN15Plus1()` sollte `2304215802083466200` zurückgeben.

```js
assert.strictEqual(primeFactorsOfN15Plus1(), 2304215802083466200);
```

# --seed--

## --seed-contents--

```js
function primeFactorsOfN15Plus1() {

  return true;
}

primeFactorsOfN15Plus1();
```

# --solutions--

```js
// solution required
```
