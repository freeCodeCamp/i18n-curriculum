---
id: 5900f4c21000cf542c50ffd4
title: 'Problem 340: Verrückte Funktion'
challengeType: 1
forumTopicId: 301999
dashedName: problem-340-crazy-function
---

# --description--

Definiere für feststehende ganze Zahlen $a$, $b$, $c$ die verrückte Funktion $F(n)$ wie folgt:

$$\begin{align}   & F(n) = n - c \\;\text{ for all } n > b \\\\
  & F(n) = F(a + F(a + F(a + F(a + n)))) \\;\text{ for all } n ≤ b. \end{align}$$

Definiere außerdem $S(a, b, c) = \displaystyle\sum_{n = 0}^b F(n)$.

Wenn zum Beispiel $a = 50$, $b = 2000$ und $c = 40$, dann ist $F(0) = 3240$ und $F(2000) = 2040$. Außerdem: $S(50, 2000, 40) = 5\\,204\\,240$.

Finde die letzten 9 Ziffern von $S({21}^7, 7^{21}, {12}^7)$.

# --hints--

`crazyFunction()` sollte `291504964` zurückgeben.

```js
assert.strictEqual(crazyFunction(), 291504964);
```

# --seed--

## --seed-contents--

```js
function crazyFunction() {

  return true;
}

crazyFunction();
```

# --solutions--

```js
// solution required
```
