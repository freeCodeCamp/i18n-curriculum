---
id: 5900f4eb1000cf542c50fffd
title: 'Problem 382: Erzeugen von Polygonen'
challengeType: 1
forumTopicId: 302046
dashedName: problem-382-generating-polygons
---

# --description--

Ein Polygon ist eine flache Form, die aus geraden Liniensegmenten besteht, die miteinander verbunden sind und eine geschlossene Kette oder einen Kreis bilden. Ein Polygon besteht aus mindestens drei Seiten und schneidet sich nicht selbst.

Eine Menge $S$ positiver Zahlen erzeugt ein Polygon $P$, wenn:

- keine zwei Seiten von $P$ sind gleich lang,
- die Länge jeder Seite von $P$ befindet sich in $S$, und
- $S$ enthält keinen anderen Wert.

Zum Beispiel:

Die Menge {3, 4, 5} ergibt ein Polygon mit den Seiten 3, 4 und 5 (ein Dreieck).

Die Menge {6, 9, 11, 24} erzeugt ein Polygon mit den Seiten 6, 9, 11 und 24 (ein Viereck).

Die Mengen {1, 2, 3} und {2, 3, 4, 9} ergeben kein einziges Polygon.

Betrachten wir die Folge $s$, die wie folgt definiert ist:

- $s_1 = 1$, $s_2 = 2$, $s_3 = 3$
- $s_n = s_{n - 1} + s_{n - 3}$ for $n > 3$.

Sei $U_n$ die Menge $\\{s_1, s_2, \ldots, s_n\\}$. Zum Beispiel, $U_{10} = \\{1, 2, 3, 4, 6, 9, 13, 19, 28, 41\\}$.

Sei $f(n)$ die Anzahl der Teilmengen von $U_n$, die mindestens ein Polygon erzeugen.

Zum Beispiel, $f(5) = 7$, $f(10) = 501$ und $f(25) = 18\\,635\\,853$.

Finde die letzten 9 Ziffern von $f({10}^{18})$.

# --hints--

`generatingPolygons()` sollte `697003956` zurückgeben.

```js
assert.strictEqual(generatingPolygons(), 697003956);
```

# --seed--

## --seed-contents--

```js
function generatingPolygons() {

  return true;
}

generatingPolygons();
```

# --solutions--

```js
// solution required
```
