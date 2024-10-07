---
id: 5900f4e51000cf542c50fff6
title: 'Problem 374: Maximales ganzzahliges Teilungsprodukt'
challengeType: 1
forumTopicId: 302036
dashedName: problem-374-maximum-integer-partition-product
---

# --description--

Eine ganzzahlige Teilung einer Zahl $n$ ist eine Möglichkeit $n$ als eine Summe von positiven Integer zu schreiben.

Partitionen, die sich nur in der Reihenfolge ihrer Summanden unterscheiden, gelten als gleich. Eine Teilung von $n$ in verschiedene Teile ist eine Teilung von $n$, in der jeder Teil höchstens einmal vorkommt.

Die Unterteilungen von 5 in verschiedene Teile sind:

5, 4 + 13 und + 2.

Lasse $f(n)$ das maximale Produkt der Teile einer solchen Partition von $n$ in verschiedene Teile sein und lasse $m(n)$ die Anzahl der Elemente einer solchen Partition von $n$ mit diesem Produkt sein.

Also $f(5) = 6$ und $m(5) = 2$.

Für $n = 10$ ist die Partition mit dem größten Produkt $10 = 2 + 3 + 5$, was $f(10) = 30$ und $m(10) = 3$ ergibt. Und ihr Produkt, $f(10) \times m(10) = 30 \times 3 = 90$

Es lässt sich nachweisen, dass $\sum f(n) \times m(n)$ für $1 ≤ n ≤ 100 = 1\\,683\\,550\\,844\\,462$.

Finde $\sum f(n) \times m(n)$ für $1 ≤ n ≤ {10}^{14}$. Gib deiner Antwort modulo $982\\,451\\,653$ die 50 millionste Primzahl.

# --hints--

`maximumIntegerPartitionProduct()` sollte `334420941` zurückgeben.

```js
assert.strictEqual(maximumIntegerPartitionProduct(), 334420941);
```

# --seed--

## --seed-contents--

```js
function maximumIntegerPartitionProduct() {

  return true;
}

maximumIntegerPartitionProduct();
```

# --solutions--

```js
// solution required
```
