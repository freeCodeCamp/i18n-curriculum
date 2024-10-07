---
id: 5900f4d31000cf542c50ffe6
title: 'Problem 359: Hilberts neues Hotel'
challengeType: 1
forumTopicId: 302019
dashedName: problem-359-hilberts-new-hotel
---

# --description--

Eine unendliche Anzahl von Leuten (mit den Nummern 1, 2, 3 usw.) stehen Schlange, um ein Zimmer in Hilberts neuestem unendlichen Hotel zu bekommen. Das Hotel besteht aus einer unendlichen Anzahl von Stockwerken (nummeriert mit 1, 2, 3 usw.), und jedes Stockwerk enthält eine unendliche Anzahl von Zimmern (nummeriert mit 1, 2, 3 usw.).

Das Hotel ist zunächst leer. Hilbert stellt eine Regel auf, wie die $n^{\text{th}}$ Person ein Zimmer zugewiesen bekommt: Person $n$ bekommt das erste freie Zimmer in der niedrigsten Etage, die eine der folgenden Bedingungen erfüllt:

- die Etage ist leer
- die Etage ist nicht leer, und wenn die letzte Person, die ein Zimmer in dieser Etage belegt hat, die Person $m$ ist, dann ist $m + n$ ein perfektes Quadrat

Person 1 erhält das Zimmer 1 im Stockwerk 1, da Stockwerk 1 leer ist.

Person 2 erhält nicht das Zimmer 2 im Stockwerk 1, da 1 + 2 = 3 keine perfekte Quadratzahl ist.

Person 2 erhält stattdessen Zimmer 1 im Stockwerk 2, da Stockwerk 2 leer ist.

Person 3 bekommt Zimmer 2 in Stockwerk 1, da 1 + 3 = 4 ein perfektes Quadrat ist.

Schließlich bekommt jede Person in der Schlange ein Zimmer im Hotel.

Definieren Sie $P(f, r)$ als $n$, wenn die Person $n$ den Raum $r$ im Stockwerk $f$ belegt, und als 0, wenn keine Person den Raum belegt. Hier sind einige Beispiele:

$$\begin{align}   & P(1, 1) = 1 \\\\
  & P(1, 2) = 3 \\\\   & P(2, 1) = 2 \\\\
  & P(10, 20) = 440 \\\\   & P(25, 75) = 4863 \\\\
  & P(99, 100) = 19454 \end{align}$$

Finde die Summe aller $P(f, r)$ für alle positiven $f$ und $r$, so dass $f × r = 71\\,328\\,803\\,586\\,048$ ist und gib die letzten 8 Ziffern als Antwort an.

# --hints--

`hilbertsNewHotel()` sollte `40632119` zurückgeben.

```js
assert.strictEqual(hilbertsNewHotel(), 40632119);
```

# --seed--

## --seed-contents--

```js
function hilbertsNewHotel() {

  return true;
}

hilbertsNewHotel();
```

# --solutions--

```js
// solution required
```
