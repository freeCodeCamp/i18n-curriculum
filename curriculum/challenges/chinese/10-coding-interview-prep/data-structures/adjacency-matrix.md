---
id: 587d8256367417b2b2512c78
title: 邻接矩阵
challengeType: 1
forumTopicId: 301621
dashedName: adjacency-matrix
---

# --description--

Another way to represent a graph is to put it in an <dfn>adjacency matrix</dfn>. An <dfn>adjacency matrix</dfn> is a two-dimensional (2D) array where each nested array has the same number of elements as the outer array. In other words, it is a matrix or grid of numbers, where the numbers represent the edges.

**注意** ：矩阵顶部和左侧的数字只是节点的标签。 在矩阵中，1 代表行和列的顶点（节点）之间存在着一条边。 0 意味着没有边或关系。

<pre>
    1 2 3
  \------
1 | 0 1 1
2 | 1 0 0
3 | 1 0 0
</pre>

上面是一个非常简单的无向图，其中有三个节点，第一个节点连接到第二个和第三个节点。 下面是同一件事的JavaScript实现。

```js
var adjMat = [
  [0, 1, 1],
  [1, 0, 0],
  [1, 0, 0]
];
```

与邻接列表不同，矩阵的每个“行”必须具有与图中的节点相同数量的元素。 这里我们有一个三乘三矩阵，这意味着我们的图中有三个节点。 有向图看起来很相似。 下面是一张图，其中第一个节点有一条边指向第二个节点，然后第二个节点有一条边指向第三个节点。

```js
var adjMatDirected = [
  [0, 1, 0],
  [0, 0, 1],
  [0, 0, 0]
];
```

图表也可以在每条边上有 <dfn>权重</dfn>。 到目前为止，我们有 <dfn>无权重</dfn> 的边，其中边的存在和缺失都是二进制表示的（`0` 或 `1`）。 根据你的应用，你可以使用不同的权重。

# --instructions--

创建具有五个节点的无向​​图的邻接矩阵。 该矩阵应该是多维数组。 在这五个节点中，第一个和第四个节点、第一个和第三个节点、第三个和第五个节点以及第四个和第五个节点之间具有关系。 所有边的权重都是 1。

# --hints--

`undirectedAdjList` 应该只有吴哥节点。

```js
assert(
  adjMatUndirected.length === 5 &&
    adjMatUndirected
      .map(function (x) {
        return x.length === 5;
      })
      .reduce(function (a, b) {
        return a && b;
      })
);
```

第一个和第四个节点之间应该有一条边。

```js
assert(adjMatUndirected[0][3] === 1 && adjMatUndirected[3][0] === 1);
```

第一个和第三个节点之间应该有一条边。

```js
assert(adjMatUndirected[0][2] === 1 && adjMatUndirected[2][0] === 1);
```

第三个和第五个节点之间应该有一条边。

```js
assert(adjMatUndirected[2][4] === 1 && adjMatUndirected[4][2] === 1);
```

第四个和第五个节点之间应该有一条边。

```js
assert(adjMatUndirected[3][4] === 1 && adjMatUndirected[4][3] === 1);
```

# --seed--

## --seed-contents--

```js
var adjMatUndirected = [];
```

# --solutions--

```js
var adjMatUndirected = [
  [0, 0, 1, 1, 0],
  [0, 0, 0, 0, 0],
  [1, 0, 0, 0, 1],
  [1, 0, 0, 0, 1],
  [0, 0, 1, 1, 0]
];
```
