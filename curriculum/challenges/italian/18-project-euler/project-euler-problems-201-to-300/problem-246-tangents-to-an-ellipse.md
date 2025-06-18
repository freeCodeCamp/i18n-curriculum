---
id: 5900f4621000cf542c50ff75
title: 'Problema 246: tangenti a un''ellisse'
challengeType: 1
forumTopicId: 301893
dashedName: problem-246-tangents-to-an-ellipse
---

# --description--

Una definizione di un'ellisse è:

Given a circle $c$ with center $M$ and radius $r$ and a point $G$ such that $d(G, M) < r$, the locus of the points that are equidistant from $c$ and $G$ form an ellipse.

La costruzione dei punti dell'ellisse è mostrata di seguito.

<img alt="animazione della costruzione di un'ellisse" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Dati i punti $M(-2000, 1500)$ e $G(800, 1500)$.

Given is also the circle $c$ with center $M$ and radius $15\\,000$.

Il luogo dei punti che sono equidistanti da $G$ e $c$ forma un'ellisse $e$.

Da un punto $P$ al di fuori di $e$ sono tracciate le due tangenti all'ellisse $$t_1$ e $t_2$.

Siano $R$ e $S$ i punti dove $t_1$ e $t_2$ toccano l'ellisse.

<img alt="circle c with the center M, radius 15000, and point P outside of ellipse e; from point P two tangents t_1 and t_2 are drawn to the ellipse, with points touching ellipse are R and S" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Per quanti punti $P$ del reticolo l'angolo $RPS$ è maggiore di 45°?

# --hints--

`tangentsToAnEllipse()` dovrebbe restituire `810834388`.

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
