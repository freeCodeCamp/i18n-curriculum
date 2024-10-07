---
id: 587d8256367417b2b2512c78
title: 鄰接矩陣
challengeType: 1
forumTopicId: 301621
dashedName: adjacency-matrix
---

# --description--

Another way to represent a graph is to put it in an <dfn>adjacency matrix</dfn>. An <dfn>adjacency matrix</dfn> is a two-dimensional (2D) array where each nested array has the same number of elements as the outer array. In other words, it is a matrix or grid of numbers, where the numbers represent the edges.

**注意** ：矩陣頂部和左側的數字只是節點的標籤。 在矩陣中，1 代表行和列的頂點（節點）之間存在着一條邊。 0 意味着沒有邊或關係。

<pre>
    1 2 3
  \------
1 | 0 1 1
2 | 1 0 0
3 | 1 0 0
</pre>

上面是一個非常簡單的無向圖，其中有三個節點，第一個節點連接到第二個和第三個節點。 下面是同一件事的JavaScript實現。

```js
var adjMat = [
  [0, 1, 1],
  [1, 0, 0],
  [1, 0, 0]
];
```

與鄰接列表不同，矩陣的每個“行”必須具有與圖中的節點相同數量的元素。 這裏我們有一個三乘三矩陣，這意味着我們的圖中有三個節點。 有向圖看起來很相似。 下面是一張圖，其中第一個節點有一條邊指向第二個節點，然後第二個節點有一條邊指向第三個節點。

```js
var adjMatDirected = [
  [0, 1, 0],
  [0, 0, 1],
  [0, 0, 0]
];
```

圖表也可以在每條邊上有 <dfn>權重</dfn>。 到目前爲止，我們有 <dfn>無權重</dfn> 的邊，其中邊的存在和缺失都是二進制表示的（`0` 或 `1`）。 根據你的應用，你可以使用不同的權重。

# --instructions--

創建具有五個節點的無向​​圖的鄰接矩陣。 該矩陣應該是多維數組。 在這五個節點中，第一個和第四個節點、第一個和第三個節點、第三個和第五個節點以及第四個和第五個節點之間具有關係。 所有邊的權重都是 1。

# --hints--

`undirectedAdjList` 應該只有吳哥節點。

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

第一個和第四個節點之間應該有一條邊。

```js
assert(adjMatUndirected[0][3] === 1 && adjMatUndirected[3][0] === 1);
```

第一個和第三個節點之間應該有一條邊。

```js
assert(adjMatUndirected[0][2] === 1 && adjMatUndirected[2][0] === 1);
```

第三個和第五個節點之間應該有一條邊。

```js
assert(adjMatUndirected[2][4] === 1 && adjMatUndirected[4][2] === 1);
```

第四個和第五個節點之間應該有一條邊。

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
