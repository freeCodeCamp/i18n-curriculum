---
id: 5900f4e41000cf542c50fff5
title: 'Problem 375: Minimum von Teilsequenzen'
challengeType: 1
forumTopicId: 302037
dashedName: problem-375-minimum-of-subsequences
---

# --description--

Sei $S_n$ eine ganzzahlige Folge, die mit dem folgenden Pseudo-Zufallszahlengenerator erzeugt wird:

$$\begin{align}         S_0 & = 290\\,797 \\\\
  S_{n + 1} & = {S_n}^2\bmod 50\\,515\\,093 \end{align}$$

Lasse $A(i, j)$ das Minimum der Zahlen $S_i, S_{i + 1}, \ldots, S_j$ für $i ≤ j$ sein. Sei $M(N) = \sum A(i, j)$ für $1 ≤ i ≤ j ≤ N$.

Wir können nachweisen, dass $M(10) = 432\,256\,955$ und $M(10\,000) = 3\,264\,567\,774\,119$.

Finde $M(2\\,000\\,000\\,000)$.

# --hints--

`minimumOfSubsequences()` sollte `7435327983715286000` zurückgeben.

```js
assert.strictEqual(minimumOfSubsequences(), 7435327983715286000);
```

# --seed--

## --seed-contents--

```js
function minimumOfSubsequences() {

  return true;
}

minimumOfSubsequences();
```

# --solutions--

```js
// solution required
```
