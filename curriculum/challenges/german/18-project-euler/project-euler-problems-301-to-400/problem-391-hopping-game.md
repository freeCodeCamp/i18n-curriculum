---
id: 5900f4f31000cf542c510006
title: 'Problem 391: Hüpfspiel'
challengeType: 1
forumTopicId: 302056
dashedName: problem-391-hopping-game
---

# --description--

Lasse $s_k$ die Anzahl der 1en sein, wenn man die Zahlen von 0 bis $k$ in binärer Form schreibt.

Schreibt man zum Beispiel 0 bis 5 in binärer Form, erhält man 0, 1, 10, 11, 100, 101. Es gibt sieben 1en, also $s_5 = 7$.

Die Sequenz $S = \\{s_k : k ≥ 0\\\}$ startet $\\{0, 1, 2, 4, 5, 7, 9, 12, \ldots\\}$.

Ein Spiel wird von zwei Spielern gespielt. Bevor das Spiel beginnt, wird eine Zahl $n$ ausgewählt. Ein Zähler $c$ beginnt bei 0. In jedem Zug wählt der Spieler eine Zahl von 1 bis $n$ (inklusive) und erhöht $c$ um diese Zahl. Der resultierende Wert von $c$ muss ein Bestandteil von $S$ sein. Wenn es keine gültigen Züge mehr gibt, verliert der Spieler.

Zum Beispiel mit $n = 5$ und beginnend mit $c = 0$:

- Spieler 1 wählt 4, also wird $c$ $0 + 4 = 4$.
- Spieler 2 wählt 5, also wird $c$ $4 + 5 = 9$.
- Spieler 1 wählt 3, also wird $c$ $9 + 3 = 12$.
- usw.

Man beachte, dass $c$ immer zu $S$ gehören muss, und jeder Spieler kann $c$ um höchstens $n$ erhöhen.

Sei $M(n)$ die höchste Zahl, die der erste Spieler in seinem ersten Zug wählen kann, um einen Sieg zu erzwingen, und $M(n) = 0$, wenn es keinen solchen Zug gibt. Zum Beispiel ist $M(2) = 2$, $M(7) = 1$ und $M(20) = 4$.

Es kann nachgewiesen werden, dass $\sum M{(n)}^3 = 8150$ für $1 ≤ n ≤ 20$.

Finde $\sum M{(n)}^3$ für $1 ≤ n ≤ 1000$.

# --hints--

`hoppingGame()` sollte `61029882288` zurückgeben.

```js
assert.strictEqual(hoppingGame(), 61029882288);
```

# --seed--

## --seed-contents--

```js
function hoppingGame() {

  return true;
}

hoppingGame();
```

# --solutions--

```js
// solution required
```
