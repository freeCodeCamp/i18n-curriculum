---
id: 5900f5231000cf542c510034
title: 'Problema 438: Parte entera de las soluciones de ecuaciones polinómicas'
challengeType: 1
forumTopicId: 302109
dashedName: problem-438-integer-part-of-polynomial-equations-solutions
---

# --description--

Para un $n$-tupla de enteros $t = (a_1, \ldots, a_n)$, sea $(x_1, \ldots, x_n)$ las soluciones de la ecuación polinómica $x^n + a_1x^{n - 1} + a_2x^{n - 2} + \ldots + a_{n - 1}x + a_n = 0$.

Considera lo siguiente:

- $x_1, \ldots, x_n$ son todos reales.
- Si $x_1, ..., x_n$ están ordenados, $⌊x_i⌋ = i$ para $1 ≤ i ≤ n$. ($⌊·⌋:$ función de piso.)

En el caso de $n = 4$, hay 12 $n$-tuplas de enteros que satisfacen ambas condiciones.

Definimos $S(t)$ como la suma de los valores absolutos de los enteros en $t$.

Para $n = 4$ podemos verificar que $\sum S(t) = 2087$ para todos los $n$-tuplas $t$ que satisfacen ambas condiciones.

Encuentra $\sum S(t)$ para $n = 7$.

# --hints--

`polynomialIntegerPart()` debe volver `2046409616809`.

```js
assert.strictEqual(polynomialIntegerPart(), 2046409616809);
```

# --seed--

## --seed-contents--

```js
function polynomialIntegerPart() {

  return true;
}

polynomialIntegerPart();
```

# --solutions--

```js
// solution required
```
