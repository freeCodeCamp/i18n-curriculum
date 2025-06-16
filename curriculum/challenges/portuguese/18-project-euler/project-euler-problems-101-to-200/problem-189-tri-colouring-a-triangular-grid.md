---
id: 5900f4291000cf542c50ff3c
title: 'Problema 189: Colorização tripla de uma grade triangular'
challengeType: 1
forumTopicId: 301825
dashedName: problem-189-tri-colouring-a-triangular-grid
---

# --description--

Considere a seguinte configuração de 64 triângulos:

<img alt="64 triângulos arranjados de modo a criar um triângulo maior com comprimento de lado de 8 triângulos" src="https://cdn.freecodecamp.org/curriculum/project-euler/tri-colouring-a-triangular-grid-1.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

We wish to colour the interior of each triangle with one of three colours: red, green or blue, so that no two neighboring triangles have the same colour. Essa colorização será considerada válida. Here, two triangles are said to be neighboring if they share an edge. Note: if they only share a vertex, then they are not neighbors.

Por exemplo, aqui está uma colorização válida para a grade acima:

<img alt="grade colorida de 64 triângulos" src="https://cdn.freecodecamp.org/curriculum/project-euler/tri-colouring-a-triangular-grid-2.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Uma colorização C', que é obtida a partir de uma colorização C por rotação ou reflexão, é considerada diferente de C, a menos que ambas sejam idênticas.

Quantas colorizações válidas distintas existem para a configuração acima?

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
