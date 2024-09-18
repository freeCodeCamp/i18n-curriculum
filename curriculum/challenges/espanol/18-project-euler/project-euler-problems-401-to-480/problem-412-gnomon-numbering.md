---
id: 5900f5081000cf542c51001a
title: 'Problema 412: Numeración de gnomon'
challengeType: 1
forumTopicId: 302081
dashedName: problem-412-gnomon-numbering
---

# --description--

Para números enteros $m$, $n$ ($0 ≤ n < m$), sea $L(m, n)$ una cuadrícula de $m×m$ con la cuadrícula superior derecha de $n×n$ removida.

Por ejemplo, $L(5, 3)$ se ve así:

<img alt="Cuadrícula 5x5, con cuadrícula 3x3 removida de la parte superior derecha" src="https://cdn.freecodecamp.org/curriculum/project-euler/gnomon-numbering-1.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Queremos numerar cada celda de $L(m, n)$ con números consecutivos 1, 2, 3, ... tal que el número en cada celda sea menor que el número debajo y a la izquierda de él.

Por ejemplo, aquí hay dos numeraciones válidas de $L(5, 3)$:

<img alt="dos numeraciones válidas de L(5, 3)" src="https://cdn.freecodecamp.org/curriculum/project-euler/gnomon-numbering-2.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Sea $LC(m, n)$ el número de numeraciones válidas de $L(m, n)$. Se puede verificar que $LC(3, 0) = 42$, $LC(5, 3) = 250\\,250$, $LC(6, 3) = 406\\,029\\,023\\,400$ y $LC(10, 5)\bmod 76\\,543\\,217 = 61\\,251\\,715$.

Encontrar $LC(10\\,000, 5\\,000)\bmod 76\\,543\\,217$.

# --hints--

`gnomonNumbering()` debe volver `38788800`.

```js
assert.strictEqual(gnomonNumbering(), 38788800);
```

# --seed--

## --seed-contents--

```js
function gnomonNumbering() {

  return true;
}

gnomonNumbering();
```

# --solutions--

```js
// solution required
```
