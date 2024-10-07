---
id: 587d8256367417b2b2512c79
title: 關聯矩陣
challengeType: 1
forumTopicId: 301644
dashedName: incidence-matrix
---

# --description--

Yet another way to represent a graph is to put it in an <dfn>incidence matrix.</dfn>

<dfn>關聯矩陣</dfn> 是一個二維 (2D) 數組。 一般而言，關聯矩陣在其兩個維度之間涉及兩個不同類別的對象。 這種矩陣類似於鄰接矩陣。 但是，行和列在這裏意味着其他東西。

在圖表中，我們有邊緣和節點。 這些將是我們的“兩類不同的對象”。 該矩陣將使行爲節點，列爲邊。 這意味着我們可以擁有不均勻的行數和列數。

每列將代表一個獨特的邊緣。 此外，每個邊連接兩個節點。 爲了表明兩個節點之間存在邊，你將在特定列的兩行中放置一個 1。 下面是一個含有三個節點的圖，節點 1 和節點 3 之間有一條邊。

<blockquote>    1<br>   ---<br>1 | 1<br>2 | 0<br>3 | 1</blockquote>

下面是一個有4個邊和4個節點的關聯矩陣的例子。 請記住，列是邊，行是節點本身。

<blockquote>    1 2 3 4<br>   --------<br>1 | 0 1 1 1<br>2 | 1 1 0 0<br>3 | 1 0 0 1<br>4 | 0 0 1 0</blockquote>

下面是同一件事的 JavaScript 實現。

```js
var incMat = [
  [0, 1, 1, 1],
  [1, 1, 0, 0],
  [1, 0, 0, 1],
  [0, 0, 1, 0]
];
```

要製作有向圖，請使用`-1`表示離開特定節點的邊，使用`1`作爲邊進入節點。

```js
var incMatDirected = [
  [ 0, -1,  1, -1],
  [-1,  1,  0,  0],
  [ 1,  0,  0,  1],
  [ 0,  0, -1,  0]
];
```

圖也可以在其邊上有 <dfn>權重</dfn>。 到目前爲止，我們有 <dfn>無權重</dfn> 邊，其中邊的存在和缺失是二進制的（`0` 或 `1`）。 根據您的應用，您可以擁有不同的重量。 不同的權重表示爲大於1的數字。

# --instructions--

創建具有五個節點和四個邊的無向圖的關聯矩陣。 該矩陣應該是多維數組。

這五個節點具有以下關係。 第一條邊在第一個和第二個節點之間。 第二條邊在第二個和第三個節點之間。 第三條邊在第三個和第五個節點之間。 第四條邊在第四個節點和第二個節點之間。 所有邊權重都是一，邊順序很重要。

# --hints--

`incMatUndirected` 應該只包含五個節點。

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

第一個和第二個節點之間應該有第一條邊。

```js
assert(incMatUndirected[0][0] === 1 && incMatUndirected[1][0] === 1);
```

第二個和第三個節點之間應該有第二條邊。

```js
assert(incMatUndirected[1][1] === 1 && incMatUndirected[2][1] === 1);
```

第三個和第五個節點之間應該有第三條邊。

```js
assert(incMatUndirected[2][2] === 1 && incMatUndirected[4][2] === 1);
```

第二個和第四個節點之間應該有第四條邊。

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
