---
id: 5900f4621000cf542c50ff75
title: 'Problem 246: Tangents to an ellipse'
challengeType: 1
forumTopicId: 301893
dashedName: problem-246-tangents-to-an-ellipse
---

# --description--

A definition for an ellipse is:

Given a circle $c$ with center $M$ and radius $r$ and a point $G$ such that $d(G, M) < r$, the locus of the points that are equidistant from $c$ and $G$ form an ellipse.

The construction of the points of the ellipse is shown below.

<img alt="animación de la construcción de la elipse" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Dado están los puntos $M(-2000, 1500)$ y $G(8000, 1500)$.

Given is also the circle $c$ with center $M$ and radius $15\\,000$.

El lugar geométrico de los puntos que son equidistantes de $G$ y $c$ forman una elipse $e$.

Desde un punto $P$ fuera de $e$ se trazan las dos tangentes $t_1$ y $t_2$ a la elipse.

Sean los puntos donde $t_1$ y $t_2$ tocan la elipse $R$ y $S$.

<img alt="circle c with the center M, radius 15000, and point P outside of ellipse e; from point P two tangents t_1 and t_2 are drawn to the ellipse, with points touching ellipse are R and S" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

¿Para cuántos puntos de rejilla $P$ es el ángulo $RPS$ mayor que 45°?

# --hints--

`tangentsToAnEllipse()` debe volver `810834388`.

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
