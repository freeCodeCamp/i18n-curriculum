---
id: 5900f5001000cf542c510013
title: 'Problem 403: Von Parabel und Linie eingeschlossene Gitterpunkte'
challengeType: 1
forumTopicId: 302071
dashedName: problem-403-lattice-points-enclosed-by-parabola-and-line
---

# --description--

Für Integer $a$ und $b$, definieren wir $D(a, b)$ als das Domain, das von der Parabel $y = x^2$ und der Linie $y = ax + b: D(a, b) = \\{ (x, y) | x^2 ≤ y ≤ ax + b \\}$ eingeschlossen ist.

$L(a, b)$ wird als die Anzahl der Gitterpunkte definiert, die in $D(a, b)$ enthalten sind. Zum Beispiel $L(1, 2) = 8$ und $L(2, -1) = 1$.

Wir definieren auch $S(N)$ als die Summe von $L(a, b)$ für alle Paare ($a$, $b$), so dass der Bereich von $D(a, b)$ eine rationale Zahl und $|a|,|b| ≤ N$ ist.

Wir können nachweisen, dass $S(5) = 344$ und $S(100) = 26\\,709\\,528$.

Finde $S({10}^{12})$. Gib deine Antwort $\bmod {10}^8$ an.

# --hints--

`latticePoints()` sollte `18224771` zurückgeben.

```js
assert.strictEqual(latticePoints(), 18224771);
```

# --seed--

## --seed-contents--

```js
function latticePoints() {

  return true;
}

latticePoints();
```

# --solutions--

```js
// solution required
```
