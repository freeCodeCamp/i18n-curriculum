---
id: 5900f48d1000cf542c50ff9f
title: 'Problema 288: Un enorme factorial'
challengeType: 1
forumTopicId: 301939
dashedName: problem-288-an-enormous-factorial
---

# --description--

Para cualquier primo $p$ el número $N(p,q)$ se define por $N(p,q) = \sum_{n=0}^q T_n \times p^n$ con $T_n$ generado por el siguiente generador de números aleatorios:

$$\begin{align}   & S_0 = 290797 \\\\
  & S_{n + 1} = {S_n}^2\bmod 50\\,515\\,093 \\\\ & T_n = S_n\bmod p \end{align}$$

Sea $Nfac(p,q)$ el factorial de $N(p,q)$.

Sea $NF(p,q)$ el número de factores $p$ en $Nfac(p,q)$.

Está dado que $NF(3,10000) \bmod 3^{20} = 624\\,955\\,285$.

Encuentra $NF(61,{10}^7)\bmod {61}^{10}$.

# --hints--

`enormousFactorial()` debería volver `605857431263982000`.

```js
assert.strictEqual(enormousFactorial(), 605857431263982000);
```

# --seed--

## --seed-contents--

```js
function enormousFactorial() {

  return true;
}

enormousFactorial();
```

# --solutions--

```js
// solution required
```
