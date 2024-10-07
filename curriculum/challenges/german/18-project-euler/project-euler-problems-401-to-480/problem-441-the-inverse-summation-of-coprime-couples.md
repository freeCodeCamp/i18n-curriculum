---
id: 5900f5261000cf542c510038
title: 'Problem 441: Die umgekehrte Summierung von koprimalen Paaren'
challengeType: 1
forumTopicId: 302113
dashedName: problem-441-the-inverse-summation-of-coprime-couples
---

# --description--

Für einen Integer $M$ definieren wir $R(M)$ als die Summe von $\frac{1}{p-q}$ für alle ganzzahligen Paare $p$ und $q$, die alle diese Bedingungen erfüllen:

- $1 ≤ p &lt; q ≤ M$
- $p + q ≥ M$
- $p$ und $q$ sind koprimiert.

Wir definieren $S(N)$ auch als die Summe von $R(i)$ für $2 ≤ i ≤ N$.

Wir können überprüfen, dass $S(2) = R(2) = \frac{1}{2}$, $S(10) ≈ 6,9147$ und $S(100) ≈ 58,2962$.

Finde $S({10}^7)$. Gebe deine Antwort auf vier Dezimalstellen gerundet an.

# --hints--

`inverseSummationCoprimeCouples()` sollte `5000088.8395` zurückgeben.

```js
assert.strictEqual(inverseSummationCoprimeCouples(), 5000088.8395);
```

# --seed--

## --seed-contents--

```js
function inverseSummationCoprimeCouples() {

  return true;
}

inverseSummationCoprimeCouples();
```

# --solutions--

```js
// solution required
```
