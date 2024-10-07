---
id: 5900f4d61000cf542c50ffe9
title: 'Problem 362: Quadratfreie Faktoren'
challengeType: 1
forumTopicId: 302023
dashedName: problem-362-squarefree-factors
---

# --description--

Nehmen wir die Zahl 54.

54 kann auf 7 verschiedene Arten in einen oder mehrere Faktoren größer als 1 zerlegt werden:

$$54, 2 × 27, 3 × 18, 6 × 9, 3 × 3 × 6, 2 × 3 × 9 \text{ and } 2 × 3 × 3 × 3$$

Wenn wir voraussetzen, dass die Faktoren alle quadratfrei sind, bleiben nur zwei Möglichkeiten: $3 × 3 × 6$ und $2 × 3 × 3 × 3$.

Nennen wir $Fsf(n)$ die Anzahl der Möglichkeiten, wie $n$ in einen oder mehrere quadratfreie Faktoren größer als 1 zerlegt werden kann, also $Fsf(54) = 2$.

Sei $S(n)$ $\sum Fsf(k)$ für $k = 2$ bis $n$.

$S(100) = 193$.

Finde $S(10\\,000\\,000\\,000)$.

# --hints--

`squarefreeFactors()` sollte `457895958010` zurückgeben.

```js
assert.strictEqual(squarefreeFactors(), 457895958010);
```

# --seed--

## --seed-contents--

```js
function squarefreeFactors() {

  return true;
}

squarefreeFactors();
```

# --solutions--

```js
// solution required
```
