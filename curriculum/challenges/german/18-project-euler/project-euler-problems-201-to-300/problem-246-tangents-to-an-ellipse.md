---
id: 5900f4621000cf542c50ff75
title: 'Problem 246: Tangenten an einer Ellipse'
challengeType: 1
forumTopicId: 301893
dashedName: problem-246-tangents-to-an-ellipse
---

# --description--

Eine Definition für eine Ellipse ist:

Given a circle $c$ with center $M$ and radius $r$ and a point $G$ such that $d(G, M) < r$, the locus of the points that are equidistant from $c$ and $G$ form an ellipse.

Die Konstruktion der Punkte der Ellipse ist unten dargestellt.

<img alt="Animation der Ellipsenkonstruktion" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Gegeben sind die Punkte $M(-2000, 1500)$ und $G(8000, 1500)$.

Given is also the circle $c$ with center $M$ and radius $15\\,000$.

Die Ortskurve der Punkte, die von $G$ und $c$ gleich weit entfernt sind, bildet eine Ellipse $e$.

Von einem Punkt $P$ außerhalb von $e$ werden die beiden Tangenten $t_1$ und $t_2$ an die Ellipse eingezeichnet.

Die Punkte, an denen $t_1$ und $t_2$ die Ellipse berühren, seien $R$ und $S$.

<img alt="circle c with the center M, radius 15000, and point P outside of ellipse e; from point P two tangents t_1 and t_2 are drawn to the ellipse, with points touching ellipse are R and S" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Für wie viele Gitterpunkte $P$ ist der Winkel $RPS$ größer als 45°?

# --hints--

`tangentsToAnEllipse()` sollte `810834388` zurückgeben.

```js
assert.strictEqual(tangentsToAnEllipse(), 810834388);
```

# --seed--

## --seed-contents--

```js
function tangentsToAnEllipse() {

  return true;
}

tangentsToAnEllipse();
```

# --solutions--

```js
// solution required
```
