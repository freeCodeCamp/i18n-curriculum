---
id: 5900f52c1000cf542c51003d
title: 'Problem 446: Rücknahmen B'
challengeType: 1
forumTopicId: 302118
dashedName: problem-446-retractions-b
---

# --description--

Für jede Integer $n > 1$ ist die Familie der Funktionen $f_{n, a, b}$ definiert durch:

$f_{n, a, b}(x) ≡ ax + b\bmod n$ für $a, b, x$ Integer und $0 \lt a \lt n$, $0 \le b \lt n$, $0 \le x \lt n$.

Wir nennen $f_{n, a, b}$ eine Retraktion, wenn $f_{n, a, b}(f_{n, a, b}(x)) \equiv f_{n, a, b}(x)\bmod n$ für jedes $0 \le x \lt n$.

Lasse $R(n)$ die Anzahl der Retraktionen für $n$ sein.

$F(N) = \displaystyle\sum_{n = 1}^N R(n^4 + 4)$.

$F(1024) = 77\\,532\\,377\\,300\\,600$.

Finde $F({10}^7)$. Gib deine Antwort modulo $1\,000\,000\,000\,007$.

# --hints--

`retractionsB()` sollte `907803852` zurückgeben.

```js
assert.strictEqual(retractionsB(), 907803852);
```

# --seed--

## --seed-contents--

```js
function retractionsB() {

  return true;
}

retractionsB();
```

# --solutions--

```js
// solution required
```
