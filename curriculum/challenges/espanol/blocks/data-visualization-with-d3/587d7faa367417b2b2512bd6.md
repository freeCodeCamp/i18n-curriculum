---
id: 587d7faa367417b2b2512bd6
title: Agrega un cuadro emergente a un elemento D3
challengeType: 6
forumTopicId: 301470
dashedName: add-a-tooltip-to-a-d3-element
---

# --description--

Un cuadro emergente muestra más información acerca de un elemento en la página cuando el usuario se coloca sobre ese elemento. Hay varias formas de añadir una información sobre herramientas a una visualización. Este reto utiliza el elemento SVG `title`.

`title` se empareja con el método `text()` para agregar datos dinámicamente a las barras.

# --instructions--

Añade un elemento `title` debajo de cada nodo `rect`. Luego llama al método `text()` con una función callback para que el texto muestre el valor de los datos.

# --hints--

Tu código debe tener 9 elementos `title`.

```js
assert.lengthOf(document.querySelectorAll('title'), 9);
```

El primer elemento `title` debe tener un cuadro emergente de texto de `12`.

```js
assert.strictEqual(document.querySelectorAll('title')[0]?.textContent, '12');
```

El segundo elemento `title` debe tener un cuadro emergente de texto de `31`.

```js
assert.strictEqual(document.querySelectorAll('title')[1]?.textContent, '31');
```

El tercer elemento `title` debe tener un cuadro emergente de texto de `22`.

```js
assert.strictEqual(document.querySelectorAll('title')[2]?.textContent, '22');
```

El cuarto elemento `title` debe tener un cuadro emergente de texto de `17`.

```js
assert.strictEqual(document.querySelectorAll('title')[3]?.textContent, '17');
```

El quinto elemento `title` debe tener un cuadro emergente de texto de `25`.

```js
assert.strictEqual(document.querySelectorAll('title')[4]?.textContent, '25');
```

El sexto elemento `title` debe tener un cuadro emergente de texto de `18`.

```js
assert.strictEqual(document.querySelectorAll('title')[5]?.textContent, '18');
```

El séptimo elemento `title` debe tener un cuadro emergente de texto de `29`.

```js
assert.strictEqual(document.querySelectorAll('title')[6]?.textContent, '29');
```

El octavo elemento `title` debe tener un cuadro emergente de texto de `14`.

```js
assert.strictEqual(document.querySelectorAll('title')[7]?.textContent, '14');
```

El noveno elemento `title` debe tener un cuadro emergente de texto de `9`.

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
