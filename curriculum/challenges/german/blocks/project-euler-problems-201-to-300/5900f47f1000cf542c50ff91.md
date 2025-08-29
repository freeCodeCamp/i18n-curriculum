---
id: 5900f47f1000cf542c50ff91
title: 'Problem 274: Teilbarkeitsmultiplikatoren'
challengeType: 1
forumTopicId: 301924
dashedName: problem-274-divisibility-multipliers
---

# --description--

Für jede Integer $p > 1$, die zu 10 koprimiert ist, gibt es einen positiven Teilbarkeitsmultiplikator $m &lt; p$, der die Teilbarkeit durch $p$ für die folgende Funktion auf jeder positiven Integer $n$ bewahrt:

$f(n) = (\text{all but the last digit of} \\; n) + (\text{the last digit of} \\; n) \times m$

Das heißt, wenn $m$ der Teilbarkeitsmultiplikator für $p$ ist, dann ist $f(n)$ dann und nur dann durch $p$ teilbar, wenn $n$ durch $p$ teilbar ist.

(Wenn $n$ viel größer als $p$ ist, wird $f(n)$ kleiner als $n$ sein, und die wiederholte Anwendung von $f$ liefert einen multiplikativen Teilbarkeitstest für $p$)

Der Teilbarkeitsmultiplikator für 113 ist zum Beispiel 34.

$f(76275) = 7627 + 5 \times 34 = 7797$: 76275 und 7797 sind beide durch 113 teilbar

$f(12345) = 1234 + 5 \times 34 = 1404$: 12345 und 1404 sind beide durch 113 teilbar

Die Summe der Teilbarkeitsmultiplikatoren für die Primzahlen, die zu 10 koprimiert und kleiner als 1000 sind, ist 39517. Wie lautet die Summe der Teilbarkeitsmultiplikatoren für die Primzahlen, die zu 10 koprimal und kleiner als ${10}^7$ sind?

# --hints--

`divisibilityMultipliers()` sollte `1601912348822` zurückgeben.

```js
assert.strictEqual(divisibilityMultipliers(), 1601912348822);
```

# --seed--

## --seed-contents--

```js
function divisibilityMultipliers() {

  return true;
}

divisibilityMultipliers();
```

# --solutions--

```js
// solution required
```
