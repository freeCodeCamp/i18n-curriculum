---
id: 5900f4eb1000cf542c50fffd
title: 'Problema 382: Generando polígonos'
challengeType: 1
forumTopicId: 302046
dashedName: problem-382-generating-polygons
---

# --description--

Un polígono es una figura plana compuesta por segmentos de línea recta que están unidos para formar una cadena cerrada o circuito. Un poligono consta de al menos tres lados y no se intersecan así mismo.

Se dice que un conjunto $S$ de números positivos genera un polígono $P$ sí:

- no hay dos lados $P$ que sean de la misma longitud,
- la longitud de cada lado $P$ esta en $S$, y
- $S$ no contiene otro valor.

Por ejemplo:

El conjunto {3, 4, 5} genera un polígono con lados 3, 4, y 5 (un triángulo).

El conjunto {6, 9, 11, 24} genera un polígono con lados 6, 9, 11, y 24 (un cuadrilátero).

Los conjuntos {1, 2, 3} y {2, 3, 4, 9} no generan ningún polígono en absoluto.

Considera la secuencia $s$, definida de la siguiente manera:

- $s_1 = 1$, $s_2 = 2$, $s_3 = 3$
- $s_n = s_{n - 1} + s_{n - 3}$ for $n > 3$.

Sea $U_n$ el conjunto $\\{s_1, s_2, \ldots, s_n\\}$. Por ejemplo, $U_{10} = \\{1, 2, 3, 4, 6, 9, 13, 19, 28, 41\\}$.

Sea $f(n)$ el número de subconjuntos de $U_n$ los cuales generan al menos un polígono.

Por ejemplo, $f(5) = 7$, $f(10) = 501$ y $f(25) = 18\\,635\\,853$.

Encuentra los últimos 9 dígitos de $f({10}^{18})$.

# --hints--

`generatingPolygons()` debería devolver `697003956`.

```js
assert.strictEqual(generatingPolygons(), 697003956);
```

# --seed--

## --seed-contents--

```js
function generatingPolygons() {

  return true;
}

generatingPolygons();
```

# --solutions--

```js
// solution required
```
