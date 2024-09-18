---
id: 5900f5311000cf542c510044
title: 'Problema 453: Cuadriláteros en cuadrícula'
challengeType: 1
forumTopicId: 302126
dashedName: problem-453-lattice-quadrilaterals
---

# --description--

Un cuadrilátero simple es un polígono que tiene cuatro vértices distintos, no tiene ángulos rectos y no es autointersecante.

Sea $Q(m, n)$ el número de cuadriláteros simples cuyos vértices son puntos de cuadrícula con coordenadas ($x$, $y$) que satisfacen $0 ≤ x ≤ m$ y $0 ≤ y ≤ n$.

Por ejemplo, $Q(2, 2) = 94$ como se puede ver a continuación:

<img alt="94 cuadriláteros cuyos vértices son puntos de cuadrícula con coordenadas (x, y) que satisfacen 0 &le; x &le; m y 0 &le; y &le; n" src="https://cdn.freecodecamp.org/curriculum/project-euler/lattice-quadrilaterals.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

También se puede verificar que $Q(3, 7) = 39\\,590$, $Q(12, 3) = 309\\,000$ y $Q(123, 45) = 70\\,542\\,215\\,894\\,646$.

Encontrar $Q(12\\,345, 6\\,789)\bmod 135\\,707\\,531$.

# --hints--

`latticeQuadrilaterals()` debe volver `104354107`.

```js
assert.strictEqual(latticeQuadrilaterals(), 104354107);
```

# --seed--

## --seed-contents--

```js
function latticeQuadrilaterals() {

  return true;
}

latticeQuadrilaterals();
```

# --solutions--

```js
// solution required
```
