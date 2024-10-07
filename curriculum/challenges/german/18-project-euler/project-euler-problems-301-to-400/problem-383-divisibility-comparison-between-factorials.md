---
id: 5900f4ed1000cf542c50ffff
title: 'Problem 383: Teilbarkeitsvergleich zwischen Fakultäten'
challengeType: 1
forumTopicId: 302047
dashedName: problem-383-divisibility-comparison-between-factorials
---

# --description--

Sei $f_5(n)$ der größte Integer $x$, durch die $5^x$ $n$ teilt.

Zum Beispiel $f_5(625\\,000) = 7$.

Sei $T_5(n)$ die Anzahl der Integer $i$, die $f_5((2 \times i - 1)!) erfüllt &lt; 2 \times f_5(i!)$ und $1 ≤ i ≤ n$.

Es kann nachgewiesen werden, dass $T_5({10}^3) = 68$ und $T_5({10}^9) = 2\\,408\\,210$.

Finde $T_5({10}^{18})$.

# --hints--

`factorialDivisibilityComparison()` sollte `22173624649806` zurückgeben.

```js
assert.strictEqual(factorialDivisibilityComparison(), 22173624649806);
```

# --seed--

## --seed-contents--

```js
function factorialDivisibilityComparison() {

  return true;
}

factorialDivisibilityComparison();
```

# --solutions--

```js
// solution required
```
