---
id: 5900f4f81000cf542c51000b
title: 'Problem 396: Schwache Goodstein-Folge'
challengeType: 1
forumTopicId: 302061
dashedName: problem-396-weak-goodstein-sequence
---

# --description--

Für jeden positiven Integer $n$ ist die $n$-te schwache Goodstein-Folge $\\{g1, g2, g3, \ldots\\}$ definiert als:

- $g_1 = n$
- für $k > 1$ erhält man $g_k$, indem man $g_{k - 1}$ zur Basis $k$ schreibt, es als Zahl zur Basis $k + 1$ interpretiert und 1 subtrahiert.

Die Sequenz endet wenn $g_k$ zu 0 wird.

Zum Beispiel ist die $6$-te schwache Goodstein-Folge $\\{6, 11, 17, 25, \ldots\\}$:

- $g_1 = 6$.
- $g_2 = 11$, da $6 = 110_2$, $110_3 = 12$ und $12 - 1 = 11$.
- $g_3 = 17$, da $11 = 102_3$, $102_4 = 18$ und $18 - 1 = 17$.
- $g_4 = 25$, da $17 = 101_4$, $101_5 = 26$ und $26 - 1 = 25$.

und so weiter.

Es kann nachgewiesen werden, dass jede schwache Goodstein-Folge endet.

Lass $G(n)$ die Anzahl der Nicht-Null-Elemente in der $n$-ten schwachen Goodstein-Folge sein.

Es kann nachgewiesen werden, dass $G(2) = 3$, $G(4) = 21$ und $G(6) = 381$.

Es kann auch nachgewiesen werden, dass $\sum G(n) = 2517$ für $1 ≤ n &lt; 8$.

Finde die letzten 9 Ziffern von $\sum G(n)$ für $1 ≤ n &lt; 16$.

# --hints--

`weakGoodsteinSequence()` sollte `173214653` zurückgeben.

```js
assert.strictEqual(weakGoodsteinSequence(), 173214653);
```

# --seed--

## --seed-contents--

```js
function weakGoodsteinSequence() {

  return true;
}

weakGoodsteinSequence();
```

# --solutions--

```js
// solution required
```
