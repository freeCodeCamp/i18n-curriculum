---
id: 5900f4cd1000cf542c50ffe0
title: 'Problem 353: Riskanter Mond'
challengeType: 1
forumTopicId: 302013
dashedName: problem-353-risky-moon
---

# --description--

Ein Mond könnte durch die Kugel $C(r)$ mit Mittelpunkt (0, 0, 0) und Radius $r$ beschrieben werden.

An den Punkten auf der Oberfläche von $C(r)$ mit ganzzahligen Koordinaten befinden sich Stationen auf dem Mond. Die Station bei (0, 0, $r$) heißt Nordpolstation, die Station bei (0, 0, $-r$) heißt Südpolstation.

Alle Stationen sind über die kürzeste Straße auf dem großen Bogen durch die Stationen miteinander verbunden. Eine Fahrt zwischen zwei Stationen ist riskant. Wenn $d$ die Länge der Straße zwischen zwei Stationen ist, ist $\{\left(\frac{d}{πr}\right)}^2$ ein Maß für das Risiko der Reise (nennen wir es das Risiko der Straße). Wenn die Reise mehr als zwei Stationen umfasst, ist das Risiko der Reise die Summe der Risiken der benutzten Straßen.

Eine direkte Reise vom Nordpol bis zum Südpol hat die Länge $πr$ und Risiko 1. Die Reise vom Nordpol bis zum Südpol über (0, $r$, 0) hat die gleiche länge, aber ein geringeres Risiko:

$${\left(\frac{\frac{1}{2}πr}{πr}\right)}^2+{\left(\frac{\frac{1}{2}πr}{πr}\right)}^2 = 0.5$$

Das minimale Risiko einer Reise von der Nordpolstation zur Südpolstation auf $C(r)$ ist $M(r)$.

Dir wird gegeben, dass $M(7) = 0.178$\\,494\\,399\\,8$ gerundet auf 10 Ziffern hinter dem Dezimalpunkt.

Finde $\displaystyle\sum_{n = 1}^{15} M(2^n - 1)$.

Gib deine Antwort auf 10 Ziffern hinter dem Komma gerundet in der Form a.bcdefghijk an.

# --hints--

`riskyMoon()` sollte `1.2759860331` zurückgeben.

```js
assert.strictEqual(riskyMoon(), 1.2759860331);
```

# --seed--

## --seed-contents--

```js
function riskyMoon() {

  return true;
}

riskyMoon();
```

# --solutions--

```js
// solution required
```
