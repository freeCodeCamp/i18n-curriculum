---
id: 5900f5411000cf542c510054
title: 'Problema 468: Divisores suaves de coeficientes binomiales'
challengeType: 1
forumTopicId: 302143
dashedName: problem-468-smooth-divisors-of-binomial-coefficients
---

# --description--

Un entero se llama B-suave si ninguno de sus factores primos es mayor que $B$.

Sea $SB(n)$ el mayor divisor B-suave de $n$.

Ejemplos:

$$\begin{align}   & S_1(10) = 1 \\\\
  & S_4(2\\,100) = 12 \\\\ & S_{17}(2\\,496\\,144) = 5\\,712 \end{align}$$

Define $F(n) = \displaystyle\sum_{B = 1}^n \sum_{r = 0}^n S_B(\displaystyle\binom{n}{r})$. Aquí, $\displaystyle\binom{n}{r}$ denota el coeficiente binomial.

Ejemplos:

$$\begin{align}   & F(11) = 3132 \\\\
  & F(1\\,111)\bmod 1\\,000\\,000\\,993 = 706\\,036\\,312 \\\\ & F(111\\,111)\bmod 1\\,000\\,000\\,993 = 22\\,156\\,169 \end{align}$$

Encuentra $F(11\\,111\\,111)\bmod 1\\,000\\,000\\,993$.

# --hints--

`smoothDivisorsOfBinomialCoefficients()` debe volver `852950321`.

```js
assert.strictEqual(smoothDivisorsOfBinomialCoefficients(), 852950321);
```

# --seed--

## --seed-contents--

```js
function smoothDivisorsOfBinomialCoefficients() {

  return true;
}

smoothDivisorsOfBinomialCoefficients();
```

# --solutions--

```js
// solution required
```
