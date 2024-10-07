---
id: 5900f4db1000cf542c50ffee
title: 'Problem 367: Bozo-Sortierung'
challengeType: 1
forumTopicId: 302028
dashedName: problem-367-bozo-sort
---

# --description--

Die Bozo-Sortierung, nicht zu verwechseln mit der etwas weniger effizienten Bogo-Sortierung, besteht darin, zu prüfen, ob die Eingabesequenz sortiert ist, und wenn nicht, zwei Elemente zufällig zu vertauschen. Dieser Vorgang wird so lange wiederholt, bis die Reihe schließlich sortiert ist.

Wenn wir alle Permutationen der ersten 4 natürlichen Zahlen als Eingabe betrachten, beträgt der Erwartungswert der Anzahl der Vertauschungen, gemittelt über alle $4!$-Eingabefolgen, $24.75$.

Die bereits sortierte Folge benötigt 0 Schritte.

In diesem Problem betrachten wir die folgende Variante der Bozo-Sortierung.

Wenn die Reihenfolge nicht stimmt, wählen wir drei Elemente nach dem Zufallsprinzip aus und mischen diese drei Elemente nach dem Zufallsprinzip.

Alle $3! = 6$ Permutationen dieser drei Elemente sind gleich wahrscheinlich.

Die bereits sortierte Sequenz wird 0 Schritte benötigen.

Wenn wir alle Permutationen der ersten 4 natürlichen Zahlen als Eingabe betrachten, beträgt der Erwartungswert der Anzahl der Mischungen, durchschnittlich über alle $4!$-Eingabesequenzen, $27.5$.

Betrachte als Eingangssequenzen die Permutationen der ersten 11 natürlichen Zahlen.

Wie hoch ist die erwartete Anzahl der Umlagerungen, die dieser Sortieralgorithmus im Durchschnitt über alle $11!$-Eingabesequenzen durchführt? Gib deine Antwort auf die nächste ganze Zahl gerundet an.

# --hints--

`bozoSort()` sollte `48271207` zurückgeben.

```js
assert.strictEqual(bozoSort(), 48271207);
```

# --seed--

## --seed-contents--

```js
function bozoSort() {

  return true;
}

bozoSort();
```

# --solutions--

```js
// solution required
```
