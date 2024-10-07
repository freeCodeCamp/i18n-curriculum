---
id: 5900f52a1000cf542c51003c
title: 'Problem 445: Rücknahmen von A'
challengeType: 1
forumTopicId: 302117
dashedName: problem-445-retractions-a
---

# --description--

Für jede Integer $n > 1$ ist die Familie der Funktionen $f_{n, a, b}$ definiert durch:

$f_{n, a, b}(x) ≡ ax + b\bmod n$ für $a, b, x$ Integer und $0 \lt a \lt n$, $0 \le b \lt n$, $0 \le x \lt n$.

Wir nennen $f_{n, a, b}$ eine Retraktion, wenn $f_{n, a, b}(f_{n, a, b}(x)) \equiv f_{n, a, b}(x)\bmod n$ für jedes $0 \le x \lt n$.

Lasse $R(n)$ die Anzahl der Retraktionen für $n$ sein.

Dir wird gegeben, dass

$$\sum_{k = 1}^{99\\,999} R(\displaystyle\binom{100\\,000}{k}) \equiv 628\\,701\\,600\bmod 1\\,000\\,000\\,007$$

Finde $$\sum_{k = 1}^{9\\,999\\,999} R(\displaystyle\binom{10\\,000\\,000}{k})$$ Gib deinen Antwort-Modulo an $1\\,000\\,000\\,007$.

# --hints--

`retractionsA()` sollte `659104042` zurückgeben.

```js
assert.strictEqual(retractionsA(), 659104042);
```

# --seed--

## --seed-contents--

```js
function retractionsA() {

  return true;
}

retractionsA();
```

# --solutions--

```js
// solution required
```
