---
id: 5900f5091000cf542c51001b
title: 'Problem 408: Zulässige Wege durch ein Gitter'
challengeType: 1
forumTopicId: 302076
dashedName: problem-408-admissible-paths-through-a-grid
---

# --description--

Wir nennen einen Gitterpunkt ($x$, $y$) unzulässig, wenn $x$, $y$ und $x + y$ alle positive perfekte Quadrate sind.

Zum Beispiel ist (9, 16) unzulässig, während (0, 4), (3, 1) und (9, 4) nicht zulässig sind.

Betrachte einen Weg vom Punkt ($x_1$, $y_1$) zum Punkt ($x_2$, $y_2$), der nur Einheitsschritte nach Norden oder Osten enthält. Nennen wir einen solchen Pfad zulässig, wenn keiner seiner Zwischenpunkte unzulässig ist.

Lasse $P(n)$ die Anzahl der zulässigen Wege von (0, 0) nach ($n$, $n$) sein. Es kann nachgewiesen werden, dass $P(5) = 252$, $P(16) = 596\\,994\\,440$ und $P(1\\,000)\bmod 1\\,000\,000\,007 = 341\\,920\\,854$.

Finde $P(10\\,000\\,000)\bmod 1\\,000\\,000\\,007$.

# --hints--

`admissiblePaths()` sollte `299742733` zurückgeben.

```js
assert.strictEqual(admissiblePaths(), 299742733);
```

# --seed--

## --seed-contents--

```js
function admissiblePaths() {

  return true;
}

admissiblePaths();
```

# --solutions--

```js
// solution required
```
