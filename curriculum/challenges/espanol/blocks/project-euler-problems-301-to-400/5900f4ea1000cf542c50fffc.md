---
id: 5900f4ea1000cf542c50fffc
title: 'Probelma 381: (prime-k) factorial'
challengeType: 1
forumTopicId: 302045
dashedName: problem-381-prime-k-factorial
---

# --description--

Para un primo $p$ sea $S(p) = (\sum (p - k)!)\bmod (p)$ para $1 ≤ k ≤ 5$.

Por ejemplo, si $p = 7$,

$$(7 - 1)! + (7 - 2)! + (7 - 3)! + (7 - 4)! + (7 - 5)! = 6! + 5! + 4! + 3! + 2! = 720 + 120 + 24 + 6 + 2 = 872$$

Como $872\bmod (7) = 4$, $S(7) = 4$.

Puede verificarse que $\sum S(p) = 480$ para $5 ≤ p &lt; 100$.

Encuentra $\sum S(p)$ para $5 ≤ p &lt; {10}^8$.

# --hints--

`primeKFactorial()` debe volver `139602943319822`.

```js
assert.strictEqual(primeKFactorial(), 139602943319822);
```

# --seed--

## --seed-contents--

```js
function primeKFactorial() {

  return true;
}

primeKFactorial();
```

# --solutions--

```js
// solution required
```
