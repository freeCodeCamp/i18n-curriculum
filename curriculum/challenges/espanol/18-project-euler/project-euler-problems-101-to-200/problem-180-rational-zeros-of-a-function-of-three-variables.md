---
id: 5900f4201000cf542c50ff33
title: 'Problema 180: Ceros racionales de una función de tres variables'
challengeType: 1
forumTopicId: 301816
dashedName: problem-180-rational-zeros-of-a-function-of-three-variables
---

# --description--

Para cualquier entero $n$, considere las tres funciones

$$\begin{align}   & f_{1,n}(x,y,z) = x^{n + 1} + y^{n + 1} - z^{n + 1}\\\\
  & f_{2,n}(x,y,z) = (xy + yz + zx) \times (x^{n - 1} + y^{n - 1} - z^{n - 1})\\\\ & f_{3,n}(x,y,z) = xyz \times (x^{n - 2} + y^{n - 2} - z^{n - 2}) \end{align}$$

y su combinación

$$\begin{align} & f_n(x,y,z) = f_{1,n}(x,y,z) + f_{2,n}(x,y,z) - f_{3,n}(x,y,z) \end{align}$$

Llamamos $(x,y,z)$ un triple dorado de orden $k$ si $x$, $y$ y $z$ son todos números racionales del formulario $\frac{a}{b}$ con $0 < a < b ≤ k$ y hay (al menos) un entero $n$, de modo que $f_n(x,y,z) = 0$.

Deja $s(x,y,z) = x + y + z$.

Deja $t = \frac{u}{v}$ la suma de todos los $s(x,y,z)$ distintos para todas las triples doradas $(x,y,z)$ de orden 35. Todos los $s(x,y,z)$ y $t$ deben estar en forma reducida.

Encuentra $u + v$.

# --hints--

`rationalZeros()` debe volver `285196020571078980`.

```js
assert.strictEqual(rationalZeros(), 285196020571078980);
```

# --seed--

## --seed-contents--

```js
function rationalZeros() {

  return true;
}

rationalZeros();
```

# --solutions--

```js
// solution required
```
