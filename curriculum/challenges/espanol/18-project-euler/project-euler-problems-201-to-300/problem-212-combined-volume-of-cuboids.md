---
id: 5900f4411000cf542c50ff53
title: 'Problema 212: Volumen Combinado de Cuboides'
challengeType: 1
forumTopicId: 301854
dashedName: problem-212-combined-volume-of-cuboids
---

# --description--

Un cuboide alineado por ejes, especificado por los parámetros $\{ (x_0,y_0,z_0), (dx,dy,dz) \}$, consiste en todos los puntos ($X$,$Y$,$Z$) tal que $x_0 ≤ X ≤ x_0 + dx$, $y_0 ≤ Y ≤ y_0 + dy$ y $z_0 ≤ Z ≤ z_0 + dz$. El volumen del cuboide es el producto de $dx × dy × dz$. El volumen combinado de una colección de cuboides es el volumen de su unión y será menor que la suma de los volúmenes individuales si cualquiera de los cuboides se superponen.

Sea $C_1, \ldots, C_{50000}$ una colección de cuboides alineados con 50000 ejes tales que $C_n$ tenga estos parámetros

$$\begin{align}   & x_0 = S_{6n - 5} \\; \text{modulo} \\; 10000    \\\\
  & y_0 = S_{6n - 4} \\; \text{modulo} \\; 10000    \\\\   & z_0 = S_{6n - 3} \\; \text{modulo} \\; 10000    \\\\
  & dx = 1 + (S_{6n - 2} \\; \text{modulo} \\; 399) \\\\   & dy = 1 + (S_{6n - 1} \\; \text{modulo} \\; 399) \\\\
  & dz = 1 + (S_{6n} \\; \text{modulo} \\; 399)     \\\\ \end{align}$$

donde $S_1, \ldots, S_{300000}$ proviene del "Generador de Fibonacci Rezagado":

Para $1 ≤ k ≤ 55$, $S_k = [100003 - 200003k + 300007k^3] \\; (modulo \\; 1000000)$

Para $56 ≤ k$, $S_k = [S_{k - 24} + S_{k - 55}] \\; (modulo \\; 1000000)$

Entonces $C_1$ tiene los parámetros $\{(7,53,183), (94,369,56)\}$, $C_2$ tiene los parámetros $\{(2383,3563,5079), (42,212,344)\}$, y así sucesivamente.

El volumen combinado de los primeros 100 cuboides, $C_1, \ldots, C_{100}$, es 723581599.

¿Cuál es el volumen combinado de los 50000 cuboides, $C_1, \ldots, C_{50000}$?

# --hints--

`combinedValueOfCuboids()` debe retornar `328968937309`.

```js
assert.strictEqual(combinedValueOfCuboids(), 328968937309);
```

# --seed--

## --seed-contents--

```js
function combinedValueOfCuboids() {

  return true;
}

combinedValueOfCuboids();
```

# --solutions--

```js
// solution required
```
