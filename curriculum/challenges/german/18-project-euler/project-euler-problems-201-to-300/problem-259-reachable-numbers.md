---
id: 5900f4701000cf542c50ff82
title: 'Problem 259: Erreichbare Zahlen'
challengeType: 1
forumTopicId: 301907
dashedName: problem-259-reachable-numbers
---

# --description--

Eine positiv Integer wird als erreichbar bezeichnet, wenn sie aus einem arithmetischen Ausdruck resultieren kann, der den folgenden Regeln gehorcht:

- Verwendet die Ziffern 1 bis 9, in dieser Reihenfolge und genau einmal.
- Beliebige aufeinanderfolgende Ziffern können aneinandergereiht werden (z. B. erhalten wir mit den Ziffern 2, 3 und 4 die Zahl 234).
- Nur die vier üblichen binären arithmetischen Operationen (Zugabe, Subtraktion, Multiplikation und Abteilung) sind erlaubt.
- Jede Operation kann beliebig oft oder gar nicht genutzt werden.
- Unäres Minus ist nicht erlaubt.
- Eine beliebige Anzahl von (möglicherweise verschachtelten) Klammern kann verwendet werden, um die Reihenfolge der Operationen zu definieren.

Zum Beispiel ist 42 erreichbar, da $\frac{1}{23} \times ((4 \times 5) - 6) \times (78 - 9) = 42$.

Was ist die Summe aller positiven erreichbaren Integer?

# --hints--

`reachableNumbers()` sollte `20101196798` zurückgeben.

```js
assert.strictEqual(reachableNumbers(), 20101196798);
```

# --seed--

## --seed-contents--

```js
function reachableNumbers() {

  return true;
}

reachableNumbers();
```

# --solutions--

```js
// solution required
```
