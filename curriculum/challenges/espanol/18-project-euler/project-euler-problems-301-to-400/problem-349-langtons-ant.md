---
id: 5900f4ca1000cf542c50ffdc
title: 'Problema 349: La hormiga de Langton'
challengeType: 1
forumTopicId: 302008
dashedName: problem-349-langtons-ant
---

# --description--

An ant moves on a regular grid of squares that are colored either black or white.

La hormiga siempre está orientada en una de las direcciones cardinales (izquierda, derecha, arriba o abajo) y se mueve de un cuadrado a uno adyacente siguiendo las siguientes reglas:

- si está en un cuadrado negro, cambia el color del cuadrado a blanco, gira 90° en sentido antihorario y avanza un cuadrado.
- si está en un cuadrado blanco, cambia el color del cuadrado a negro, gira 90° en sentido horario y avanza un cuadrado.

Comenzando con una cuadrícula que es completamente blanca, ¿cuántos cuadrados son negros después de ${10}^{18}$ movimientos de la hormiga?

# --hints--

`langtonsAnt()` debe volver `115384615384614940`.

```js
assert.strictEqual(langtonsAnt(), 115384615384614940);
```

# --seed--

## --seed-contents--

```js
function langtonsAnt() {

  return true;
}

langtonsAnt();
```

# --solutions--

```js
// solution required
```
