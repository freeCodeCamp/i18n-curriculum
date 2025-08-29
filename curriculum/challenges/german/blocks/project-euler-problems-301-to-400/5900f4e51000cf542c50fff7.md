---
id: 5900f4e51000cf542c50fff7
title: 'Problem 376: Intransitives Würfel-Set'
challengeType: 1
forumTopicId: 302038
dashedName: problem-376-nontransitive-sets-of-dice
---

# --description--

Betrachten Sie den folgenden Satz von Würfeln mit nicht standardisierten Kernen:

$$\begin{array}{}   \text{Die A: } & 1 & 4 & 4 & 4 & 4 & 4 \\\\
  \text{Die B: } & 2 & 2 & 2 & 5 & 5 & 5 \\\\   \text{Die C: } & 3 & 3 & 3 & 3 & 3 & 6 \\\\
\end{array}$$

Ein Spiel wird von zwei Spielern gespielt, die einen Würfel nehmen und ihn werfen. Der Spieler, der den höchsten Wert wirft, gewinnt.

Wenn der erste Spieler den Würfel $A$ wählt und der zweite Spieler $B$, erhalten wir

$P(\text{second player wins}) = \frac{7}{12} > \frac{1}{2}$

Wenn der erste Spieler den Würfel $B$ wählt und der zweite Spieler $C$, erhalten wir

$P(\text{second player wins}) = \frac{7}{12} > \frac{1}{2}$

Wenn der erste Spieler den Würfel $C$ wählt und der zweite Spieler $A$, erhalten wir

$P(\text{second player wins}) = \frac{25}{36} > \frac{1}{2}$

Was auch immer der erste Spieler für einen Würfel auswählt, der zweite Spieler kann einen anderen Würfel wählen und eine Gewinnchance von mehr als 50 % haben. Ein Würfelpaar, das diese Eigenschaft hat, wird als intransitive Würfel bezeichnet.

Wir wollen untersuchen, wie viele Reihen von intransitiven Würfeln es gibt. Wir gehen von den folgenden Bedingungen aus:

- Es gibt drei sechsseitige Würfel, wobei jede Seite zwischen 1 und einschließlich $N$ Punkte hat.
- Würfel mit der gleichen Anzahl von Punkten sind gleichwertig, unabhängig davon, auf welcher Seite des Würfels sich die Punkte befinden.
- Der gleiche Punkte-Wert kann bei mehreren Würfeln erscheinen; wenn beide Spieler denselben Wert würfeln, gewinnt keiner der Spieler.
- Die Würfel-Sets $\\{A, B, C\\}$, $\\{B, C, A\\}$ und $\\{C, A, B\\}$ sind die gleichen Sets.

Für $N = 7$ gibt es 9780 Sätze.

Wie viele gibt es für $N = 30$?

# --hints--

`nontransitiveSetsOfDice()` sollte `973059630185670` enthalten.

```js
assert.strictEqual(nontransitiveSetsOfDice(), 973059630185670);
```

# --seed--

## --seed-contents--

```js
function nontransitiveSetsOfDice() {

  return true;
}

nontransitiveSetsOfDice();
```

# --solutions--

```js
// solution required
```
