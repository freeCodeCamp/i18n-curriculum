---
id: 5900f5241000cf542c510036
title: 'Problem 437: Fibonacci-Urwurzeln'
challengeType: 1
forumTopicId: 302108
dashedName: problem-437-fibonacci-primitive-roots
---

# --description--

Wenn wir $8^n$ modulo 11 für $n = 0$ bis 9 berechnen, erhalten wir: 1, 8, 9, 6, 4, 10, 3, 2, 5, 7.

Wie wir sehen, kommen alle möglichen Werte von 1 bis 10 vor. 8 ist also eine Urwurzel aus 11.

Aber es gibt noch mehr:

Wenn wir genauer hinschauen, sehen wir:

$$\begin{align}   & 1 + 8 = 9 \\\\
  & 8 + 9 = 17 ≡ 6\bmod 11 \\\\   & 9 + 6 = 15 ≡ 4\bmod 11 \\\\
  & 6 + 4 = 10 \\\\   & 4 + 10 = 14 ≡ 3\bmod 11 \\\\
  & 10 + 3 = 13 ≡ 2\bmod 11 \\\\   & 3 + 2 = 5 \\\\
  & 2 + 5 = 7 \\\\ & 5 + 7 = 12 ≡ 1\bmod 11. \end{align}$$

Die Potenzen von 8 mod 11 sind also zyklisch mit Periode 10, und $8^n + 8^{n + 1} ≡ 8^{n + 2} (\text{mod } 11)$. 8 wird als Fibonacci-Primitivwurzel aus 11 bezeichnet.

Nicht jede Primzahl hat eine Fibonacci-Primitivwurzel. Es gibt 323 Primzahlen unter 10000 mit einer oder mehreren Fibonacci-Primitivwurzeln und die Summe dieser Primzahlen ist 1480491.

Finde die Summe der Primzahlen kleiner als $100\\.000\.000$ mit mindestens einer Fibonacci-Primitivwurzel.

# --hints--

`fibonacciPrimitiveRoots()` sollte `74204709657207` zurückgeben.

```js
assert.strictEqual(fibonacciPrimitiveRoots(), 74204709657207);
```

# --seed--

## --seed-contents--

```js
function fibonacciPrimitiveRoots() {

  return true;
}

fibonacciPrimitiveRoots();
```

# --solutions--

```js
// solution required
```
