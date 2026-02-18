---
id: 5900f4831000cf542c50ff95
title: 'Problema 278: Combinaciones lineales de semiprimos'
challengeType: 1
forumTopicId: 301928
dashedName: problem-278-linear-combinations-of-semiprimes
---

# --description--

Dado el conjunto de enteros $1 &lt; a_1 &lt; a_2 &lt; \ldots &lt; a_n$, considere la combinación lineal $q_1a_1 + q_2a_2 + \ldots + q_na_n = b$, utilizando solo valores enteros $q_k ≥ 0$.

Observe que para un conjunto dado de $a_k$, puede ser que no todos los valores de $b$ sean posibles. Por ejemplo, si $a_1 = 5$ y $a_2 = 7$, no hay $q_1 ≥ 0$ y $q_2 ≥ 0$ tal que $b$ podría ser 1, 2, 3, 4, 6, 8, 9, 11, 13, 16, 18 o 23.

De hecho, 23 es el valor imposible más grande de $b$ para $a_1 = 5$ y $a_2 = 7$. Por lo tanto, llamamos $f(5, 7) = 23$. De manera similar, se puede demostrar que $f(6, 10, 15)=29$ y $f(14, 22, 77) = 195$.

Encuentre $\sum f(pq,pr,qr)$, donde $p$, $q$ y $r$ son números primos y $p &lt; q &lt; r &lt; 5000$.

# --hints--

`linearCombinationOfSemiprimes()` debe volver `1228215747273908500`.

```js
assert.strictEqual(linearCombinationOfSemiprimes(), 1228215747273908500);
```

# --seed--

## --seed-contents--

```js
function linearCombinationOfSemiprimes() {

  return true;
}

linearCombinationOfSemiprimes();
```

# --solutions--

```js
// solution required
```
