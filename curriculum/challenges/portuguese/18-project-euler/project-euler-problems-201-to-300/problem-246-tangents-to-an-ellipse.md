---
id: 5900f4621000cf542c50ff75
title: 'Problema 246: Tangentes de uma elipse'
challengeType: 1
forumTopicId: 301893
dashedName: problem-246-tangents-to-an-ellipse
---

# --description--

Uma definição para uma elipse é:

Given a circle $c$ with center $M$ and radius $r$ and a point $G$ such that $d(G, M) < r$, the locus of the points that are equidistant from $c$ and $G$ form an ellipse.

A construção dos pontos da elipse é mostrada abaixo.

<img alt="animação de construção da elipse" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

São dados os pontos $M(-2000, 1500)$ e $G(8000, 1500)$.

Given is also the circle $c$ with center $M$ and radius $15\\,000$.

A localidade dos pontos que estão equidistantes de $G$ e $c$ forma uma elipse $e$.

De um ponto $P$ fora de $e$, as duas tangentes $t_1$ e $t_2$ da elipse são desenhadas.

Considere os pontos em que $t_1$ e $t_2$ tocam a elipse como $R$ e $S$.

<img alt="circle c with the center M, radius 15000, and point P outside of ellipse e; from point P two tangents t_1 and t_2 are drawn to the ellipse, with points touching ellipse are R and S" src="https://cdn.freecodecamp.org/curriculum/project-euler/tangents-to-an-ellipse-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Para quantos pontos da rede $P$ é um ângulo $RPS$ maior que 45°?

# --hints--

`tangentsToAnEllipse()` deve retornar `810834388`.

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
