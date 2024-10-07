---
id: 5900f46e1000cf542c50ff81
title: 'Problem 258: Eine verzögerte Fibonacci-Folge'
challengeType: 1
forumTopicId: 301906
dashedName: problem-258-a-lagged-fibonacci-sequence
---

# --description--

Eine Sequenz ist definiert als:

- $g_k = 1$, for $0 ≤ k ≤ 1999$
- $g_k = g_{k - 2000} + g_{k - 1999}$, for $k ≥ 2000$.

Finde $g_k$ mod 20092010 für $k = {10}^{18}$.

# --hints--

`laggedFibonacciSequence()` sollte `12747994` zurückgeben.

```js
assert.strictEqual(laggedFibonacciSequence(), 12747994);
```

# --seed--

## --seed-contents--

```js
function laggedFibonacciSequence() {

  return true;
}

laggedFibonacciSequence();
```

# --solutions--

```js
// solution required
```
