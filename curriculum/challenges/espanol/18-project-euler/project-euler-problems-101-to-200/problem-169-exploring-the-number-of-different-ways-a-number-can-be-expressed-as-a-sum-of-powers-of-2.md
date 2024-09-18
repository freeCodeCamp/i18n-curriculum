---
id: 5900f4151000cf542c50ff28
title: >-
  Problema 169: Explorando el número de diferentes maneras en que un número puede ser expresado como una suma de potencias de 2
challengeType: 1
forumTopicId: 301803
dashedName: >-
  problem-169-exploring-the-number-of-different-ways-a-number-can-be-expressed-as-a-sum-of-powers-of-2
---

# --description--

Define $f(0)=1$ y $f(n)$ como el número de diferentes maneras en que $n$ puede ser expresado como una suma de potencias enteras de 2 usando cada potencia no más de dos veces.

Por ejemplo, $f(10)=5$ ya que hay cinco diferentes maneras de expresar 10:

$$\begin{align}   & 1 + 1 + 8 \\\\
  & 1 + 1 + 4 + 4 \\\\   & 1 + 1 + 2 + 2 + 4 \\\\
  & 2 + 4 + 4 \\\\ & 2 + 8 \end{align}$$

¿Qué es $f({10}^{25})$?

# --hints--

`numberOfWaysToExpress()` debe volver `178653872807`.

```js
assert.strictEqual(numberOfWaysToExpress(), 178653872807);
```

# --seed--

## --seed-contents--

```js
function numberOfWaysToExpress() {

  return true;
}

numberOfWaysToExpress();
```

# --solutions--

```js
// solution required
```
