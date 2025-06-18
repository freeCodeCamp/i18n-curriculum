---
id: 5900f4621000cf542c50ff75
title: 'Завдання 246: дотичні до еліпса'
challengeType: 1
forumTopicId: 301893
dashedName: problem-246-tangents-to-an-ellipse
---

# --description--

Визначення еліпса таке:

Given a circle $c$ with center $M$ and radius $r$ and a point $G$ such that $d(G, M) < r$, the locus of the points that are equidistant from $c$ and $G$ form an ellipse.

Побудову точок еліпса зображено нижче.

<img alt="анімація побудови еліпса" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Дано точки $M(-2000, 1500)$ та $G(8000, 1500)$.

Given is also the circle $c$ with center $M$ and radius $15\\,000$.

Геометричне місце точок, рівновіддалених від $G$ та $c$, формують еліпс $e$.

З точки $P$ поза $e$ проведено дві дотичні $t_1$ та $t_2$ до еліпса.

Нехай точками, де $t_1$ та $t_2$ торкаються до еліпса, будуть $R$ та $S$.

<img alt="circle c with the center M, radius 15000, and point P outside of ellipse e; from point P two tangents t_1 and t_2 are drawn to the ellipse, with points touching ellipse are R and S" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Для скількох точок $P$ значення кута $RPS$ є більшим за 45°?

# --hints--

`tangentsToAnEllipse()` має повернути `810834388`.

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
