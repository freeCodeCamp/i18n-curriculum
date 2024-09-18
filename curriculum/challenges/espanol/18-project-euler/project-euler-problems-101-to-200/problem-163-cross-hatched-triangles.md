---
id: 5900f40f1000cf542c50ff22
title: 'Problema 163: Triángulos entrecruzados'
challengeType: 1
forumTopicId: 301797
dashedName: problem-163-cross-hatched-triangles
---

# --description--

Considere un triángulo equilátero en el cual se dibujan líneas rectas desde cada vértice hasta el medio del lado opuesto, como en el triángulo de tamaño 1 en el boceto a continuación.

<img alt="triángulos con tamaño 1 y tamaño 2" src="https://cdn.freecodecamp.org/curriculum/project-euler/cross-hatched-triangles.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Dieciséis triángulos de figura diferente o tamaño u orientación o ubicación ahora pueden observarse en ese triángulo. Usando triángulos de tamaño 1 como bloques de construcción, se pueden formar triángulos más grandes, como el triángulo de tamaño 2 en el boceto anterior. Ciento cuatro triángulos de figura diferente o tamaño o orientación o ubicación ahora pueden observarse en ese triángulo de tamaño 2.

Puede observarse que el triángulo de tamaño 2 contiene 4 bloques de construcción de triángulo de tamaño 1. Un triángulo de tamaño 3 contendría 9 bloques de construcción de triángulo de tamaño 1 y un triángulo de tamaño $n$ contendría así $n^2$ bloques de construcción de triángulo de tamaño 1.

Si denotamos $T(n)$ como el número de triángulos presentes en un triángulo de tamaño $n$, entonces

$$\begin{align}   & T(1) = 16 \\\\
  & T(2) = 104 \end{align}$$

Encuentra $T(36)$.

# --hints--

`crossHatchedTriangles()` debe volver `343047`.

```js
assert.strictEqual(crossHatchedTriangles(), 343047);
```

# --seed--

## --seed-contents--

```js
function crossHatchedTriangles() {

  return true;
}

crossHatchedTriangles();
```

# --solutions--

```js
// solution required
```
