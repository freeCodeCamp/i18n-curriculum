---
id: 5900f5191000cf542c51002b
title: 'Problem 428: Halskette aus Kreisen'
challengeType: 1
forumTopicId: 302098
dashedName: problem-428-necklace-of-circles
---

# --description--

$a$, $b$ und $c$ seien positive Zahlen.

$W$, $X$, $Y$, $Z$ seien vier kollineare Punkte mit $|WX| = a$, $|XY| = b$, $|YZ| = c$ und $|WZ| = a + b + c$.

$C_{\text{in}}$ sei der Kreis mit dem Durchmesser $XY$.

$C_{\text{out}}$ sei der Kreis mit dem Durchmesser $WZ$.

Das Triplett ($a$, $b$, $c$) heißt ein *Halsbandtriplett*, wenn man $k ≥ 3$ verschiedene Kreise $C_1, C_2, \ldots, C_k$ so anordnen kann, dass:

- $C_i$ hat keine gemeinsamen inneren Punkte mit einem beliebigen $C_j$ für $1 ≤ i$, $j ≤ k$ und $i ≠ j$,
- $C_i$ ist sowohl tangent zu $C_{\text{in}}$ als auch zu $C_{\text{out}}$ für $1 ≤ i ≤ k$,
- $C_i$ ist tangent zu $C_{i + 1}$ für $1 ≤ i &lt; k$, und
- $C_k$ ist tangent zu $C_1$.

So sind zum Beispiel (5, 5, 5) und (4, 3, 21) Ketten-Tripletts, während (2, 2, 5) nachweislich keine sind.

<img alt="eine visuelle Darstellung eines Ketten-Tripletts" src="https://cdn.freecodecamp.org/curriculum/project-euler/necklace-of-circles.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

$T(n)$ sei die Anzahl des Ketten-Tripletts $(a, b, c)$, bei denen $a$, $b$ und $c$ positive Integer sind und $b ≤ n$. Zum Beispiel ist $T(1) = 9$, $T(20) = 732$ und $T(3\\.000) = 438\\.106$.

Finde $T(1\\,000\\,000\\,000)$.

# --hints--

`necklace(1000000000)` sollte `747215561862` zurückgeben.

```js
assert.strictEqual(necklace(1000000000), 747215561862);
```

# --seed--

## --seed-contents--

```js
function necklace(n) {

  return true;
}

necklace(1000000000)
```

# --solutions--

```js
// solution required
```
