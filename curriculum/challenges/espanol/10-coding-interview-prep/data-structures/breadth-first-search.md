---
id: 587d825c367417b2b2512c90
title: Búsqueda en Anchura
challengeType: 1
forumTopicId: 301622
dashedName: breadth-first-search
---

# --description--

Hasta ahora, hemos aprendido diferentes formas de crear representaciones de grafos. ¿Y ahora qué? Una pregunta natural a tener es ¿cuál es la distancia entre dos cualquiera en el grafo? Introduciremos los <dfn>algoritmos de recorrido de grafos</dfn>.

<dfn>Los Algoritmos de Recorrido</dfn> son algoritmos para atravesar o visitar los nodos en un grafo. Un tipo de algoritmo de recorrido es el algoritmo de búsqueda en anchura.

Este algoritmo empieza en un nodo y visita todos los vecinos que están a una arista de distancia. Luego visita cada uno de los vecinos hasta que todos los nodos hayan sido visitados.

Una estructura de datos importante que ayudará a implementar el algoritmo de búsqueda en anchura es la cola. Esta es un arreglo donde tu puedes agregar elementos en un extremos y eliminarlos desde el otro extremo. Esta también es conocida como una estructura de datos <dfn>FIFO</dfn> o <dfn>First-In-First-Out</dfn>.

Visually, this is what the algorithm is doing:
<img alt="animation showing the breadth first search algorithm" src='https://cdn.freecodecamp.org/curriculum/coding-interview-prep/breadth-first-search.gif' />

The grey shading represents a node getting added into the queue and the black shading represents a node getting removed from the queue. See how every time a node gets removed from the queue (node turns black), all their neighbors get added into the queue (node turns grey).

To implement this algorithm, you'll need to input a graph structure and a node you want to start at.

First, you'll want to be aware of the distances from, or number of edges away from, the start node. You'll want to start all your distances with some large number, like `Infinity`. This prevents counting issues for when a node may not be reachable from your start node. Next, you'll want to go from the start node to its neighbors. These neighbors are one edge away and at this point you should add one unit of distance to the distances you're keeping track of.

# --instructions--

Write a function `bfs()` that takes an adjacency matrix graph (a two-dimensional array) and a node label root as parameters. The node label will just be the integer value of the node between `0` and `n - 1`, where `n` is the total number of nodes in the graph.

Your function will output a JavaScript object key-value pairs with the node and its distance from the root. If the node could not be reached, it should have a distance of `Infinity`.

# --hints--

The input graph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` with a start node of `1` should return `{0: 1, 1: 0, 2: 1, 3: 2}`

```js
var graph = [
  [0, 1, 0, 0],
  [1, 0, 1, 0],
  [0, 1, 0, 1],
  [0, 0, 1, 0]
];
var results = bfs(graph, 1);
assert.deepEqual(results, { 0: 1, 1: 0, 2: 1, 3: 2 });
```

The input graph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]` with a start node of `1` should return `{0: 1, 1: 0, 2: 1, 3: Infinity}`

```js
var graph = [
  [0, 1, 0, 0],
  [1, 0, 1, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0]
];
var results = bfs(graph, 1);
 assert.deepEqual(results, { 0: 1, 1: 0, 2: 1, 3: Infinity });
```

The input graph `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` with a start node of `0` should return `{0: 0, 1: 1, 2: 2, 3: 3}`

```js
var graph = [
  [0, 1, 0, 0],
  [1, 0, 1, 0],
  [0, 1, 0, 1],
  [0, 0, 1, 0]
];
var results = bfs(graph, 0);
 assert.deepEqual(results, { 0: 0, 1: 1, 2: 2, 3: 3 });
```

The input graph `[[0, 1], [1, 0]]` with a start node of `0` should return `{0: 0, 1: 1}`

```js
var graph = [
  [0, 1],
  [1, 0]
];
var results = bfs(graph, 0);
assert.deepEqual(results, { 0: 0, 1: 1 });
```

# --seed--

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
