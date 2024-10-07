---
id: 5900f4ed1000cf542c50fffe
title: 'Problem 384: Rudin-Shapiro-Folge'
challengeType: 1
forumTopicId: 302048
dashedName: problem-384-rudin-shapiro-sequence
---

# --description--

Definiere die Folge $a(n)$ als die Anzahl der benachbarten Paare von Einsen in der binären Erweiterung von $n$ (möglicherweise überlappend).

z.B.: $a(5) = a({101}_2) = 0$, $a(6) = a({110}_2) = 1$, $a(7) = a({111}_2) = 2$

Definiere die Sequenz $b(n) = {(-1)}^{a(n)}$. Diese Sequenz wird als Rudin-Shapiro-Sequenz bezeichnet.

Man betrachte auch die Summationsfolge von $b(n)$: $s(n) = \displaystyle\sum_{i = 0}^{n} b(i)$.

Die ersten beiden Werte dieser Sequenzen sind:

$$\begin{array}{lr}   n    & 0 & 1 & 2 &  3 & 4 & 5 &  6 & 7 \\\\
  a(n) & 0 & 0 & 0 &  1 & 0 & 0 &  1 & 2 \\\\   b(n) & 1 & 1 & 1 & -1 & 1 & 1 & -1 & 1 \\\\
  s(n) & 1 & 2 & 3 &  2 & 3 & 4 &  3 & 4 \end{array}$$

Die Folge $s(n)$ hat die bemerkenswerte Eigenschaft, dass alle Elemente positiv sind und jede positive ganze Zahl $k$ genau $k$ mal vorkommt.

Definiere $g(t, c)$, mit $1 ≤ c ≤ t$, als den Index in $s(n)$, für den $t$ zum $c$-ten Mal in $s(n)$ auftritt.

z.B.: $g(3, 3) = 6$, $g(4, 2) = 7$ und $g(54321, 12345) = 1\\,220\\,847\\,710$.

Lasse $F(n)$ die Fibonacci-Folge sein, die durch definiert wurde:

$$\begin{align}   & F(0) = F(1) = 1 \text{ and} \\\\
  & F(n) = F(n - 1) + F(n - 2) \text{ for } n > 1. \end{align}$$

Definiere $GF(t) = g(F(t), F(t - 1))$.

Finde $\sum GF(t)$ für$ 2 ≤ t ≤ 45$.

# --hints--

`rudinShapiroSequence()` sollte `3354706415856333000` zurückgeben.

```js
assert.strictEqual(rudinShapiroSequence(), 3354706415856333000);
```

# --seed--

## --seed-contents--

```js
function rudinShapiroSequence() {

  return true;
}

rudinShapiroSequence();
```

# --solutions--

```js
// solution required
```
