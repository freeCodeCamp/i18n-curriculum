---
id: 5900f4701000cf542c50ff83
title: 'Problem 260: Steinspiel'
challengeType: 1
forumTopicId: 301909
dashedName: problem-260-stone-game
---

# --description--

Ein Spiel wird mit drei Haufen Steinen und zwei Spielern gespielt.

Bei jedem Zug entfernt der Spieler einen oder mehrere Steine von den Haufen. Nimmt der Spieler jedoch Steine von mehr als einem Haufen, muss von jedem gewählten Haufen die gleiche Anzahl an Steinen entfernt werden.

In anderen Worten, der Spieler wählt einige $N > 0$ und entfernt:

- $N$ Steine aus einem einzigen Haufen; oder
- $N$ Steine von jedem der beiden Haufen ($2N$ total); oder
- $N$ Steine von jedem der drei Haufen ($3N$ total).

Der Spieler, der den/die letzten Stein(e) nimmt gewinnt das Spiel.

Eine gewinnende Konfiguration ist eine, bei der der erste Spieler einen Sieg erzwingen kann.

Zum Beispiel sind (0,0,13), (0,11,11) und (5,5,5) gewinnende Konfigurationen, da der erste Spieler sofort alle Steine entfernen kann.

Eine verlierende Konfiguration ist eine, in der der zweite Spieler einen Sieg erzwingen kann, unabhängig davon, was der erste Spieler tut.

Zum Beispiel sind (0,1,2) und (1,3,3) verlierende Konfigurationen: Jeder legale Zug hinterlässt eine gewinnende Konfiguration für den zweiten Spieler.

Betrachte alle verlierenden Konfigurationen ($x_i$,$y_i$,$z_i$), wo $x_i ≤ y_i ≤ z_i ≤ 100$. Wir können nachweisen, dass für diese $\sum (x_i + y_i + z_i) = 173\\,895$.

Finde $\sum (x_i + y_i + z_i)$, bei der ($x_i$,$y_i$,$z_i$) über den verlierenden Konfigurationen mit $x_i ≤ y_i ≤ z_i ≤ 1000$ liegt.

# --hints--

`stoneGame()` sollte `167542057` zurückgeben.

```js
assert.strictEqual(stoneGame(), 167542057);
```

# --seed--

## --seed-contents--

```js
function stoneGame() {

  return true;
}

stoneGame();
```

# --solutions--

```js
// solution required
```
