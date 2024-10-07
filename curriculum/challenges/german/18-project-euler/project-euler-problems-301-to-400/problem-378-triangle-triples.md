---
id: 5900f4e61000cf542c50fff9
title: 'Problem 378: Dreiecks-Tripel'
challengeType: 1
forumTopicId: 302040
dashedName: problem-378-triangle-triples
---

# --description--

Sei $T(n)$ die $n^{\text{th}}$ Dreieckszahl, also $T(n) = \frac{n(n + 1)}{2}$.

Sei $dT(n)$ die Anzahl der Teiler von $T(n)$. z.B.: $T(7) = 28$ und $dT(7) = 6$.

Sei $Tr(n)$ die Anzahl der Tripel ($i$, $j$, $k$), sodass $1 ≤ i &lt; j &lt; k ≤ n$ und $dT(i) > dT(j) > dT(k)$. $Tr(20) = 14$, $Tr(100) = 5\\,772$ und $Tr(1000) = 11\\,174\\,776$.

Finde $Tr(60\\,000\\,000)$. Gib die letzten 18 Ziffern deiner Antwort an.

# --hints--

`triangleTriples()` sollte `147534623725724700` zurückgeben.

```js
assert.strictEqual(triangleTriples(), 147534623725724700);
```

# --seed--

## --seed-contents--

```js
function triangleTriples() {

  return true;
}

triangleTriples();
```

# --solutions--

```js
// solution required
```
