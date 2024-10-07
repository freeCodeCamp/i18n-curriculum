---
id: 587d825c367417b2b2512c90
title: Breitensuche (Breadth-first search)
challengeType: 1
forumTopicId: 301622
dashedName: breadth-first-search
---

# --description--

So far, we've learned different ways of creating representations of graphs. What now? One natural question to have is what are the distances between any two nodes in the graph? Enter <dfn>graph traversal algorithms</dfn>.

<dfn>Traversal Algorithmen</dfn> sind Algorithmen zum Durchlaufen oder Besuchen von Knoten in einem Graphen. Eine Art von Traversal-Algorithmus ist der Breadth-First-Suchalgorithmus.

Dieser Algorithmus beginnt bei einem Knoten und besucht alle seine Nachbarn, die eine Kante entfernt sind. Dann geht er zu jeden seiner Nachbarn und so weiter, bis alle Knoten erreicht wurden.

Eine wichtige Datenstruktur, die bei der Implementierung des Breadth-First-Suchalgorithmus helfen wird, ist die Reihe. Dies ist ein Array, bei dem du an einem Ende Elemente hinzufügen und am anderen Ende Elemente entfernen kannst. Diese Datenstruktur ist auch bekannt als <dfn>FIFO</dfn> oder <dfn>First-In-First-Out</dfn>.

Hier wird grafisch dargestellt, wie der Algorithmus abläuft. ![Suchalgorithmus, der sich durch einen Baum bewegt (Breadth first)](https://camo.githubusercontent.com/2f57e6239884a1a03402912f13c49555dec76d06/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f342f34362f416e696d617465645f4246532e676966)

Die graue Schattierung steht für einen Knoten, der in die Reihe aufgenommen wird, und die schwarze Schattierung für einen Knoten, der aus der Reihe entfernt wird. Siehe, wie jedes Mal, wenn ein Knoten aus der Reihe entfernt wird (Knoten wird schwarz), alle seine Nachbarn in die Reihe aufgenommen werden (Knoten wird grau).

Um diesen Algorithmus zu implementieren, musst du eine Graphenstruktur und einen Knoten eingeben, an dem du beginnen möchtest.

Zunächst solltest du die Entfernungen bzw. die Anzahl der Kanten vom Startknoten beachten. Du solltest alle Abstände mit einer hohen Zahl beginnen, z. B. `Infinity`. Dadurch werden Probleme bei der Zählung vermieden, wenn ein Knoten von deinem Startknoten aus nicht erreicht werden kann. Als nächstes solltest du von deinem Startknoten zu seinem Nachbarn gehen. Diese Nachbarn sind eine Kante entfernt, und an diesem Punkt solltest du einen bestimmten Abstand zu der Entfernung hinzufügen, die du im Auge behältst.

# --instructions--

Schreibe eine Funktion `bfs()` die eine Adjazenzmatrix (ein 2D-Array) sowie eine Wurzelbezeichnung des Knotens als Parameter übernimmt. Die Knotenreferenz wird einfach ein ganzzahliger Wert zwischen `0` und `n - 1` sein, wobei `n` die Gesamtanzahl aller Knoten im Graphen ist.

Deine Funktion gibt einen JavaScript Objekt "key-value-pair" mit dem Knoten und der Wurzel zurück. Falls der Knoten nicht erreicht werden konnte, sollte dieser eine Distanz von `Infinity` haben.

# --hints--

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` mit dem Startknoten `1` sollte `{0: 1, 1: 0, 2: 1, 3: 2}` returnieren

```js
assert(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 1, 0],
      [0, 1, 0, 1],
      [0, 0, 1, 0]
    ];
    var results = bfs(graph, 1);
    return isEquivalent(results, { 0: 1, 1: 0, 2: 1, 3: 2 });
  })()
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]` mit dem Startknoten `1` sollte `{0: 1, 1: 0, 2: 1, 3: Infinity}` returnieren

```js
assert(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 1, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0]
    ];
    var results = bfs(graph, 1);
    return isEquivalent(results, { 0: 1, 1: 0, 2: 1, 3: Infinity });
  })()
);
```

Der Eingabegraph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` mit dem Startknoten `0` sollte `{0: 0, 1: 1, 2: 2, 3: 3}` zurückgeben

```js
assert(
  (function () {
    var graph = [
      [0, 1, 0, 0],
      [1, 0, 1, 0],
      [0, 1, 0, 1],
      [0, 0, 1, 0]
    ];
    var results = bfs(graph, 0);
    return isEquivalent(results, { 0: 0, 1: 1, 2: 2, 3: 3 });
  })()
);
```

Der Eingabegraph `[[0, 1], [1, 0]]` mit dem Startknoten `0` sollte `{0: 0, 1: 1}` zurückgeben

```js
assert(
  (function () {
    var graph = [
      [0, 1],
      [1, 0]
    ];
    var results = bfs(graph, 0);
    return isEquivalent(results, { 0: 0, 1: 1 });
  })()
);
```

# --seed--

## --after-user-code--

```js
// Source: http://adripofjavascript.com/blog/drips/object-equality-in-javascript.html
function isEquivalent(a, b) {
    // Create arrays of property names
    var aProps = Object.getOwnPropertyNames(a);
    var bProps = Object.getOwnPropertyNames(b);
    // If number of properties is different,
    // objects are not equivalent
    if (aProps.length != bProps.length) {
        return false;
    }
    for (var i = 0; i < aProps.length; i++) {
        var propName = aProps[i];
        // If values of same property are not equal,
        // objects are not equivalent
        if (a[propName] !== b[propName]) {
            return false;
        }
    }
    // If we made it this far, objects
    // are considered equivalent
    return true;
}
```

## --seed-contents--

```js
function bfs(graph, root) {
  var nodesLen = {};

  return nodesLen;
};

var exBFSGraph = [
  [0, 1, 0, 0],
  [1, 0, 1, 0],
  [0, 1, 0, 1],
  [0, 0, 1, 0]
];
console.log(bfs(exBFSGraph, 3));
```

# --solutions--

```js
function bfs(graph, root) {
  var nodesLen = {};
  // Set all distances to infinity
  for (var i = 0; i < graph.length; i++) {
    nodesLen[i] = Infinity;
  }
  nodesLen[root] = 0; // ...except root node
  var queue = [root]; // Keep track of nodes to visit
  var current; // Current node traversing
  // Keep on going until no more nodes to traverse
  while (queue.length !== 0) {
    current = queue.shift();
    // Get adjacent nodes from current node
    var curConnected = graph[current]; // Get layer of edges from current
    var neighborIdx = []; // List of nodes with edges
    var idx = curConnected.indexOf(1); // Get first edge connection
    while (idx !== -1) {
      neighborIdx.push(idx); // Add to list of neighbors
      idx = curConnected.indexOf(1, idx + 1); // Keep on searching
    }
    // Loop through neighbors and get lengths
    for (var j = 0; j < neighborIdx.length; j++) {
      // Increment distance for nodes traversed
      if (nodesLen[neighborIdx[j]] === Infinity) {
        nodesLen[neighborIdx[j]] = nodesLen[current] + 1;
        queue.push(neighborIdx[j]); // Add new neighbors to queue
      }
    }
  }
  return nodesLen;
}
```
