---
id: 5900f5201000cf542c510032
title: 'Problem 435: Polynome der Fibonacci-Zahlen'
challengeType: 1
forumTopicId: 302106
dashedName: problem-435-polynomials-of-fibonacci-numbers
---

# --description--

Die Fibonacci-Zahlen $\\{f_n, n ≥ 0\\}$ sind rekursiv definiert als $f_n = f_{n - 1} + f_{n - 2}$ mit den Basisfällen $f_0 = 0$ und $f_1 = 1$.

Definiere die Polynome $\\{F_n, n ≥ 0\\}$ als $F_n(x) = \displaystyle\sum_{i = 0}^n f_ix^i$.

Zum Beispiel, $F_7(x) = x + x^2 + 2x^3 + 3x^4 + 5x^5 + 8x^6 + 13x^7$, und $F_7(11) = 268\\,357\\,683$.

Sei $n = {10}^{15}$. Finde die Summe $\displaystyle\sum_{x = 0}^{100} F_n(x)$ und gib deine Antwort modulo $1\\,307\\,674\\,368\\,000 \\\, (= 15!)$.

# --hints--

`polynomialsOfFibonacciNumbers()` sollte `252541322550` zurückgeben.

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
