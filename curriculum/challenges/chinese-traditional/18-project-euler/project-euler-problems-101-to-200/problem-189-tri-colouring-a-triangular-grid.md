---
id: 5900f4291000cf542c50ff3c
title: '問題189：三色填充三角網格'
challengeType: 1
forumTopicId: 301825
dashedName: problem-189-tri-colouring-a-triangular-grid
---

# --description--

Consider the following configuration of 64 triangles:

<img alt="由64個小三角形組成的邊長爲8個小三角形的大三角形" src="https://cdn.freecodecamp.org/curriculum/project-euler/tri-colouring-a-triangular-grid-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

We wish to colour the interior of each triangle with one of three colours: red, green or blue, so that no two neighboring triangles have the same colour. 這樣的着色稱之爲有效着色。 Here, two triangles are said to be neighboring if they share an edge. Note: if they only share a vertex, then they are not neighbors.

例如，以下是上面網格的有效着色：

<img alt="着好色的64個小三角形" src="https://cdn.freecodecamp.org/curriculum/project-euler/tri-colouring-a-triangular-grid-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

除非兩者完全相同，將着色方案C旋轉或對稱得到的着色方案C‘仍爲有效着色。

上述三角佈局一共有多少種不同的有效着色方案？

# --hints--

`triangularGridColoring()` 應該返回 `10834893628237824`.

```js
assert.strictEqual(triangularGridColoring(), 10834893628237824);
```

# --seed--

## --seed-contents--

```js
function triangularGridColoring() {

  return true;
}

triangularGridColoring();
```

# --solutions--

```js
// solution required
```
