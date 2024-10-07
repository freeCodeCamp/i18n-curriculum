---
id: 5900f4b91000cf542c50ffcc
title: 'Problema 333: Particiones especiales'
challengeType: 1
forumTopicId: 301991
dashedName: problem-333-special-partitions
---

# --description--

Todos los enteros positivos pueden particionarse de tal manera que cada término de la partición pueda expresarse como $2^i \times 3^j$, donde $i, j ≥ 0$.

Consideremos sólo aquellas particiones en las que ninguno de los términos puede dividir los otros términos. Por ejemplo la partición de $17 = 2 + 6 + 9 = (2^1 \times 3^0 + 2^1 \times 3^1 + 2^0 \times 3^2)$ no es válida, pues 2 puede dividir 6. Tampoco la partición $17 = 16 + 1 = (2^4 \times 3^0 + 2^0 \times 3^0)$ ya que 1 puede dividir 16. La única partición válida de 17 sería $8 + 9 = (2^3 \times 3^0 + 2^0 \times 3^2)$.

Muchos enteros tienen más de una partición válida, 11 es el primero con las siguientes dos particiones.

$$\begin{align}   & 11 = 2 + 9 = (2^1 \times 3^0 + 2^0 \times 3^2) \\\\
  & 11 = 8 + 3 = (2^3 \times 3^0 + 2^0 \times 3^1) \end{align}$$

Vamos a definir $P(n)$ como el número de particiones válidas de $n$. Por ejemplo, $P(11) = 2$.

Consideremos solo los enteros primos $q$ que tendrían una sola partición válida como $P(17)$.

La suma de los primos $q &lt;100$ tales que $P(q) = 1$ es igual a 233.

Calcula la suma de los primos $q &lt; 1\\,000\\,000$ tales que $P(q) = 1$.

# --hints--

`specialPartitions()` debe retornar `3053105`.

```js
assert.strictEqual(specialPartitions(), 3053105);
```

# --seed--

## --seed-contents--

```js
function specialPartitions() {

  return true;
}

specialPartitions();
```

# --solutions--

```js
// solution required
```
