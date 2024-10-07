---
id: 5900f4831000cf542c50ff95
title: 'Problem 278: Lineare Kombinationen der Semiprimzahlen'
challengeType: 1
forumTopicId: 301928
dashedName: problem-278-linear-combinations-of-semiprimes
---

# --description--

Angesichts der Werte der ganzen Zahlen $1 &lt; a_1 &lt; a_2 &lt; \ldots &lt; a_n$, betrachte die lineare Kombination $q_1a_1 + q_2a_2 + \ldots + q_na_n = b$ mit der ausschließlichen Nutzung von ganzzahligen Werten $q_k ≥ 0$.

Beachte, dass für eine gegebene Menge von $a_k$ eventuell nicht alle Werte von $b$ möglich sind. Zum Beispiel, wenn $a_1 = 5$ und $a_2 = 7$, gibt es keine $q_1 ≥ 0$ und $q_2 ≥ 0$, so dass $b$ 1, 2, 3, 4, 6, 8, 9, 11, 13, 16, 18 oder 23 sein könnte.

Tatsächlich ist 23 der größte unmögliche Wert von $b$ für $a_1 = 5$ und $a_2 = 7$. Wir nennen daher $f(5, 7) = 23$. In ähnlicher Weise kann nachgewiesen werden, dass $f(6, 10, 15)=29$ und $f(14, 22, 77) = 195$.

Finde $\sum f(pq,pr,qr)$, wobei $p$, $q$ und $r$ Primzahlen und $p &lt; q &lt; r &lt; 5000$ sind.

# --hints--

`linearCombinationOfSemiprimes()` sollte `1228215747273908500` zurückgeben.

```js
assert.strictEqual(linearCombinationOfSemiprimes(), 1228215747273908500);
```

# --seed--

## --seed-contents--

```js
function linearCombinationOfSemiprimes() {

  return true;
}

linearCombinationOfSemiprimes();
```

# --solutions--

```js
// solution required
```
