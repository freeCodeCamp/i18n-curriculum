---
id: 5900f5071000cf542c510018
title: 'Problem 410: Kreis und Tangenslinie'
challengeType: 1
forumTopicId: 302079
dashedName: problem-410-circle-and-tangent-line
---

# --description--

Sei $C$ der Kreis mit dem Radius $r$, $x^2 + y^2 = r^2$. Wir wählen zwei Punkte $P(a, b)$ und $Q(-a, c)$, so dass die Linie, die durch $P$ und $Q$ verläuft, tangent zu $C$ ist.

Zum Bespiel erfüllt der Vierling $(r, a, b, c) = (2, 6, 2, -7)$ diese Eigenschaft.

Lass $F(R, X)$ die Anzahl der ganzzahligen Vierlinge $(r, a, b, c)$ mit dieser Eigenschaft und mit $0 &lt; r ≤ R$ und $0 &lt; a ≤ X$ sein.

Wir können nachweisen, dass $F(1, 5) = 10$, $F(2, 10) = 52$ und $F(10, 100) = 3384$.

Finde $F({10}^8, {10}^9) + F({10}^9, {10}^8)$.

# --hints--

`circleAndTangentLine()` sollte `799999783589946600` zurückgeben.

```js
assert.strictEqual(circleAndTangentLine(), 799999783589946600);
```

# --seed--

## --seed-contents--

```js
function circleAndTangentLine() {

  return true;
}

circleAndTangentLine();
```

# --solutions--

```js
// solution required
```
