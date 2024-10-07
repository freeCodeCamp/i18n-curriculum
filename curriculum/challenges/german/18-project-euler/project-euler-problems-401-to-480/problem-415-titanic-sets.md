---
id: 5900f50c1000cf542c51001e
title: 'Problem 415: Titanic-Sets'
challengeType: 1
forumTopicId: 302084
dashedName: problem-415-titanic-sets
---

# --description--

Ein Set von Gitterpunkten $S$ wird als Titanic-Set bezeichnet, wenn eine Linie existiert, die genau zwei Punkte in $S$ durchquert.

Ein Beispiel für ein titanisches Set ist $S = \\{(0, 0), (0, 1), (0, 1), (1, 1), (2, 0), (1, 0)\\}$, wobei die Linie, die durch (0, 1) und (2, 0) läuft, keinen anderen Punkt in $S$ durchläuft.

Andererseits ist das Set {(0, 0), (1, 1), (2, 2), (4, 4)} kein titanisches Set, da die Linie, die zwei der Punkte durchquert, auch die anderen beiden Punkte durchläuft.

Lasse für jede positive Integer $N$ $T(N)$ die Anzahl titanischer Sets $S$ sein, aus denen jeder Punkt ($x$, $y$) Folgendes erfüllt: $0 ≤ x$, $y ≤ N$. Es kann nachgewiesen werden, dass $T(1) = 11$, $T(2) = 494$, $T(4) = 33\\,554\\,178$, $T(111)\bmod {10}^8 = 13\\,500\\,401$ und $T({10}^5)\bmod {10}^8 = 63\\,259\\,062$.

Finde $T({10}^{11})\bmod {10}^8$.

# --hints--

`titanicSets()` sollte `55859742` zurückgeben.

```js
assert.strictEqual(titanicSets(), 55859742);
```

# --seed--

## --seed-contents--

```js
function titanicSets() {

  return true;
}

titanicSets();
```

# --solutions--

```js
// solution required
```
