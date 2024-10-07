---
id: 5900f5061000cf542c510017
title: 'Problem 409: Nim-Extrem'
challengeType: 1
forumTopicId: 302077
dashedName: problem-409-nim-extreme
---

# --description--

Sei $n$ ein positiver Integer. Betrachte Nim-Positionen, wo Folgendes gilt:

- Es gibt $n$ nicht leere Haufen.
- Jeder Haufen ist kleiner als $2^n$.
- Keine zwei Haufen haben die gleiche Größe.

Lass $W(n)$ die Anzahl von gewinnenden Nim Poistionen sein, die die oben genannten Anforderungen erfüllen (eine Position ist gewinnend, wenn der erste Spieler eine Gewinnstrategie hat).

Zum Beispiel, $W(1) = 1$, $W(2) = 6$, $W(3) = 168$, $W(5) = 19\\,764\\,360$ und $W(100)\bmod 1\\,000\\,000\\,007 = 384\\,777\\,056$.

Finde $W(10\\,000\\,000)\bmod 1\\,000\\,000\\,007$.

# --hints--

`nimExtreme()` sollte `253223948` zurückgeben.

```js
assert.strictEqual(nimExtreme(), 253223948);
```

# --seed--

## --seed-contents--

```js
function nimExtreme() {

  return true;
}

nimExtreme();
```

# --solutions--

```js
// solution required
```
