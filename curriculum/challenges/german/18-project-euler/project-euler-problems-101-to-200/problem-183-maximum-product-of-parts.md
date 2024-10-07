---
id: 5900f4231000cf542c50ff36
title: 'Problem 183: Maximales Produkt von Teilen'
challengeType: 1
forumTopicId: 301819
dashedName: problem-183-maximum-product-of-parts
---

# --description--

Lasse $N$ eine positive Integer sein und lasse $N$ in $k$ gleiche Teile zerlegen, $r = \frac{N}{k}$, sodass $N = r + r + \cdots + r$.

Lasse $P$ das Produkt dieser Teile sein, $P = r × r × \cdots × r = r^k$.

Wenn zum Beispiel 11 in fünf gleiche Teile aufgeteilt wird, 11 = 2.2 + 2.2 + 2.2 + 2.2 + 2.2, dann ist $P = {2.2}^5 = 51,53632$.

Lass $M(N) = P_{max}$ für einen gegebenen Wert von $N$.

Es stellt sich heraus, dass das Maximum für $N = 11$ gefunden wird, indem man elf in vier gleiche Teile aufteilt, was zu $P_{max} = {(\frac{11}{4})}^4$ führt; das heißt, $M(11) = \frac{14641}{256} = 57.19140625$, was eine abschließende Dezimalzahl ist.

Für $N = 8$ wird das Maximum jedoch durch Aufteilung in drei gleiche Teile erreicht, also $M(8) = \frac{512}{27}$, was eine nicht endende Dezimalzahl ist.

Lasse $D(N) = N$ sein, wenn $M(N)$ eine nicht-terminierende Dezimalzahl ist und $D(N) = -N$ sein, wenn $M(N)$ eine terminierende Dezimalzahl ist.

Zum Beispiel ist $\sum D(N)$ für $5 ≤ N ≤ 100$ gleich 2438.

Finde $\sum D(N)$ für $5 ≤ N ≤ 10000$.

# --hints--

`maximumProductOfParts()` sollte `48861552` zurückgeben.

```js
assert.strictEqual(maximumProductOfParts(), 48861552);
```

# --seed--

## --seed-contents--

```js
function maximumProductOfParts() {

  return true;
}

maximumProductOfParts();
```

# --solutions--

```js
// solution required
```
