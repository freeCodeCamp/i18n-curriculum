---
id: 587d7faa367417b2b2512bd6
title: Aggiungere un suggerimento a un elemento D3
challengeType: 6
forumTopicId: 301470
dashedName: add-a-tooltip-to-a-d3-element
---

# --description--

A tooltip shows more information about an item on a page when the user hovers over that item. There are several ways to add a tooltip to a visualization. This challenge uses the SVG `title` element.

`title` va in coppia con il metodo `text()` per aggiungere dinamicamente dati alle barre.

# --instructions--

Aggiungi un elemento `title` sotto ogni nodo `rect`. Quindi chiama il metodo `text()` con una funzione di callback in modo che il testo mostri il valore dei dati.

# --hints--

Il tuo codice dovrebbe avere 9 elementi `title`.

```js
assert.lengthOf(document.querySelectorAll('title'), 9);
```

Il primo elemento `title` dovrebbe avere un testo tooltip di `12`.

```js
assert.strictEqual(document.querySelectorAll('title')[0]?.textContent, '12');
```

Il secondo elemento `title` dovrebbe avere un testo tooltip di `31`.

```js
assert.strictEqual(document.querySelectorAll('title')[1]?.textContent, '31');
```

Il terzo elemento `title` dovrebbe avere un testo tooltip di `22`.

```js
assert.strictEqual(document.querySelectorAll('title')[2]?.textContent, '22');
```

Il quarto elemento `title` dovrebbe avere un testo tooltip di `17`.

```js
assert.strictEqual(document.querySelectorAll('title')[3]?.textContent, '17');
```

Il quinto elemento `title` dovrebbe avere un testo tooltip di `25`.

```js
assert.strictEqual(document.querySelectorAll('title')[4]?.textContent, '25');
```

Il sesto elemento `title` dovrebbe avere un testo tooltip di `18`.

```js
assert.strictEqual(document.querySelectorAll('title')[5]?.textContent, '18');
```

Il settimo elemento `title` dovrebbe avere un testo tooltip di `29`.

```js
assert.strictEqual(document.querySelectorAll('title')[6]?.textContent, '29');
```

L'ottavo elemento `title` dovrebbe avere un testo tooltip di `14`.

```js
assert.strictEqual(document.querySelectorAll('title')[7]?.textContent, '14');
```

Il nono elemento `title` dovrebbe avere un testo tooltip di `9`.

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
