---
id: 587d825d367417b2b2512c96
title: 深度優先搜索
challengeType: 1
forumTopicId: 301640
dashedName: depth-first-search
---

# --description--

Similar to <dfn>breadth-first search</dfn>, here we will learn about another graph traversal algorithm called <dfn>depth-first search</dfn>.

廣度優先搜索是在遠離源節點的情況下按邊長遞增搜索，而 <dfn>深度優先搜索</dfn> 則是先沿着一條邊的路徑儘可能地搜索。

一旦到達路徑的一端，搜索將回溯到具有未訪問邊緣路徑的最後一個節點並繼續搜索。

下面的動畫展示了算法的工作原理。 該算法從頂部節點開始，並按編號順序訪問節點。

<img alt="animation showing the depth first search algorithm" src='https://cdn.freecodecamp.org/curriculum/coding-interview-prep/depth-first-search.gif' />

請注意，與廣度優先搜索不同的是，每次訪問一個節點時，它不會訪問其所有鄰居。 相反，它首先訪問它的一個鄰居，並繼續沿着該路徑前進，直到該路徑上沒有更多的節點可供訪問。

要實現此算法，您需要使用堆棧。 堆棧是一個數組，其中後添加的元素會被先刪除。 這也稱爲 <dfn>後進先出</dfn> 數據結構。 堆棧在深度優先搜索算法中很有幫助，因爲當我們向堆棧添加鄰居時，我們要先訪問最近添加的鄰居，並將它們從堆棧中刪除。

該算法的簡單輸出是可從給定節點到達的節點列表。 因此，在實施此算法時，你需要跟蹤你已經訪問過的節點。

# --instructions--

編寫一個函數 `dfs()`，它將無向、鄰接矩陣 `graph` 和節點標籤 `root` 作爲參數。 節點標籤將只是 `0` 和 `n - 1` 之間節點的數值，其中 `n` 是圖中節點的總數。

您的函數應該輸出從 `root` 可達的所有節點的數組。

# --hints--

輸入圖 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` 和起始節點 `1`，應該返回一個包含 `0`、`1`、`2` 和 `3` 的數組。

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` 和起始節點 `3`，應該返回一個包含 `3`、`2`、`1` 和 `0` 的數組。

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 1], [0, 0, 1, 0]]` 和起始節點 `1`，應該返回一個包含四個元素的數組。

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]` 和起始節點 `3`，應該返回一個只包含 `3` 的數組。

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 1, 0], [0, 1, 0, 0], [0, 0, 0, 0]]` 和起始節點 `3`，應該返回一個只包含一個元素的數組。

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` 和起始節點 `3`，應該返回一個包含 `2` 和 `3` 的數組。

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` 和起始節點 `3`，應該返回一個包含兩個元素的數組。

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` 和起始節點 `0`，應該返回一個包含 `0` 和 `1` 的數組。

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

輸入圖 `[[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, 1], [0, 0, 1, 0]]` 和起始節點 `0`，應該返回一個包含兩個元素的數組。

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
