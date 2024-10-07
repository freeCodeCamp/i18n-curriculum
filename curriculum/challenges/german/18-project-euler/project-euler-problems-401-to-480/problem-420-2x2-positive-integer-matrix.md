---
id: 5900f5111000cf542c510023
title: 'Problem 420: 2x2 positive integere Matrix'
challengeType: 1
forumTopicId: 302090
dashedName: problem-420-2x2-positive-integer-matrix
---

# --description--

Eine positiv integere Matrix ist eine Matrix, deren Elemente alle positive Integer sind.

Einige positive integere Matrizen können auf zwei verschiedene Arten als Quadrat einer positiven integeren Matrix ausgedrückt werden. Hier ist ein Beispiel:

$$\begin{pmatrix}   40 & 12 \\\\
  48 & 40 \end{pmatrix} =
{\begin{pmatrix}
  2 & 3 \\\\
 12 & 2 \end{pmatrix}}^2 =
{\begin{pmatrix}
  6 & 1 \\\\
  4 & 6 \end{pmatrix}}^2$$

Wir definieren $F(N)$ als die Anzahl der 2x2 positiven integeren Matrizen, die eine Spur kleiner als N sind und die auf zwei verschiedene Arten als Quadrat einer positiven integeren Matrix ausgedrückt werden können.

Wir können nachweisen, dass $F(50) = 7$ und $F(1000) = 1019$.

Finde $F({10}^7)$.

# --hints--

`positiveIntegerMatrix()` sollte `145159332` zurückgeben.

```js
assert.strictEqual(positiveIntegerMatrix(), 145159332);
```

# --seed--

## --seed-contents--

```js
function positiveIntegerMatrix() {

  return true;
}

positiveIntegerMatrix();
```

# --solutions--

```js
// solution required
```
