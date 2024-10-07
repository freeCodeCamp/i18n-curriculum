---
id: 5900f5141000cf542c510027
title: 'Problem 423: Aufeinanderfolgende Würfelwürfe'
challengeType: 1
forumTopicId: 302093
dashedName: problem-423-consecutive-die-throws
---

# --description--

Sei $n$ ein positiver Integer.

Ein 6-seitiger Würfel wird $n$-mal geworfen. Sei $c$ die Anzahl der Paare von aufeinanderfolgenden Würfen, die den gleichen Wert ergeben.

Wenn zum Beispiel $n = 7$ und die Werte der Würfelwürfe (1, 1, 5, 6, 6, 6, 3) sind, dann ergeben die folgenden Paare von aufeinanderfolgenden Würfen den gleichen Wert:

$$\begin{align}   & (\underline{1}, \underline{1}, 5, 6, 6, 6, 3) \\\\
  & (1, 1, 5, \underline{6}, \underline{6}, 6, 3) \\\\ & (1, 1, 5, 6, \underline{6}, \underline{6}, 3) \end{align}$$

Daher ist $c = 3$ für (1, 1, 5, 6, 6, 6, 3).

Definiere $C(n)$ als die Anzahl der Ergebnisse, die sich ergibt, wenn man einen 6-seitigen Würfel $n$-Mal wirft, so dass $c$ $π(n)$ nicht überschreitet.<sup>1</sup>

Zum Beispiel, $C(3) = 216$, $C(4) = 1290$, $C(11) = 361\\,912\\,500$ und $C(24) = 4\\,727\\,547\\,363\\,281\\,250\\,000$.

Definiere $S(L)$ als $\sum C(n)$ für $1 ≤ n ≤ L$.

Zum Beispiel, $S(50)\bmod 1\\,000\\,000\\,007 = 832\\,833\\,871$.

Finde $S(50\\,000\\,000)\bmod 1\\,000\\,000\\,007$.

<sup>1</sup> $π$ bezeichnet die Primzahl-Zählfunktion, d. h. $π(n)$ ist die Anzahl der Primzahlen $≤ n$.

# --hints--

`consecutiveDieThrows()` sollte `653972374` zurückgeben.

```js
assert.strictEqual(consecutiveDieThrows(), 653972374);
```

# --seed--

## --seed-contents--

```js
function consecutiveDieThrows() {

  return true;
}

consecutiveDieThrows();
```

# --solutions--

```js
// solution required
```
