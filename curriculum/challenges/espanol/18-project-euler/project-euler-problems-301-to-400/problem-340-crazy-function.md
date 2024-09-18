---
id: 5900f4c21000cf542c50ffd4
title: 'Problema 340: Función Loca'
challengeType: 1
forumTopicId: 301999
dashedName: problem-340-crazy-function
---

# --description--

Para enteros fijos $a$, $b$, $c$, define la función loca $F(n)$ como sigue:

$$\begin{align}   & F(n) = n - c \\;\text{ para todo } n > b \\\\
  & F(n) = F(a + F(a + F(a + F(a + n)))) \\;\text{ para todo } n ≤ b. \end{align}$$

También, define $S(a, b, c) = \displaystyle\sum_{n = 0}^b F(n)$.

Por ejemplo, si $a = 50$, $b = 2000$ y $c = 40$, entonces $F(0) = 3240$ y $F(2000) = 2040$. También, $S(50, 2000, 40) = 5\\,204\\,240$.

Encuentra los últimos 9 dígitos de $S({21}^7, 7^{21}, {12}^7)$.

# --hints--

`crazyFunction()` debe devolver `291504964`.

```js
assert.strictEqual(crazyFunction(), 291504964);
```

# --seed--

## --seed-contents--

```js
function crazyFunction() {

  return true;
}

crazyFunction();
```

# --solutions--

```js
// solution required
```
