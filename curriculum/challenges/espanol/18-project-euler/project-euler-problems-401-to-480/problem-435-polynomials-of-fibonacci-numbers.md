---
id: 5900f5201000cf542c510032
title: 'Problema 435: Polinomios de los números de Fibonacci'
challengeType: 1
forumTopicId: 302106
dashedName: problem-435-polynomials-of-fibonacci-numbers
---

# --description--

Los números de Fibonacci $\\{f_n, n ≥ 0\\}$ se definen recursivamente como $f_n = f_{n - 1} + f_{n - 2}$ con casos base $f_0 = 0$ y $f_1 = 1$.

Definir los polinomios $\\{F_n, n ≥ 0\\}$ como $F_n(x) = \displaystyle\sum_{i = 0}^n f_ix^i$.

Por ejemplo, $F_7(x) = x + x^2 + 2x^3 + 3x^4 + 5x^5 + 8x^6 + 13x^7$, y $F_7(11) = 268\\,357\\,683$.

Sea $n = {10}^{15}$. Encuentra la suma $\displaystyle\sum_{x = 0}^{100} F_n(x)$ y da tu respuesta módulo $1\\,307\\,674\\,368\\,000 \\, (= 15!)$.

# --hints--

`polynomialsOfFibonacciNumbers()` debe volver `252541322550`.

```js
assert.strictEqual(polynomialsOfFibonacciNumbers(), 252541322550);
```

# --seed--

## --seed-contents--

```js
function polynomialsOfFibonacciNumbers() {

  return true;
}

polynomialsOfFibonacciNumbers();
```

# --solutions--

```js
// solution required
```
