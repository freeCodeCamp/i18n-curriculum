---
id: 5900f4c41000cf542c50ffd6
title: 'Problem 343: Bruchteilige Sequenzen'
challengeType: 1
forumTopicId: 302002
dashedName: problem-343-fractional-sequences
---

# --description--

Für jede positive ganze Zahl $k$ ist eine endliche Folge $a_i$ von Brüchen $\frac{x_i}{y_i}$ definiert durch:

- $a_1 = \displaystyle\frac{1}{k}$ und
- $a_i = \displaystyle\frac{(x_{i - 1} + 1)}{(y_{i - 1} - 1)}$ reduziert auf kleinste Terme für $i > 1$.

Wenn $a_i$ einen Integer $n$ erreicht, wird die Sequenz beendet. (Das heißt, wenn $y_i = 1$.)

Definiere $f(k) = n$.

Zum Beispiel für $k = 20 $:

$$\frac{1}{20} → \frac{2}{19} → \frac{3}{18} = \frac{1}{6} → \frac{2}{5} → \frac{3}{4} → \frac{4}{3} → \frac{5}{2} → \frac{6}{1} = 6$$

Also $f(20) = 6$.

Auch $f(1) = 1$, $f(2) = 2$, $f(3) = 1$ und $\sum f(k^3) = 118\\,937$ für $1 ≤ k ≤ 100$.

Finde $\sum f(k^3)$ für $1 ≤ k ≤ 2 × {10}^6$.

# --hints--

`fractionalSequences()` sollte `269533451410884200` zurückgeben.

```js
assert.strictEqual(fractionalSequences(), 269533451410884200);
```

# --seed--

## --seed-contents--

```js
function fractionalSequences() {

  return true;
}

fractionalSequences();
```

# --solutions--

```js
// solution required
```
