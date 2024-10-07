---
id: 5900f5151000cf542c510028
title: 'Problem 425: Primäre Verbindung'
challengeType: 1
forumTopicId: 302095
dashedName: problem-425-prime-connection
---

# --description--

Zwei positive Zahlen $A$ und $B$ gelten als zusammenhängend (bezeichnet mit "$A ↔ B$"), wenn eine dieser Bedingungen erfüllt ist:

1. $A$ und $B$ haben die gleiche Länge und unterscheiden sich in genau einer Ziffer; zum Beispiel $123 ↔ 173$.
2. Die Addition einer Ziffer links von $A$ (oder $B$) ergibt $B$ (oder $A$); zum Beispiel $23 ↔ 223$ und $123 ↔ 23$.

Wir nennen eine Primzahl $P$ ein 2er-Relativ, wenn es eine Kette von zusammenhängenden Primzahlen zwischen 2 und $P$ gibt und keine Primzahl in der Kette größer als $P$ ist.

Zum Beispiel ist 127 ein 2er-Verhältnis. Eine der möglichen Ketten ist unten abgebildet:

$$2 ↔ 3 ↔ 13 ↔ 113 ↔ 103 ↔ 107 ↔ 127$$

11 und 103 sind jedoch nicht mit 2 verwandt.

Lasse $F(N)$ die Summe der Primzahlen $≤ N$ sein, die nicht 2er-verwandt sind. Wir können überprüfen, dass $F({10}^3) = 431$ und $F({10}^4) = 78\\,728$.

Finde $F({10}^7)$.

# --hints--

`primeConnection()` sollte `46479497324` zurückgeben.

```js
assert.strictEqual(primeConnection(), 46479497324);
```

# --seed--

## --seed-contents--

```js
function primeConnection() {

  return true;
}

primeConnection();
```

# --solutions--

```js
// solution required
```
