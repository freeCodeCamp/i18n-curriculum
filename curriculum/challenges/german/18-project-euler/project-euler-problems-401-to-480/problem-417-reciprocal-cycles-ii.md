---
id: 5900f50d1000cf542c51001f
title: 'Problem 417: Reziproke Zyklen II'
challengeType: 1
forumTopicId: 302086
dashedName: problem-417-reciprocal-cycles-ii
---

# --description--

Ein Einheitsbruch enthält 1 im Zähler. Die Dezimaldarstellung der Einheitsbrüche mit den Nennern 2 bis 10 ist gegeben:

$$\begin{align}   & \frac{1}{2}  = 0.5 \\\\
  & \frac{1}{3}  = 0.(3) \\\\   & \frac{1}{4}  = 0.25 \\\\
  & \frac{1}{5}  = 0.2 \\\\   & \frac{1}{6}  = 0.1(6) \\\\
  & \frac{1}{7}  = 0.(142857) \\\\   & \frac{1}{8}  = 0.125 \\\\
  & \frac{1}{9}  = 0.(1) \\\\   & \frac{1}{10} = 0.1 \\\\
\end{align}$$

Dabei bedeutet $0,1(6)$ $0,166666\ldots$ und hat einen 1-stelligen wiederkehrenden Zyklus. Es ist zu erkennen, dass $\frac{1}{7}$ einen 6-stelligen wiederkehrenden Zyklus hat.

Einheitsbrüche, deren Nenner keine anderen Primfaktoren als 2 und/oder 5 hat, gelten nicht als wiederkehrender Zyklus. Wir definieren die Länge des wiederkehrenden Zyklus dieser Einheitsbrüche als 0.

Bezeichne $L(n)$ die Länge des wiederkehrenden Zyklus von $\frac{1}{n}$. Es ist gegeben, dass $\sum L(n)$ für $3 ≤ n ≤ 1\\.000\\.000$ gleich $55\\.535\.191\.115$ ist.

Finde $\sum L(n)$ für $3 ≤ n ≤ 100\\,000\\,000$.

# --hints--

`reciprocalCyclesTwo()` sollte `446572970925740` zurückgeben.

```js
assert.strictEqual(reciprocalCyclesTwo(), 446572970925740);
```

# --seed--

## --seed-contents--

```js
function reciprocalCyclesTwo() {

  return true;
}

reciprocalCyclesTwo();
```

# --solutions--

```js
// solution required
```
