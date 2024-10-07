---
id: 587d8256367417b2b2512c79
title: Inzidenz-Matrix
challengeType: 1
forumTopicId: 301644
dashedName: incidence-matrix
---

# --description--

Yet another way to represent a graph is to put it in an <dfn>incidence matrix.</dfn>

Eine <dfn>incidence matrix</dfn> ist ein zweidimensionales (2D) Feld. Im Allgemeinen setzt eine Inzidenzmatrix zwei verschiedene Klassen von Objekten zwischen ihren beiden Dimensionen in Beziehung. Diese Art von Matrix ist mit einer Adjazenzmatrix vergleichbar. Die Zeilen und Spalten bedeuten hier jedoch etwas anderes.

In Graphen haben wir Kanten und Knoten. Dies werden unsere "zwei verschiedenen Klassen von Objekten" sein. In dieser Matrix sind die Zeilen die Knoten und die Spalten die Kanten. Das bedeutet, dass wir eine ungerade Anzahl von Zeilen und Spalten haben können.

Jede Spalte steht für eine einzelne Kante. Außerdem verbindet jede Kante zwei Knotenpunkte miteinander. Um zu zeigen, dass es eine Kante zwischen zwei Knoten gibt, schreibst du eine 1 in die beiden Zeilen einer bestimmten Spalte. Nachfolgend ein Graph mit 3 Knoten und einer Kante zwischen Knoten 1 und Knoten 3.

<blockquote>    1<br>   ---<br>1 | 1<br>2 | 0<br>3 | 1</blockquote>

Hier ist ein Beispiel für eine Inzidenzmatrix mit 4 Kanten und 4 Knoten. Denk daran, dass die Spalten die Kanten und die Zeilen die Knoten selbst sind.

<blockquote>    1 2 3 4<br>   --------<br>1 | 0 1 1 1<br>2 | 1 1 0 0<br>3 | 1 0 0 1<br>4 | 0 0 1 0</blockquote>

Nachfolgend findest du eine JavaScript-Implementierung desselben Vorgangs.

```js
var incMat = [
  [0, 1, 1, 1],
  [1, 1, 0, 0],
  [1, 0, 0, 1],
  [0, 0, 1, 0]
];
```

Um einen gerichteten Graphen zu erstellen, verwende `-1` für eine Kante, die einen bestimmten Knoten verlässt, und `1` für eine Kante, die in einen Knoten eintritt.

```js
var incMatDirected = [
  [ 0, -1,  1, -1],
  [-1,  1,  0,  0],
  [ 1,  0,  0,  1],
  [ 0,  0, -1,  0]
];
```

Graphen können auch <dfn>weights</dfn> an ihren Kanten haben. Bislang haben wir <dfn>unweighted</dfn> Kanten, bei denen nur das Vorhandensein oder Fehlen einer Kante binär ist(`0` or `1`). Du kannst je nach Anwendung unterschiedliche Gewichte haben. Ein anderes Gewicht wird durch Zahlen größer als 1 dargestellt.

# --instructions--

Erstelle eine Inzidenzmatrix für einen ungerichteten Graphen mit fünf Knoten und vier Kanten. Diese Matrix sollte in einem mehrdimensionalen Array vorliegen.

Diese fünf Knotenpunkte stehen in folgender Beziehung zueinander. Die erste Kante liegt zwischen dem ersten und dem zweiten Knoten. Die zweite Kante liegt zwischen dem zweiten und dem dritten Knoten. Die dritte Kante liegt zwischen dem dritten und dem fünften Knoten. Die vierte Kante liegt zwischen dem vierten und dem zweiten Knoten. Alle Kantengewichte sind eins, und die Reihenfolge der Kanten ist wichtig.

# --hints--

`incMatUndirected` sollte nur fünf Knoten enthalten.

```js
assert(
  incMatUndirected.length === 5 &&
    incMatUndirected
      .map(function (x) {
        return x.length === 4;
      })
      .reduce(function (a, b) {
        return a && b;
      })
);
```

Es sollte eine erste Kante zwischen dem ersten und dem zweiten Knoten geben.

```js
assert(incMatUndirected[0][0] === 1 && incMatUndirected[1][0] === 1);
```

Es sollte eine zweite Kante zwischen dem zweiten und dem dritten Knoten geben.

```js
assert(incMatUndirected[1][1] === 1 && incMatUndirected[2][1] === 1);
```

Es sollte eine dritte Kante zwischen dem dritten und dem fünften Knoten vorhanden sein.

```js
assert(incMatUndirected[2][2] === 1 && incMatUndirected[4][2] === 1);
```

Es sollte eine vierte Kante zwischen dem zweiten und dem vierten Knoten vorhanden sein.

```js
assert(incMatUndirected[1][3] === 1 && incMatUndirected[3][3] === 1);
```

# --seed--

## --seed-contents--

```js
var incMatUndirected = [

];
```

# --solutions--

```js
var incMatUndirected = [[1, 0, 0, 0],[1, 1, 0, 1],[0, 1, 1, 0],[0, 0, 0, 1],[0, 0, 1, 0]];
```
