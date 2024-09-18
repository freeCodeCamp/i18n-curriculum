---
id: 5900f4cf1000cf542c50ffe1
title: 'Problema 354: Distancias en un panal de abejas'
challengeType: 1
forumTopicId: 302014
dashedName: problem-354-distances-in-a-bees-honeycomb
---

# --description--

Considera un panal de una abeja donde cada celda es un hexágono regular perfecto con lado de longitud 1.

<img alt="panal con lados de hexágonos de longitud 1" src="https://cdn.freecodecamp.org/curriculum/project-euler/distances-in-a-bees-honeycomb.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Una celda particular está ocupada por la abeja reina. Para un número real positivo $L$, sea $B(L)$ el conteo de las celdas con distancia $L$ desde la celda de la abeja reina (todas las distancias se miden de centro a centro); puedes asumir que el panal es lo suficientemente grande para acomodar cualquier distancia que deseemos considerar.

Por ejemplo, $B(\sqrt{3}) = 6$, $B(\sqrt{21}) = 12$ y $B(111\\,111\\,111) = 54$.

Encuentra el número de $L ≤ 5 \times {10}^{11}$ tal que $B(L) = 450$.

# --hints--

`distancesInHoneycomb()` debe volver `58065134`.

```js
assert.strictEqual(distancesInHoneycomb(), 58065134);
```

# --seed--

## --seed-contents--

```js
function distancesInHoneycomb() {

  return true;
}

distancesInHoneycomb();
```

# --solutions--

```js
// solution required
```
