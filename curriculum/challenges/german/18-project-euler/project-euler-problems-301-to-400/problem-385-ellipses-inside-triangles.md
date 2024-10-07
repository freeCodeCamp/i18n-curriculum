---
id: 5900f4ee1000cf542c510000
title: 'Aufgabe 385: Ellipsen in Dreiecken'
challengeType: 1
forumTopicId: 302049
dashedName: problem-385-ellipses-inside-triangles
---

# --description--

Für jedes Dreieck $T$ in der Ebene lässt sich zeigen, dass es eine einzige Ellipse mit größter Fläche gibt, die vollständig in $T$ liegt.

<img alt="Ellipse vollständig innerhalb eines Dreiecks" src="https://cdn.freecodecamp.org/curriculum/project-euler/ellipses-inside-triangles.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Betrachten Sie für ein gegebenes $n$ solche Dreiecke $T$, dass:

-   die Scheitelpunkte von $T$ haben ganzzahlige Koordinaten mit Absolutwert $≤ n$, und
-   die Brennpunkte<sup>1</sup> der flächengrößten Ellipse innerhalb von $T$ sind $(\sqrt{13}, 0)$ und $(-\sqrt{13}, 0)$.

Sei $A(n)$ die Summe der Flächen aller solcher Dreiecke.

Wenn zum Beispiel $n = 8$ ist, gibt es zwei solcher Dreiecke. Ihre Eckpunkte sind (-4,-3), (-4,3), (8,0) und (4,3), (4,-3), (-8,0), und der Flächeninhalt jedes Dreiecks ist 36. Somit ist $A(8) = 36 + 36 = 72$.

Es lässt sich nachweisen, dass $A(10) = 252$, $A(100) = 34\\,632$ und $A(1000) = 3\\,529\\,008$.

Finde $A(1\\,000\,000\,000\,000)$.

<sup>1</sup>Die Brennpunkte (Plural von Fokus) einer Ellipse sind zwei Punkte $A$ und $B$, so dass für jeden Punkt $P$ auf dem Rand der Ellipse $AP + PB$ konstant ist.

# --hints--

`ellipsesInsideTriangles()` sollte `3776957309612154000` zurückgeben.

```js
assert.strictEqual(ellipsesInsideTriangles(), 3776957309612154000);
```

# --seed--

## --seed-contents--

```js
function ellipsesInsideTriangles() {

  return true;
}

ellipsesInsideTriangles();
```

# --solutions--

```js
// solution required
```
