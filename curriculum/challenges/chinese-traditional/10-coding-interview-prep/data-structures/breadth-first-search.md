---
id: 587d825c367417b2b2512c90
title: 廣度優先搜索
challengeType: 1
forumTopicId: 301622
dashedName: breadth-first-search
---

# --description--

So far, we've learned different ways of creating representations of graphs. What now? One natural question to have is what are the distances between any two nodes in the graph? Enter <dfn>graph traversal algorithms</dfn>.

<dfn>遍歷算法</dfn> 是遍歷或訪問圖中節點的算法。 一種類型的遍歷算法是廣度優先的搜索算法。

該算法從一個節點開始，並訪問它的每個距離爲 1 的鄰居。 然後算法接着走訪它們的每個鄰居，如此，直到所有節點都已經到達爲止。

一個有助於實現廣度優先搜索算法的重要數據結構是隊列。 這是一個數組，你可以添加元素到數組的一端並從另一端刪除元素。 這也稱爲 <dfn>FIFO</dfn> 或 <dfn>先進先出</dfn> 數據結構。

從視覺上來表達，以下是算法正在做的事情。 ![廣度優先搜索算法在樹上移動](https://camo.githubusercontent.com/2f57e6239884a1a03402912f13c49555dec76d06/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f342f34362f416e696d617465645f4246532e676966)

灰色陰影代表一個添加到隊列中的節點，黑色陰影代表一個從隊列中刪除的節點。 注意每當某個節點從隊列中被移除時（節點轉爲黑色），它們的所有鄰居都會被添加到隊列中（節點轉爲灰色）。

要實現此算法，你需要輸入圖形結構和你想要開始的節點。

首先，您需要了解距起始節點的距離。 在開始的時候，你想要給所有的距離一個很大的數字，例如 `Infinity`。 這將防止當某個節點無法從你的起始節點到達時出現計算問題。 接下來，您將要從開始節點轉到其鄰居。 這些鄰居是一個邊緣的距離，此時你應該添加一個距離單位到你要跟蹤的距離。

# --instructions--

編寫一個函數 `bfs()` ，它將一個鄰接矩陣圖（二維數組）和一個標記爲根的節點標籤作爲參數。 節點標籤只是 `0` 到 `n - 1` 之間節點的整數值，其中 `n` 是圖中節點的總數。

你的函數將輸出 JavaScript 對象鍵值對，即節點及其與根的距離。 如果無法到達節點，則其距離應爲`Infinity` 。

# --hints--

輸入圖 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]`，起始節點爲 `1`，應該返回 `{0: 1, 1: 0, 2: 1, 3: 2}`

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]`，起始節點爲 `1`，應該返回 `{0: 1, 1: 0, 2: 1, 3: Infinity}`

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]`，起始節點爲 `0`，應該返回 `{0: 0, 1: 1, 2: 2, 3: 3}`

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

輸入圖 `[[0, 1], [1, 0]]`，其實節點爲 `0`，應該返回 `{0: 0, 1: 1}`

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
