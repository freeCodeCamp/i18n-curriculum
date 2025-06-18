---
id: 5900f4291000cf542c50ff3c
title: 'Problem 189: Tri-coloring a triangular grid'
challengeType: 1
forumTopicId: 301825
dashedName: problem-189-tri-colouring-a-triangular-grid
---

# --description--

Considere a seguinte configuração de 64 triângulos:

<img alt="64 triângulos arranjados de modo a criar um triângulo maior com comprimento de lado de 8 triângulos" src="https://cdn.freecodecamp.org/curriculum/project-euler/tri-colouring-a-triangular-grid-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

We wish to color the interior of each triangle with one of three colors: red, green or blue, so that no two neighboring triangles have the same color. Such a coloring shall be called valid. Here, two triangles are said to be neighboring if they share an edge. Note: if they only share a vertex, then they are not neighbors.

For example, here is a valid coloring of the above grid:

<img alt="grade colorida de 64 triângulos" src="https://cdn.freecodecamp.org/curriculum/project-euler/tri-colouring-a-triangular-grid-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

A coloring C' which is obtained from a coloring C by rotation or reflection is considered distinct from C unless the two are identical.

How many distinct valid colorings are there for the above configuration?

# --hints--

`triangularGridColoring()` deve retornar `10834893628237824`.

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
