---
id: 5900f4311000cf542c50ff44
title: 'Problem 197: Investigating the behavior of a recursively defined sequence'
challengeType: 1
forumTopicId: 301835
dashedName: problem-197-investigating-the-behaviour-of-a-recursively-defined-sequence
---

# --description--

Dada es la función $f(x) = ⌊{2}^{30.403243784 - x^2}⌋ × {10}^{-9}$ ( ⌊ ⌋ es la función suelo), la secuencia $u_n$ está definida por $u_0 = -1$ y $u_{n + 1} = f(u_n)$.

Encuentra $u_n + u_{n + 1}$ para $n = {10}^{12}$. Da tu respuesta con 9 dígitos después del punto decimal.

# --hints--

`recursivelyDefinedSequence()` debe volver `1.710637717`.

```js
assert.strictEqual(recursivelyDefinedSequence(), 1.710637717);
```

# --seed--

## --seed-contents--

```js
function recursivelyDefinedSequence() {

  return true;
}

recursivelyDefinedSequence();
```

# --solutions--

```js
// solution required
```
