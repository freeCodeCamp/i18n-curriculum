---
id: 5900f3c71000cf542c50feda
title: 'Problema 91: Triángulos Rectos con coordenadas enteras'
challengeType: 1
forumTopicId: 302208
dashedName: problem-91-right-triangles-with-integer-coordinates
---

# --description--

Los puntos ${P}(x_1, y_1)$ y ${Q}(x_2, y_2)$ son trazados con coordenadas enteras y se unen al origen, ${O}(0, 0)$, para formar ${\Delta}OPQ$.

<img alt="un gráfico de puntos P (x_1, y_1) and Q(x_2, y_2) en coordenadas enteras que se unen al origen O (0, 0)" src="https://cdn-media-1.freecodecamp.org/project-euler/right-triangles-integer-coordinates-1.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Hay exactamente catorce triángulos que contienen un ángulo recto que pueden formarse cuando cada coordenada se encuentra entre 0 y 2 inclusivo; es decir, $0 ≤ x_1, y_1, x_2, y_2 ≤ 2$.

<img alt="un diagrama muestra los 14 triángulos conteniendo un ángulo recto que puede ser formado cuando cada coordenada esta entre 0 y 2" src="https://cdn-media-1.freecodecamp.org/project-euler/right-triangles-integer-coordinates-2.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Dado que $0 ≤ x_1, y_1, x_2, y_2 ≤ limit$, cuántos triángulos rectos pueden formarse?

# --hints--

`rightTrianglesIntCoords(2)` debería devolver un número.

```js
assert(typeof rightTrianglesIntCoords(2) === 'number');
```

`rightTrianglesIntCoords(2)` debería devolver `14`.

```js
assert.strictEqual(rightTrianglesIntCoords(2), 14);
```

`rightTrianglesIntCoords(10)` debería devolver `448`.

```js
assert.strictEqual(rightTrianglesIntCoords(10), 448);
```

`rightTrianglesIntCoords(25)` debería devolver `3207`.

```js
assert.strictEqual(rightTrianglesIntCoords(25), 3207);
```

`rightTrianglesIntCoords(50)` debería devolver `14234`.

```js
assert.strictEqual(rightTrianglesIntCoords(50), 14234);
```

# --seed--

## --seed-contents--

```js
function rightTrianglesIntCoords(limit) {

  return true;
}

rightTrianglesIntCoords(2);
```

# --solutions--

```js
function rightTrianglesIntCoords(limit) {
  function isRightTriangle(points) {
    for (let i = 0; i < points.length; i++) {
      const pointA = points[i];
      const pointB = points[(i + 1) % 3];
      const pointC = points[(i + 2) % 3];
      const vectorAB = [pointB[0] - pointA[0], pointB[1] - pointA[1]];
      const vectorAC = [pointC[0] - pointA[0], pointC[1] - pointA[1]];

      if (isRightAngleBetween(vectorAB, vectorAC)) {
        return true;
      }
    }
    return false;
  }

  function isRightAngleBetween(vector1, vector2) {
    return vector1[0] * vector2[0] + vector1[1] * vector2[1] === 0;
  }

  function getSetKey(points) {
    return (
      '0.0,' +
      points
        .sort((a, b) => a[0] - b[0])
        .map(point => point.join('.'))
        .join(',')
    );
  }

  const pointO = [0, 0];
  const rightTriangles = new Set();
  for (let x1 = 1; x1 <= limit; x1++) {
    for (let y1 = 0; y1 <= limit; y1++) {
      const pointP = [x1, y1];
      for (let x2 = 0; x2 <= limit; x2++) {
        for (let y2 = 1; y2 <= limit; y2++) {
          const pointQ = [x2, y2];
          if (pointP[0] === pointQ[0] && pointP[1] === pointQ[1]) {
            continue;
          }
          if (isRightTriangle([pointO, pointP, pointQ])) {
            rightTriangles.add(getSetKey([pointP, pointQ]));
          }
        }
      }
    }
  }
  return rightTriangles.size;
}
```
