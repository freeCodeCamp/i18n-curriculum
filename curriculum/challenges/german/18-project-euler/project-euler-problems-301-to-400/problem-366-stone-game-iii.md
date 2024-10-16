---
id: 5900f4da1000cf542c50ffed
title: 'Problem 366: Steinspiel III'
challengeType: 1
forumTopicId: 302027
dashedName: problem-366-stone-game-iii
---

# --description--

Zwei Spieler, Anton und Bernhard, spielen das folgende Spiel.

Es gibt einen Stapel von $n$ Steinen.

Der erste Spieler darf eine beliebige positive Anzahl von Steinen entfernen, aber nicht den ganzen Stapel.

Danach darf jeder Spieler höchstens doppelt so viele Steine entfernen, wie sein Gegner im vorangegangenen Zug genommen hat.

Der Spieler, der den letzten Stein entfernt, gewinnt.

z.B. $n = 5$

Wenn der erste Spieler mehr als einen Stein nimmt, kann der nächste Spieler alle verbleibenden Steine nehmen.

Wenn der erste Spieler einen Stein nimmt, so dass vier übrig bleiben, nimmt sein Gegner ebenfalls einen Stein, so dass drei Steine übrig bleiben.

Der erste Spieler kann nicht alle drei Steine nehmen, weil er höchstens $2 \mal 1 = 2$ Steine nehmen darf. Nehmen wir also an, er nimmt auch einen Stein, sodass 2 übrig bleiben.

Der zweite Spieler kann die beiden verbleibenden Steine nehmen und gewinnt.

5 ist also eine Verlustposition für den ersten Spieler.

Bei einigen Gewinnstellungen gibt es mehr als einen möglichen Zug für den ersten Spieler.

z.B. bei $n = 17$ kann der erste Spieler einen oder vier Steine entfernen.

Lass $M(n)$ die maximale Anzahl von Steinen sein, die der erste Spieler in seinem ersten Zug von einer Gewinnposition nehmen kann, und $M(n) = 0$ für jede andere Position.

$\Summe M(n)$ für $n ≤ 100$ beträgt 728.

Finde $\Summe M(n)$ für $n ≤ {10}^{18}$. Gib deine Antwort modulo ${10}^8$.

# --hints--

`stoneGameThree()` sollte `88351299` zurückgeben.

```js
assert.strictEqual(stoneGameThree(), 88351299);
```

# --seed--

## --seed-contents--

```js
function stoneGameThree() {

  return true;
}

stoneGameThree();
```

# --solutions--

```js
// solution required
```
