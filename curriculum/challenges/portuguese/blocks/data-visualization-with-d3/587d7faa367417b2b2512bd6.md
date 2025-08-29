---
id: 587d7faa367417b2b2512bd6
title: Adicionar uma dica a um elemento D3
challengeType: 6
forumTopicId: 301470
dashedName: add-a-tooltip-to-a-d3-element
---

# --description--

A tooltip shows more information about an item on a page when the user hovers over that item. There are several ways to add a tooltip to a visualization. This challenge uses the SVG `title` element.

`title` está junto com o método `text()` para adicionar dinamicamente dados às barras.

# --instructions--

Acrescente um elemento `title` sob cada nó de `rect`. Em seguida, chame o método `text()` com uma função de callback para que o texto mostre o valor dos dados.

# --hints--

O código deve ter 9 elementos `title`.

```js
assert.lengthOf(document.querySelectorAll('title'), 9);
```

O primeiro elemento `title` deve ter o texto de dica `12`.

```js
assert.strictEqual(document.querySelectorAll('title')[0]?.textContent, '12');
```

O segundo elemento `title` deve ter o texto de dica `31`.

```js
assert.strictEqual(document.querySelectorAll('title')[1]?.textContent, '31');
```

O terceiro elemento `title` deve ter o texto de dica `22`.

```js
assert.strictEqual(document.querySelectorAll('title')[2]?.textContent, '22');
```

O quarto elemento `title` deve ter o texto de dica `17`.

```js
assert.strictEqual(document.querySelectorAll('title')[3]?.textContent, '17');
```

O quinto elemento `title` deve ter o texto de dica `25`.

```js
assert.strictEqual(document.querySelectorAll('title')[4]?.textContent, '25');
```

O sexto elemento `title` deve ter o texto de dica `18`.

```js
assert.strictEqual(document.querySelectorAll('title')[5]?.textContent, '18');
```

O sétimo elemento `title` deve ter o texto de dica `29`.

```js
assert.strictEqual(document.querySelectorAll('title')[6]?.textContent, '29');
```

O oitavo elemento `title` deve ter o texto de dica `14`.

```js
assert.strictEqual(document.querySelectorAll('title')[7]?.textContent, '14');
```

O nono elemento `title` deve ter o texto de dica `9`.

```js
assert.strictEqual(document.querySelectorAll('title')[8]?.textContent, '9');
```

# --seed--

## --seed-contents--

```html
<style>
  .bar:hover {
    fill: brown;
  }
</style>
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('rect')
      .data(dataset)
      .enter()
      .append('rect')
      .attr('x', (d, i) => i * 30)
      .attr('y', (d, i) => h - 3 * d)
      .attr('width', 25)
      .attr('height', (d, i) => d * 3)
      .attr('fill', 'navy')
      .attr('class', 'bar');
    // Add your code below this line



    // Add your code above this line

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .text(d => d)
      .attr('x', (d, i) => i * 30)
      .attr('y', (d, i) => h - (d * 3 + 3));
  </script>
</body>
```

# --solutions--

```html
<style>
  .bar:hover {
    fill: brown;
  }
</style>
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('rect')
      .data(dataset)
      .enter()
      .append('rect')
      .attr('x', (d, i) => i * 30)
      .attr('y', (d, i) => h - 3 * d)
      .attr('width', 25)
      .attr('height', (d, i) => d * 3)
      .attr('fill', 'navy')
      .attr('class', 'bar')
      .append('title')
      .text(d => d);

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .text(d => d)
      .attr('x', (d, i) => i * 30)
      .attr('y', (d, i) => h - (d * 3 + 3));
  </script>
</body>
```
