---
id: 5900f4c31000cf542c50ffd5
title: 'Problem 342: Das Phi eines Quadrats ist ein Würfel'
challengeType: 1
forumTopicId: 302001
dashedName: problem-342-the-totient-of-a-square-is-a-cube
---

# --description--

Nehmen wir die Zahl 50.

${50}^2 = 2500 = 2^2 × 5^4$, also $φ(2500) = 2 × 4 × 5^3 = 8 × 5^3 = 2^3 × 5^3$. $φ$ bezeichnet Eulersche Totalitätsfunktion.

2500 ist also ein Quadrat und $φ(2500)$ ist ein Würfel.

Finde die Summe aller Zahlen $n$, $1 &lt; n &lt; {10}^{10}$, so dass $φ(n^2)$ ein Würfel ist.


# --hints--

`totientOfSquare()` sollte `5943040885644` zurückgeben.

```js
assert.strictEqual(totientOfSquare(), 5943040885644);
```

# --seed--

## --seed-contents--

```js
function totientOfSquare() {

  return true;
}

totientOfSquare();
```

# --solutions--

```js
// solution required
```
