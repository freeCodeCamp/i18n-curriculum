---
id: 5900f3fa1000cf542c50ff0c
title: 'Problema 140: Pepitas de oro de Fibonacci modificadas'
challengeType: 1
forumTopicId: 301769
dashedName: problem-140-modified-fibonacci-golden-nuggets
---

# --description--

Considera la serie polinómica infinita $A_G(x) = xG_1 + x^2G_2 + x^3G_3 + \cdots$, donde $G_k$ es el $k$-ésimo término de la relación de recurrencia de segundo orden $G_k = G_{k − 1} + G_{k − 2}, G_1 = 1$ y $G_2 = 4$; es decir, $1, 4, 5, 9, 14, 23, \ldots$.

Para este problema nos ocuparemos de los valores de $x$ para los cuales $A_G(x)$ es un entero positivo.

Los valores correspondientes de $x$ para los primeros cinco números naturales se muestran abajo.

| $x$                           | $A_G(x)$ |
| ----------------------------- | -------- |
| $\frac{\sqrt{5} − 1}{4}$    | $1$      |
| $\frac{2}{5}$                | $2$      |
| $\frac{\sqrt{22} − 2}{6}$   | $3$      |
| $\frac{\sqrt{137} − 5}{14}$ | $4$      |
| $\frac{1}{2}$                | $5$      |

Llamaremos a $A_G(x)$ una pepita de oro si $x$ es racional porque se vuelven cada vez más raras; por ejemplo, la vigésima pepita de oro es 211345365. Encuentra la suma de las primeras treinta pepitas de oro.

# --hints--

`modifiedGoldenNuggets()` debe volver `5673835352990`

```js
assert.strictEqual(modifiedGoldenNuggets(), 5673835352990);
```

# --seed--

## --seed-contents--

```js
function modifiedGoldenNuggets() {

  return true;
}

modifiedGoldenNuggets();
```

# --solutions--

```js
// solution required
```
