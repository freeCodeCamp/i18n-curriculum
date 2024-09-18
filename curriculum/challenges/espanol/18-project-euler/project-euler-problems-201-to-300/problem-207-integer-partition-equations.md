---
id: 5900f43c1000cf542c50ff4e
title: 'Problema 207: Ecuaciones de partición de enteros'
challengeType: 1
forumTopicId: 301848
dashedName: problem-207-integer-partition-equations
---

# --description--

Para algunos enteros positivos $k$, existe un formulario de partición de enteros de la forma $4^t = 2^t + k$,

donde $4^t$, $2^t$, y $k$ son todos enteros positivos y $t$ es un número real.

Los primeros dos tales particiones son $4^1 = 2^1 + 2$ y $4^{1.584\\,962\\,5\ldots} = 2^{1.584\\,962\\,5\ldots} + 6$.

Las particiones donde $t$ es también entero se llaman perfectas. Para cualquier $m ≥ 1$ sea $P(m)$ la proporción de tales particiones que son perfectas con $k ≤ m$.

Así $P(6) = \frac{1}{2}$.

En la siguiente tabla se enumeran algunos valores de $P(m)$

$$\begin{align}   & P(5) = \frac{1}{1}    \\\\
  & P(10) = \frac{1}{2}   \\\\   & P(15) = \frac{2}{3}   \\\\
  & P(20) = \frac{1}{2}   \\\\   & P(25) = \frac{1}{2}   \\\\
  & P(30) = \frac{2}{5}   \\\\   & \ldots                \\\\
  & P(180) = \frac{1}{4}  \\\\ & P(185) = \frac{3}{13} \end{align}$$

Encuentra el menor $m$ para el cual $P(m) &lt; \frac{1}{12\\,345}$

# --hints--

`integerPartitionEquations()` debe volver `44043947822`.

```js
assert.strictEqual(integerPartitionEquations(), 44043947822);
```

# --seed--

## --seed-contents--

```js
function integerPartitionEquations() {

  return true;
}

integerPartitionEquations();
```

# --solutions--

```js
// solution required
```
