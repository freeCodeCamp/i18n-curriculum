---
id: 5900f4891000cf542c50ff9b
title: 'Problem 284: Stetige Quadrate'
challengeType: 1
forumTopicId: 301935
dashedName: problem-284-steady-squares
---

# --description--

Die dreistellige Zahl 376 im Dezimalsystem ist ein Beispiel für Zahlen mit der besonderen Eigenschaft, dass ihr Quadrat mit denselben Ziffern endet: ${376}^2 = 141376$. Nennen wir eine Zahl, mit dieser Eigenschaft, ein stetiges Quadrat.

Stetige Quadrate können auch in anderen Nummerierungssystemen beobachtet werden. Im Zahlensystem zur Basis 14 ist die dreistellige Zahl $c37$ ebenfalls ein stetiges Quadrat: $c37^2 = aa0c37$, und die Summe ihrer Ziffern ist im gleichen Zahlensystem $c+3+7=18$. Die Buchstaben $a$, $b$, $c$ und $d$ werden für die 10, 11, 12 bzw. 13 Ziffern verwendet, ähnlich wie beim hexadezimalen Zahlensystem.

Für $1 ≤ n ≤ 9$ ist die Summe der Ziffern aller $n$-stelligen stetigen Quadrate im Zahlensystem zur Basis 14 $2d8$ (582 dezimal). Stetige Quadrate mit führenden 0's sind nicht erlaubt.

Finde die Summe der Ziffern aller $n$-stelligen stetigen Quadrate im Zahlensystem zur Basis 14 für $1 ≤ n ≤ 10000$ (dezimal) und gib deine Antwort als Zeichenkette im System zur Basis 14 an, wobei du gegebenenfalls Kleinbuchstaben verwendest.

# --hints--

`steadySquares()` sollte einen String zurückgeben.

```js
assert.isString(steadySquares());
```

`steadySquares()` sollte den String `5a411d7b` zurückgeben.

```js
assert.strictEqual(steadySquares(), '5a411d7b');
```

# --seed--

## --seed-contents--

```js
function steadySquares() {

  return true;
}

steadySquares();
```

# --solutions--

```js
// solution required
```
