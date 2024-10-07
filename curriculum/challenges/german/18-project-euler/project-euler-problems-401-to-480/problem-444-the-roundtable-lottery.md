---
id: 5900f52a1000cf542c51003b
title: 'Problem 444: Die Rundtischlotterie'
challengeType: 1
forumTopicId: 302116
dashedName: problem-444-the-roundtable-lottery
---

# --description--

Eine Gruppe von $p$ Personen beschließt, sich an einen runden Tisch zu setzen und ein Lotterielos-Tauschspiel zu spielen. Jede Person beginnt mit einem zufällig zugewiesenen, nicht angekreuzten Lotterielos. Jedes Los, wenn es freigerubbelt wird, bringt einen ganzen Pfundpreis zum Vorschein, der von 1 £ bis £$p$ reicht, wobei kein Los dem anderen gleicht. Ziel des Spiels ist es, dass jeder Spieler beim Verlassen des Spielfelds den maximalen Gewinn auf seinem Spielschein erzielt.

Eine beliebige Person wird als erster Spieler ausgewählt. Auf dem Tisch hat jeder Spieler nur eine von zwei Möglichkeiten:

1.  Der Spieler kann seinen Schein freirubbeln und den Wert des Scheins für alle am Tisch sichtbar machen.
2.  Der Spieler kann sein nicht freigerubbeltes Ticket gegen das freigerubbelte Ticket eines anderen Spielers eintauschen und das Spiel mit diesem Ticket verlassen. Der vorherige Spieler kratzt dann seinen neu erworbenen Schein und zeigt allen am Tisch seinen Wert.

Das Spiel endet, sobald alle Lose freigerubbelt wurden. Alle Spieler, die noch am Tisch sitzen, müssen mit ihren aktuellen Tickets gehen.

Nehmen wir an, dass jeder Spieler die optimale Strategie zur Maximierung des Erwartungswerts seines Losgewinns anwendet.

Lasse $E(p)$ die erwartete Anzahl von Spielern sein, die am Tisch verbleiben, wenn das Spiel in einem Spiel mit $p$ Spielern endet (z.B. $E(111) = 5.2912$, wenn man auf 5 signifikante Stellen rundet).

Sei $S_1(N) = \displaystyle\sum_{p = 1}^N E(p)$.

Sei $S_k(N) = \displaystyle\sum_{p = 1}^N S_{k - 1}(p)$ for $k > 1$.

Finde $S_{20}({10}^{14})$ und schreibe die Antwort als Zeichenfolge in wissenschaftlicher Notation, gerundet auf 10 signifikante Stellen. Verwende ein kleines `e`, um Mantisse und Exponent zu trennen. Zum Beispiel wäre die Antwort für $S_3(100)$ `5.983679014e5`.

# --hints--

`roundtableLottery()` sollte einen String zurückgeben.

```js
assert(typeof roundtableLottery() === 'string');
```

`roundtableLottery()` sollte den String `1.200856722e263` zurückgeben.

```js
assert.strictEqual(roundtableLottery(), '1.200856722e263');
```

# --seed--

## --seed-contents--

```js
function roundtableLottery() {

  return true;
}

roundtableLottery();
```

# --solutions--

```js
// solution required
```
