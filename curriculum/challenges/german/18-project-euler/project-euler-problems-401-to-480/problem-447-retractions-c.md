---
id: 5900f52c1000cf542c51003e
title: 'Problem 447: Rücknahmen C'
challengeType: 1
forumTopicId: 302119
dashedName: problem-447-retractions-c
---

# --description--

Für jede Integer $n > 1$ ist die Familie der Funktionen $f_{n, a, b}$ definiert durch:

$f_{n, a, b}(x) ≡ ax + b\bmod n$ für $a, b, x$ Integer und $0 \lt a \lt n$, $0 \le b \lt n$, $0 \le x \lt n$.

Wir nennen $f_{n, a, b}$ eine Retraktion, wenn $f_{n, a, b}(f_{n, a, b}(x)) \equiv f_{n, a, b}(x)\bmod n$ für jedes $0 \le x \lt n$.

Lasse $R(n)$ die Anzahl der Retraktionen für $n$ sein.

$F(N) = \displaystyle\sum_{n = 2}^N R(n)$.

$F({10}^7) ≡ 638\\,042\\,271\bmod 1\\,000\\,000\\,007$.

Finde $F({10}^{14})$. Gib deine Antwort modulo $1\,000\,000\,000\,007$.

# --hints--

`retractionsC()` sollte `530553372` zurückgeben.

```js
assert.strictEqual(retractionsC(), 530553372);
```

# --seed--

## --seed-contents--

```js
function retractionsC() {

  return true;
}

retractionsC();
```

# --solutions--

```js
// solution required
```
