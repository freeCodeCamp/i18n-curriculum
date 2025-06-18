---
id: 5900f4621000cf542c50ff74
title: 'Problem 245: Kernelastizität'
challengeType: 1
forumTopicId: 301892
dashedName: problem-245-coresilience
---

# --description--

We shall call a fraction that cannot be canceled down a resilient fraction.

Außerdem definieren wir die Resilienz eines Nenners, $R(d)$, als das Verhältnis seiner Eigenbrüche, die resilient sind; zum Beispiel $R(12) = \frac{4}{11}$.

Die Resilienz einer Zahl $d > 1$ ist dann $\frac{φ(d)}{d − 1}$ , wobei $φ$ die Eulersche Totientenfunktion ist.

Wir definieren ferner die Kernelastizität einer Zahl $n > 1$ als $C(n) = \frac{n - φ(n)}{n − 1}$.

Die Kernelastizität einer Primzahl $p$ ist $C(p) = \frac{1}{p − 1}$.

Finde die Summe aller zusammengesetzten Integer $1 &lt; n ≤ 2 × {10}^{11}$, für die $C(n)$ ein Einheitsbruch ist.

# --hints--

`coresilience()` sollte `288084712410001` zurückgeben.

```js
assert.strictEqual(coresilience(), 288084712410001);
```

# --seed--

## --seed-contents--

```js
function coresilience() {

  return true;
}

coresilience();
```

# --solutions--

```js
// solution required
```
