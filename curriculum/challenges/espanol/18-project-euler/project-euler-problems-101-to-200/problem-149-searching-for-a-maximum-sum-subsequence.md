---
id: 5900f4021000cf542c50ff13
title: 'Problema 149: Buscando una subsecuencia con suma máxima'
challengeType: 1
forumTopicId: 301778
dashedName: problem-149-searching-for-a-maximum-sum-subsequence
---

# --description--

Mirando la tabla a continuación, es fácil verificar que la suma máxima posible de números adyacentes en cualquier dirección (horizontal, vertical, diagonal o anti-diagonal) es $16 (= 8 + 7 + 1)$.

$$\begin{array}{|r|r|r|r|} \hline −2 &  5 &  3 & 2 \\\\ \hline 9 & −6 &  5 & 1 \\\\ \hline 3 &  2 &  7 & 3 \\\\ \hline −1 &  8 & −4 & 8 \\\\ \hline \end{array}$$

Ahora, repitamos la búsqueda, pero a una escala mucho mayor:

Primero, genera cuatro millones de números pseudo-aleatorios usando un formulario específico de lo que se conoce como un "Generador de Fibonacci Rezagado":

Para $1 ≤ k ≤ 55$, $s_k = (100003 − 200003k + 300007{k}^3) \\ (modulo\\ 1000000) − 500000$.

Para $56 ≤ k ≤ 4000000$, $s_k = (s_{k − 24} + s_{k − 55} + 1000000) \\ (modulo\\ 1000000) − 500000$.

Así, $s_{10} = −393027$ y $s_{100} = 86613$.

Los términos de $s$ se arreglan en una tabla de 2000×2000, usando los primeros 2000 números para llenar la primer fila (secuencialmente), los siguientes 2000 números para llenar la segunda fila, y así sucesivamente.

Finalmente, encuentra la mayor suma de (cualquier número de) entradas adyacentes en cualquier dirección (horizontal, vertical, diagonal o anti-diagonal).

# --hints--

`maximumSubSequence()` debe volver `52852124`.

```js
assert.strictEqual(maximumSubSequence(), 52852124);
```

# --seed--

## --seed-contents--

```js
function maximumSubSequence() {

  return true;
}

maximumSubSequence();
```

# --solutions--

```js
// solution required
```
