---
id: 5900f40d1000cf542c50ff1f
title: 'Problem 160: Faktorielle Nachkommastellen'
challengeType: 1
forumTopicId: 301794
dashedName: problem-160-factorial-trailing-digits
---

# --description--

Für jede $N$, lass $f(N)$ die letzten fünf Ziffern vor den hinteren Nullen in $N!$ sein.

Zum Beispiel,

$$\begin{align}   & 9! = 362880 \\; \text{so} \\; f(9) = 36288 \\\\
  & 10! = 3628800 \\; \text{so} \\; f(10) = 36288 \\\\ & 20! = 2432902008176640000 \\; \text{so} \\; f(20) = 17664 \end{align}$$

Finde $f(1,000,000,000,000)$

# --hints--

`factorialTrailingDigits()` sollte `16576` zurückgeben.

```js
assert.strictEqual(factorialTrailingDigits(), 16576);
```

# --seed--

## --seed-contents--

```js
function factorialTrailingDigits() {

  return true;
}

factorialTrailingDigits();
```

# --solutions--

```js
// solution required
```
