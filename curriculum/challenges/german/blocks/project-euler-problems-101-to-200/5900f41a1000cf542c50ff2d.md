---
id: 5900f41a1000cf542c50ff2d
title: >-
  Problem 174: Zählen der Anzahl an "hohlen" quatratischen Lamellen, die eine, zwei, drei, ... verschiedene Anordnungen bilden können
challengeType: 1
forumTopicId: 301809
dashedName: >-
  problem-174-counting-the-number-of-hollow-square-laminae-that-can-form-one-two-three-----distinct-arrangements
---

# --description--

Wir definieren eine quadratische Lamelle als einen quadratischen Umriss mit einem quadratischen "Loch", so dass die Form eine vertikale und horizontale Symmetrie aufweist.

Mit acht Kacheln ist es nur auf eine Weise möglich, eine Lamelle zu bilden: ein 3x3-Quadrat mit einem 1x1-Loch in der Mitte. Durch Verwendung von 32 Kacheln ist es jedoch möglich, zwei verschiedene Lamellen zu bilden.

<img alt="zwei quadratische Lamellen mit Löchern 2x2 und 7x7" src="https://cdn.freecodecamp.org/curriculum/project-euler/using-up-to-one-million-tiles-how-many-different-hollow-square-laminae-can-be-formed.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Wenn $t$ die Anzahl der verwendeten Kacheln darstellt, sagen wir, dass $t =8$ Typ $L(1) und $t = 32$ Typ $L(2)$ ist.

Sei $N(n)$ die Zahl von $t ≤ 1000000$ sein, so dass $t$ Typ $L(n)$ ist; zum Beispiel, $N(15) = 832$.

Was ist $\sum N(n)$ für $1 ≤ n ≤ 10$?

# --hints--

`hollowSquareLaminaeDistinctArrangements()` sollte `209566` zurückgeben.

```js
assert.strictEqual(hollowSquareLaminaeDistinctArrangements(), 209566);
```

# --seed--

## --seed-contents--

```js
function hollowSquareLaminaeDistinctArrangements() {

  return true;
}

hollowSquareLaminaeDistinctArrangements();
```

# --solutions--

```js
// solution required
```
