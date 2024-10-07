---
id: 5900f5181000cf542c51002a
title: 'Problem 427: n-Sequenzen'
challengeType: 1
forumTopicId: 302097
dashedName: problem-427-n-sequences
---

# --description--

Eine Sequenz von Integern $S = \\{s_i\\}$ wird eine $n$-Sequenz genannt, wenn sie $n$ Elemente hat und jedes Element, $s_i$, $1 ≤ s_i ≤ n$ erfüllt. Es gibt also insgesamt $n^n$ verschiedene $n$-Sequenzen.

Zum Beispiel ist die Sequenz $S = \\{1, 5, 5, 10, 7, 7, 7, 2, 3, 7\\}$ eine 10-Sequenz.

Für jede Folge $S$ sollte $L(S)$ die Länge der längsten zusammenhängenden Teilfolge von $S$ mit demselben Wert sein. Für die obige Folge $S$ zum Beispiel ist $L(S) = 3$, weil drei aufeinanderfolgende 7er vorhanden sind.

Lass $f(n) = \sum L(S)$ für alle $n$-Sequenzen $S$.

Zum Beispiel, $f(3) = 45$, $f(7) = 1\\,403\\,689$ und $f(11) = 481\\,496\\,895\\,121$.

Finde $f(7\\.500\\.000)\bmod 1\\.000\\.000\.009$.

# --hints--

`nSequences()` sollte `97138867` zurückgeben.

```js
assert.strictEqual(nSequences(), 97138867);
```

# --seed--

## --seed-contents--

```js
function nSequences() {

  return true;
}

nSequences();
```

# --solutions--

```js
// solution required
```
