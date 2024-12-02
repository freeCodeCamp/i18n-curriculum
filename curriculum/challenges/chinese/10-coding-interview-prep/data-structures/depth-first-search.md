---
id: 587d825d367417b2b2512c96
title: 深度优先搜索
challengeType: 1
forumTopicId: 301640
dashedName: depth-first-search
---

# --description--

Similar to <dfn>breadth-first search</dfn>, here we will learn about another graph traversal algorithm called <dfn>depth-first search</dfn>.

广度优先搜索是在远离源节点的情况下按边长递增搜索，而 <dfn>深度优先搜索</dfn> 则是先沿着一条边的路径尽可能地搜索。

一旦到达路径的一端，搜索将回溯到具有未访问边缘路径的最后一个节点并继续搜索。

下面的动画展示了算法的工作原理。 该算法从顶部节点开始，并按编号顺序访问节点。

<img alt="animation showing the depth first search algorithm" src='https://cdn.freecodecamp.org/curriculum/coding-interview-prep/depth-first-search.gif' />

请注意，与广度优先搜索不同的是，每次访问一个节点时，它不会访问其所有邻居。 相反，它首先访问它的一个邻居，并继续沿着该路径前进，直到该路径上没有更多的节点可供访问。

要实现此算法，您需要使用堆栈。 堆栈是一个数组，其中后添加的元素会被先删除。 这也称为 <dfn>后进先出</dfn> 数据结构。 堆栈在深度优先搜索算法中很有帮助，因为当我们向堆栈添加邻居时，我们要先访问最近添加的邻居，并将它们从堆栈中删除。

该算法的简单输出是可从给定节点到达的节点列表。 因此，在实施此算法时，你需要跟踪你已经访问过的节点。

# --instructions--

编写一个函数 `dfs()`，它将无向、邻接矩阵 `graph` 和节点标签 `root` 作为参数。 节点标签将只是 `0` 和 `n - 1` 之间节点的数值，其中 `n` 是图中节点的总数。

您的函数应该输出从 `root` 可达的所有节点的数组。

# --hints--

输入图 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` 和起始节点 `1`，应该返回一个包含 `0`、`1`、`2` 和 `3` 的数组。

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

输入图 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` 和起始节点 `3`，应该返回一个包含 `3`、`2`、`1` 和 `0` 的数组。

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

输入图 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` 和起始节点 `1`，应该返回一个包含四个元素的数组。

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

输入图 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]` 和起始节点 `3`，应该返回一个只包含 `3` 的数组。

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

输入图 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]` 和起始节点 `3`，应该返回一个只包含一个元素的数组。

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

输入图 `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` 和起始节点 `3`，应该返回一个包含 `2` 和 `3` 的数组。

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

输入图 `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` 和起始节点 `3`，应该返回一个包含两个元素的数组。

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

输入图 `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` 和起始节点 `0`，应该返回一个包含 `0` 和 `1` 的数组。

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

输入图 `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` 和起始节点 `0`，应该返回一个包含两个元素的数组。

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
