---
id: 5900f51d1000cf542c51002f
title: 'Problem 433: Schritte bei Euclids Algorithmus'
challengeType: 1
forumTopicId: 302104
dashedName: problem-433-steps-in-euclids-algorithm
---

# --description--

$E(x_0, y_0)$ sei die Anzahl an Schritten, die es benötigt, um den größten gemeinsamen Teiler von $x_0$ und $y_0$ mit Euclids Algorithmus zu bestimmen. Formeller ausgedrückt:

$$\begin{align}   & x_1 = y_0, y_1 = x_0\bmod y_0 \\\\
  & x_n = y_{n - 1}, y_n = x_{n - 1}\bmod y_{n - 1} \end{align}$$

$E(x_0, y_0)$ ist das kleinste $n$, so dass $y_n = 0$.

Wir haben $E(1, 1) = 1$, $E(10, 6) = 3$ und $E(6, 10) = 4$.

Definiere $S(N)$ als die Summe von $E(x, y)$ für $1 ≤ x$, $y ≤ N$.

Wir haben $S(1) = 1$, $S(10) = 221$ und $S(100) = 39\\,826$.

Finde $S(5 \times {10}^6)$.

# --hints--

`stepsInEuclidsAlgorithm()` sollte `326624372659664` zurückgeben.

```js
assert.strictEqual(stepsInEuclidsAlgorithm(), 326624372659664);
```

# --seed--

## --seed-contents--

```js
function stepsInEuclidsAlgorithm() {

  return true;
}

stepsInEuclidsAlgorithm();
```

# --solutions--

```js
// solution required
```
