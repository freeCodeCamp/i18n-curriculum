---
id: 5900f5231000cf542c510034
title: 'Problem 438: Ganzzahliger Teil der Lösungen von Polynomgleichungen'
challengeType: 1
forumTopicId: 302109
dashedName: problem-438-integer-part-of-polynomial-equations-solutions
---

# --description--

Für ein $n$-Tupel von ganzen Zahlen $t = (a_1, \ldots, a_n)$ seien $(x_1, \ldots, x_n)$ die Lösungen der Polynomgleichung $x^n + a_1x^{n - 1} + a_2x^{n - 2} + \ldots + a_{n - 1}x + a_n = 0$.

Betrachte die folgenden zwei Bedingungen:

- $x_1, \ldots, x_n$ sind alle real.
- Wenn $x_1, ..., x_n$ sortiert sind, ist $⌊x_i⌋ = i$ für $1 ≤ i ≤ n$. ($⌊·⌋:$ Abrundungsfunktion.)

Im Fall von $n = 4$ gibt es 12 $n$-Tupel von Integern, die beide Bedingungen erfüllen.

Wir definieren $S(t)$ als die Summe der Absolutwerte der Integer in $t$.

Für $n = 4$ können wir nachweisen, dass $\sum S(t) = 2087$ für alle $n$-Tupel $t$ gilt, die beide Bedingungen erfüllen.

Finde $\sum S(t)$ für $n = 7$.

# --hints--

`polynomialIntegerPart()` sollte `2046409616809` zurückgeben.

```js
assert.strictEqual(polynomialIntegerPart(), 2046409616809);
```

# --seed--

## --seed-contents--

```js
function polynomialIntegerPart() {

  return true;
}

polynomialIntegerPart();
```

# --solutions--

```js
// solution required
```
