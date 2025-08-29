---
id: 5900f5021000cf542c510015
title: 'Problem 406: Ratespiel'
challengeType: 1
forumTopicId: 302074
dashedName: problem-406-guessing-game
---

# --description--

Wir versuchen, eine versteckte Zahl aus der Menge der Integer {1, 2, ..., $n$} zu finden, indem wir Fragen stellen. Auf jede Zahl (Frage), die wir stellen, erhalten wir eine von drei möglichen Antworten:

- "Deine Schätzung ist niedriger als die versteckte Zahl" (und dir entstehen Kosten von a), oder
- "Deine Schätzung ist höher als die versteckte Zahl" (und Ihnen entstehen Kosten in Höhe von b), oder
- "Ja, das ist es!" (und das Spiel endet).

Bei gegebenem Wert von $n$, $a$ und $b$ minimiert eine optimale Strategie die Gesamtkosten <u>für den schlimmst möglichen Fall</u>.

Wenn zum Beispiel $n = 5$, $a = 2$ und $b = 3$ ist, dann können wir mit der ersten Frage "<strong>2</strong>" beginnen.

Wenn man uns sagt, dass 2 höher ist als die versteckte Zahl (zum Preis von $b = 3$), dann sind wir sicher, dass "<strong>1</strong>" die versteckte Zahl ist (bei Gesamtkosten von <strong><span style="color: blue;">3</span></strong>).

Wenn uns gesagt wird, dass 2 kleiner ist als die versteckte Zahl (zum Preis von $a = 2$), dann lautet unsere nächste Frage "<strong>4</strong>".

Wenn uns gesagt wird, dass 4 höher ist als die verborgene Zahl (für einen Preis von $b = 3$), dann sind wir sicher, dass "<strong>3</strong>" die verborgene Zahl ist (für einen Gesamtpreis von $2 + 3 = \color{blue}{\mathbf{5}}$).

Wenn uns gesagt wird, dass 4 kleiner ist als die verborgene Zahl (zum Preis von $a = 2$), dann sind wir sicher, dass "<strong>5</strong>" die verborgene Zahl ist (zum Gesamtpreis von $2 + 2 = \color{blue}{\mathbf{4}}$).

Die ungünstigsten Kosten, die mit dieser Strategie erreicht werden, sind also <strong><span style="color: red">5</span></strong>. Es kann auch gezeigt werden, dass dies die niedrigsten Kosten sind, die im schlimmsten Fall erreicht werden können. Wir haben also soeben eine optimale Strategie für die gegebenen Werte von $n$, $a$ und $b$ beschrieben.

Lasse $C(n, a, b)$ die schlimmsten Kosten sein, die eine optimale Strategie bei den gegebenen Werten von $n$, $a$ und $b$ verursacht.

Hier sind einige Beispiele:

$$\begin{align}   & C(5, 2, 3) = 5 \\\\
  & C(500, \sqrt{2}, \sqrt{3}) = 13.220\\,731\\,97\ldots \\\\   & C(20\\,000, 5, 7) = 82 \\\\
  & C(2\\,000\\,000, √5, √7) = 49.637\\,559\\,55\ldots \\\\ \end{align}$$

Lasse $F_k$ die Fibonacci-Zahlen sein: $F_k = F_{k - 1} + F_{k - 2}$ mit Basisfällen $F_1 = F_2 = 1$.

Finde $\displaystyle\sum_{k = 1}^{30} C({10}^{12}, \sqrt{k}, \sqrt{F_k})$, und gib deine Antwort gerundet auf 8 Stellen hinter dem Komma an.

# --hints--

`guessingGame()` sollte `36813.12757207` zurückgeben.

```js
assert.strictEqual(guessingGame(), 36813.12757207);
```

# --seed--

## --seed-contents--

```js
function guessingGame() {

  return true;
}

guessingGame();
```

# --solutions--

```js
// solution required
```
