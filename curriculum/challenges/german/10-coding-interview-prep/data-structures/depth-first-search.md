---
id: 587d825d367417b2b2512c96
title: Depth-First-Suche
challengeType: 1
forumTopicId: 301640
dashedName: depth-first-search
---

# --description--

Similar to <dfn>breadth-first search</dfn>, here we will learn about another graph traversal algorithm called <dfn>depth-first search</dfn>.

Während die Breitensuche inkrementelle Kantenlängen vom Ausgangsknoten entfernt sucht, geht die <dfn>depth-first search</dfn> zunächst einen Kantenpfad so weit wie möglich hinunter.

Erreicht er ein Ende eines Pfades, geht die Suche zurück zum letzten Knoten mit einem unbesuchten Kantenpfad und setzt die Suche fort.

Die folgende Animation zeigt, wie der Algorithmus funktioniert. Der Algorithmus beginnt mit dem obersten Knoten und besucht die Knoten in der nummerierten Reihenfolge.

<img alt="animation showing the depth first search algorithm" src='https://cdn.freecodecamp.org/curriculum/coding-interview-prep/depth-first-search.gif' />

Im Gegensatz zur Breadth-First-Suche besucht er nicht jedes Mal, wenn ein Knoten besucht wird, alle seine Nachbarn. Stattdessen besucht er zunächst einen seiner Nachbarn und setzt diesen Weg fort, bis es auf diesem Weg keine weiteren Knoten mehr gibt, die besucht werden müssen.

Um diesen Algorithmus zu implementieren, musst du einen Stapel verwenden. Ein Stapel ist ein Array, bei dem das zuletzt hinzugefügte Element das erste ist, das wieder entfernt wird. Dies wird auch als <dfn>Last-In-First-Out</dfn>-Datenstruktur bezeichnet. Ein Stapel ist bei Algorithmen für die Tiefensuche hilfreich, da wir beim Hinzufügen von Nachbarn zum Stapel zuerst die zuletzt hinzugefügten Nachbarn besuchen und sie vom Stapel entfernen möchten.

Eine einfache Ausgabe dieses Algorithmus ist eine Liste von Knoten, die von einem bestimmten Knoten aus erreichbar sind. Daher sollten du auch die Knotenpunkte, die du besuchst, im Auge behalten.

# --instructions--

Schreibe eine Funktion `dfs()`, die eine ungerichtete Adjazenzmatrix `graph` und eine Knotenbezeichnung `root` als Parameter annimmt. Die Knotenbezeichnung ist einfach der numerische Wert des Knotens zwischen `0` und `n - 1`, wobei `n` die Gesamtzahl der Knoten im Graphen ist.

Deine Funktion sollte ein Array aller Knoten ausgeben, die von der `root` aus erreichbar sind.

# --hints--

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` mit einem Startknoten `1` sollte ein Array mit `0`, `1`, `2`, und `3`. zurückgeben.

```js
assert.sameMembers(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 1, 0],
      [0, 1, 0, 1],
      [0, 0, 1, 0]
    ];
    return dfs(graph, 1);
  })(),
  [0, 1, 2, 3]
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` mit einem Startknoten von `3` sollte ein Array mit `3`, `2`, `1`, und `0` zurückgeben.

```js
assert.sameMembers(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 1, 0],
      [0, 1, 0, 1],
      [0, 0, 1, 0]
    ];
    return dfs(graph, 3);
  })(),
  [3, 2, 1, 0]
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` mit dem Startknoten `1` sollte ein Array mit vier Elementen zurückgeben.

```js
assert(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 1, 0],
      [0, 1, 0, 1],
      [0, 0, 1, 0]
    ];
    return dfs(graph, 1);
  })().length === 4
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]` mit einem Startknoten von `3` sollte ein Array mit `3` zurückgeben.

```js
assert.sameMembers(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 1, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0]
    ];
    return dfs(graph, 3);
  })(),
  [3]
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]` mit einem Startknoten von `3` sollte ein Array mit einem Element zurückgeben.

```js
assert(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 1, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0]
    ];
    return dfs(graph, 3);
  })().length === 1
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` mit einem Startknoten von `3` sollte ein Array mit `2` und `3` zurückgeben.

```js
assert.sameMembers(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 0, 0],
      [0, 0, 0, 1],
      [0, 0, 1, 0]
    ];
    return dfs(graph, 3);
  })(),
  [2, 3]
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` mit einem Startknoten von `3` sollte ein Array mit zwei Elementen zurückgeben.

```js
assert(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 0, 0],
      [0, 0, 0, 1],
      [0, 0, 1, 0]
    ];
    return dfs(graph, 3);
  })().length === 2
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` mit einem Startknoten von `0` sollte ein Array mit `0` und `1` zurückgeben.

```js
assert.sameMembers(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 0, 0],
      [0, 0, 0, 1],
      [0, 0, 1, 0]
    ];
    return dfs(graph, 0);
  })(),
  [0, 1]
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` mit einem Startknoten `0` sollte ein Array mit zwei Elementen zurückgeben.

```js
assert(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 0, 0],
      [0, 0, 0, 1],
      [0, 0, 1, 0]
    ];
    return dfs(graph, 0);
  })().length === 2
);
```

# --seed--

## --seed-contents--

```js
function dfs(graph, root) {

}

var exDFSGraph = [
  [0, 1, 0, 0],
  [1, 0, 1, 0],
  [0, 1, 0, 1],
  [0, 0, 1, 0]
];
console.log(dfs(exDFSGraph, 3));
```

# --solutions--

```js
function dfs(graph, root) {
    var stack = [];
    var tempV;
    var visited = [];
    var tempVNeighbors = [];
    stack.push(root);
    while (stack.length > 0) {
        tempV = stack.pop();
        if (visited.indexOf(tempV) == -1) {
            visited.push(tempV);
            tempVNeighbors = graph[tempV];
            for (var i = 0; i < tempVNeighbors.length; i++) {
                if (tempVNeighbors[i] == 1) {
                    stack.push(i);
                }
            }
        }
    }
    return visited;
}
```
