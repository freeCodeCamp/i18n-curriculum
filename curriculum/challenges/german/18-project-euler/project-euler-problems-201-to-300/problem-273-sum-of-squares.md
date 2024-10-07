---
id: 5900f47e1000cf542c50ff90
title: 'Problem 273: Summe der Quadrate'
challengeType: 1
forumTopicId: 301923
dashedName: problem-273-sum-of-squares
---

# --description--

Betrachte Gleichungen der Form: $a^2 + b^2 = N$, $0 ≤ a ≤ b$, $a$, $b$ und $N$ Integer.

Für $N = 65$ gibt es zwei Lösungen:

$a = 1, b = 8$ und $a = 4, b = 7$.

Wir nennen $S(N)$ die Summe der Werte von $a$ aller Lösungen von $a^2 + b^2 = N$, $0 ≤ a ≤ b$, $a$, $b$ und $N$ Integer.

Somit ist $S(65) = 1 + 4 = 5$.

Finde $\sum S(N)$, für alle quadratfreien $N$, die nur durch Primzahlen der Form $4k + 1$ mit $4k + 1 &lt; 150$ teilbar sind.

# --hints--

`sumOfSquares()` sollte `2032447591196869000` zurückgeben.

```js
assert.strictEqual(sumOfSquares(), 2032447591196869000);
```

# --seed--

## --seed-contents--

```js
function sumOfSquares() {

  return true;
}

sumOfSquares();
```

# --solutions--

```js
// solution required
```
