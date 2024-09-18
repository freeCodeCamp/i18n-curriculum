---
id: 5900f4521000cf542c50ff64
title: 'Problema 229: Cuatro Representaciones usando Cuadrados'
challengeType: 1
forumTopicId: 301872
dashedName: problem-229-four-representations-using-squares
---

# --description--

Considera el número 3600. Es muy especial, porque

$$\begin{align}   & 3600 = {48}^2 + {36}^2   \\\\
  & 3600 = {20}^2 + {2×40}^2 \\\\   & 3600 = {30}^2 + {3×30}^2 \\\\
  & 3600 = {45}^2 + {7×15}^2 \\\\ \end{align}$$

De manera similar, encontramos que $88201 = {99}^2 + {280}^2 = {287}^2 + 2 × {54}^2 = {283}^2 + 3 × {52}^2 = {197}^2 + 7 × {84}^2$.

En 1747, Euler demostró cuáles números son representables como suma de dos cuadrados. Nos interesan los números $n$ que admiten representaciones de todos los siguientes cuatro tipos:

$$\begin{align}   & n = {a_1}^2 + {b_1}^2  \\\\
  & n = {a_2}^2 + 2{b_2}^2 \\\\   & n = {a_3}^2 + 3{b_3}^2 \\\\
  & n = {a_7}^2 + 7{b_7}^2 \\\\ \end{align}$$

donde los $a_k$ y $b_k$ son enteros positivos.

Hay 75373 tales números que no exceden ${10}^7$.

¿Cuántos tales números hay que no exceden $2 × {10}^9$?

# --hints--

`representationsUsingSquares()` debe volver `11325263`.

```js
assert.strictEqual(representationsUsingSquares(), 11325263);
```

# --seed--

## --seed-contents--

```js
function representationsUsingSquares() {

  return true;
}

representationsUsingSquares();
```

# --solutions--

```js
// solution required
```
