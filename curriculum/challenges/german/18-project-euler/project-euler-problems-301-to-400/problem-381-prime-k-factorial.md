---
id: 5900f4ea1000cf542c50fffc
title: 'Problem 381: (Prim-k)-Fakultät'
challengeType: 1
forumTopicId: 302045
dashedName: problem-381-prime-k-factorial
---

# --description--

Für eine Primzahl $p$ sei $S(p) = (\sum (p - k)!)\bmod (p)$ für $1 ≤ k ≤ 5$.

Zum Beispiel, wenn $p = 7$,

$$(7 - 1)! + (7 - 2)! + (7 - 3)! + (7 - 4)! + (7 - 5)! = 6! + 5! + 4! + 3! + 2! = 720 + 120 + 24 + 6 + 2 = 872$$

Als $872\bmod (7) = 4$, $S(7) = 4$.

Es lässt sich nachweisen, dass $\sum S(p) = 480$ für $5 ≤ p &lt; 100$.

Finde $\sum S(p)$ für $5 ≤ p &lt; {10}^8$.

# --hints--

`primeKFactorial()` sollte `139602943319822` zurückgeben.

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
