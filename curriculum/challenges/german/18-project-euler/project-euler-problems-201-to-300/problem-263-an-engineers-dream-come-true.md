---
id: 5900f4741000cf542c50ff86
title: 'Problem 263: Der Traum eines jeden Ingenieurs wird wahr'
challengeType: 1
forumTopicId: 301912
dashedName: problem-263-an-engineers-dream-come-true
---

# --description--

Betrachten wir die Zahl 6. Die Teiler von 6 sind: 1,2,3 und 6.

Jede Zahl von 1 bis einschließlich 6 kann als Summe von verschiedenen Teilern von 6 geschrieben werden:

$1 = 1$, $2 = 2$, $3 = 1 + 2$, $4 = 1 + 3$, $5 = 2 + 3$, $6 = 6$.

Eine Zahl $n$ heißt eine praktische Zahl, wenn sich jede Zahl von 1 bis einschließlich $n$ als Summe von verschiedenen Teilern von $n$ ausdrücken lässt.

Ein Paar aufeinanderfolgender Primzahlen mit einer Differenz von sechs wird als sexy Paar bezeichnet (da "sex" das lateinische Wort für "sechs" ist). Das erste sexy Paar ist (23, 29).

Gelegentlich finden wir ein Dreierpaar, d. h. drei aufeinanderfolgende sexy Primzahlenpaare, bei denen das zweite Mitglied jedes Paares das erste Mitglied des nächsten Paares ist.

Wir nennen eine Zahl $n$ so, dass:

- ($n - 9$, $n - 3$), ($n - 3$, $n + 3$), ($n + 3$, $n + 9$) bilden ein Dreierpaar, und
- die Zahlen $n - 8$, $n - 4$, $n$, $n + 4$ und $n + 8$ sind alle praktisch,

ein Paradies für Ingenieure.

Finde die Summe der ersten vier Ingenieurparadiese.

# --hints--

`engineersDreamComeTrue()` sollte `2039506520` zurückgeben.

```js
assert.strictEqual(engineersDreamComeTrue(), 2039506520);
```

# --seed--

## --seed-contents--

```js
function engineersDreamComeTrue() {

  return true;
}

engineersDreamComeTrue();
```

# --solutions--

```js
// solution required
```
