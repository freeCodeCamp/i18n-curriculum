---
id: 5900f4d61000cf542c50ffe9
title: 'Problema 362: Factores sin cuadrados'
challengeType: 1
forumTopicId: 302023
dashedName: problem-362-squarefree-factors
---

# --description--

Considera el número 54.

54 se puede factorizar de 7 maneras distintas en uno o más factores mayores que 1:

$$54, 2 × 27, 3 × 18, 6 × 9, 3 × 3 × 6, 2 × 3 × 9 \texto{ y } 2 × 3 × 3 × 3$$

Si requerimos que los factores sean todos sin cuadrados, solo quedan dos maneras: $3 × 3 × 6$ y $2 × 3 × 3 × 3$.

Llamemos $Fsf(n)$ al número de maneras en que $n$ puede ser factorizado en uno o más factores sin cuadrados mayores que 1, así $Fsf(54) = 2$.

Sea $S(n)$ $\sum Fsf(k)$ para $k = 2$ a $n$.

$S(100) = 193$.

Encuentra $S(10\,000\,000\,000)$.

# --hints--

`squarefreeFactors()` debe volver `457895958010`.

```js
assert.strictEqual(squarefreeFactors(), 457895958010);
```

# --seed--

## --seed-contents--

```js
function squarefreeFactors() {

  return true;
}

squarefreeFactors();
```

# --solutions--

```js
// solution required
```
