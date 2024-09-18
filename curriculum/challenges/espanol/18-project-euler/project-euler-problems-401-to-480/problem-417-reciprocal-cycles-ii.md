---
id: 5900f50d1000cf542c51001f
title: 'Problema 417: Períodos en fracciones unitarias II'
challengeType: 1
forumTopicId: 302086
dashedName: problem-417-reciprocal-cycles-ii
---

# --description--

Fracción unitaria es aquella cuyo numerador es 1. Se muestra la representación decimal de las fracciones unitarias con denominadores de 2 a 10:

$$\begin{align}   & \frac{1}{2}  = 0.5 \\\\
  & \frac{1}{3}  = 0.(3) \\\\   & \frac{1}{4}  = 0.25 \\\\
  & \frac{1}{5}  = 0.2 \\\\   & \frac{1}{6}  = 0.1(6) \\\\
  & \frac{1}{7}  = 0.(142857) \\\\   & \frac{1}{8}  = 0.125 \\\\
  & \frac{1}{9}  = 0.(1) \\\\   & \frac{1}{10} = 0.1 \\\\
\end{align}$$

Donde $0.1(6)$ representa $0.166666\ldots$, teniendo un período de 1 dígito. Así mismo, $\frac{1}{7}$ tiene un período de 6 dígitos.

Las fracciones unitarias cuyo denominador no tienen otros factores primos que 2 y/o 5 no se consideran que tengan un período. Definimos la longitud del período de esas fracciones unitarias como 0.

Sea $L(n)$ la longitud del período de $\frac{1}{n}$. Se te da que $\sum L(n)$ para $3 ≤ n ≤ 1\\,000\\,000$ es igual a $55\\,535\\,191\\,115$.

Encuentra $\sum L(n)$ para $3 ≤ n ≤ 100\\,000\\,000$.

# --hints--

`reciprocalCyclesTwo()` debe volver `446572970925740`.

```js
assert.strictEqual(reciprocalCyclesTwo(), 446572970925740);
```

# --seed--

## --seed-contents--

```js
function reciprocalCyclesTwo() {

  return true;
}

reciprocalCyclesTwo();
```

# --solutions--

```js
// solution required
```
