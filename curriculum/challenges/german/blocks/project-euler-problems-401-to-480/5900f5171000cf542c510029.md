---
id: 5900f5171000cf542c510029
title: 'Problem 426: Box-Ball-System'
challengeType: 1
forumTopicId: 302096
dashedName: problem-426-box-ball-system
---

# --description--

Betrachte eine unendliche Reihe von Kästchen. Einige der Kästchen enthalten einen Ball. Beispielsweise kann eine Anfangskonfiguration mit 2 aufeinanderfolgenden besetzten Feldern, gefolgt von 2 leeren Feldern, 2 besetzten Feldern, 1 leerem Feld und 2 besetzten Feldern durch die Sequenz (2, 2, 2, 1, 2) bezeichnet werden, in der die Anzahl der aufeinanderfolgenden besetzten und leeren Felder abwechselnd erscheint.

Ein Spielzug besteht darin, jede Kugel genau einmal nach der folgenden Regel zu bewegen: Die linke Kugel, die noch nicht bewegt wurde, wird in das nächste leere Kästchen rechts von ihr gelegt.

Nach einem Zug wird die Reihenfolge (2, 2, 2, 1, 2) zu (2, 2, 1, 2, 3), wie unten zu sehen ist; beachte, dass wir die neue Reihenfolge mit dem ersten besetzten Feld beginnen.

<img alt="die Animation zeigt eine vollständige Drehung von (2, 2, 2, 1, 2) nach (2, 2, 1, 2, 3)" src="https://cdn.freecodecamp.org/curriculum/project-euler/box-ball-system-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Ein solches System wird als Box-Ball-System oder kurz BBS bezeichnet.

Es kann gezeigt werden, dass das System nach einer ausreichenden Anzahl von Umdrehungen in einen Zustand übergeht, in dem die Anzahl der aufeinanderfolgenden besetzten Felder unveränderlich ist. Im folgenden Beispiel entwickelt sich die fortlaufende Anzahl der besetzten Felder zu [1, 2, 3]; wir nennen dies den Endzustand.

<img alt="vier Umdrehungen von besetzten Feldern [2, 2, 2] zum Endzustand [1, 2, 3]" src="https://cdn.freecodecamp.org/curriculum/project-euler/box-ball-system-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Wir definieren die Sequenz $\\{t_i\\}$:

$$\begin{align}   & s_0 = 290\\,797 \\\\
  & s_{k + 1} = {s_k}^2\bmod 50\\,515\\,093 \\\\ & t_k = (s_k\bmod 64) + 1 \end{align}$$

Ausgehend von der Anfangskonfiguration $(t_0, t_1, \ldots, t_{10})$ wird der Endzustand [1, 3, 10, 24, 51, 75].

Ermittle ausgehend von der Anfangskonfiguration $(t_0, t_1, \ldots, t_{10\\,000\\,000})$ den Endzustand.

Gib als Antwort die Summe der Quadrate der Elemente des Endzustandes an. Wenn zum Beispiel der Endzustand [1, 2, 3] ist, dann ist $14 (= 1^2 + 2^2 + 3^2)$ deine Antwort.

# --hints--

`boxBallSystem()` sollte `31591886008` zurückgeben.

```js
assert.strictEqual(boxBallSystem(), 31591886008);
```

# --seed--

## --seed-contents--

```js
function boxBallSystem() {

  return true;
}

boxBallSystem();
```

# --solutions--

```js
// solution required
```
