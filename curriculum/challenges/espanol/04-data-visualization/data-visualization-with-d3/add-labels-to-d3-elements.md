---
id: 587d7faa367417b2b2512bd2
title: Agrega etiquetas a elementos D3
challengeType: 6
forumTopicId: 301476
dashedName: add-labels-to-d3-elements
---

# --description--

D3 te permite etiquetar un elemento gráfico, como una barra, usando el elemento SVG `text`.

Al igual que el elemento `rect`, un elemento `text` necesita tener atributos `x` y `y`, para colocarlo en el SVG. También necesita acceso a los datos para mostrar los valores.

D3 te da un nivel de control alto sobre cómo etiquetas tus barras.

# --instructions--

El código en el editor ya vincula los datos a cada nuevo elemento `text`. Primero, añade nodos `text` a el `svg`. Luego, agrega atributos para las coordenadas `x` e `y`. Deben ser calculadas de la misma forma que las de `rect`, excepto el valor `y` para el `text`. Este debe hacer que la etiqueta se ubique 3 unidades más alto que la barra. Finalmente, usa el método de D3 `text()` para establecer la etiqueta igual al valor del punto de datos.

**Nota:** Para que la etiqueta se ubique arriba de la barra, decide si el valor `y` para el `text` debe ser 3 más o 3 menos que el valor `y` de la barra.

# --hints--

El primer elemento `text` debe tener una etiqueta de `12` y un valor `y` de `61`.

```js
assert.strictEqual(document.querySelectorAll('text')[0]?.textContent, '12');
assert.strictEqual(
  document.querySelectorAll('text')[0]?.getAttribute('y'),
  '61'
);
```

El segundo elemento `text` debe tener una etiqueta de `31` y un valor `y` de `4`.

```js
assert.strictEqual(document.querySelectorAll('text')[1]?.textContent, '31');
assert.strictEqual(
  document.querySelectorAll('text')[1]?.getAttribute('y'),
  '4'
);
```

El tercer elemento `text` debe tener una etiqueta de `22` y un valor `y` de `31`.

```js
assert.strictEqual(document.querySelectorAll('text')[2]?.textContent, '22');
assert.strictEqual(
  document.querySelectorAll('text')[2]?.getAttribute('y'),
  '31'
);
```

El cuarto elemento `text` debe tener una etiqueta de `17` y un valor `y` de `46`.

```js
assert.strictEqual(document.querySelectorAll('text')[3]?.textContent, '17');
assert.strictEqual(
  document.querySelectorAll('text')[3]?.getAttribute('y'),
  '46'
);
```

El quinto elemento `text` debe tener una etiqueta de `25` y un valor `y` de `22`.

```js
assert.strictEqual(document.querySelectorAll('text')[4]?.textContent, '25');
assert.strictEqual(
  document.querySelectorAll('text')[4]?.getAttribute('y'),
  '22'
);
```

El sexto elemento `text` debe tener una etiqueta de `18` y un valor `y` de `43`.

```js
assert.strictEqual(document.querySelectorAll('text')[5]?.textContent, '18');
assert.strictEqual(
  document.querySelectorAll('text')[5]?.getAttribute('y'),
  '43'
);
```

El séptimo elemento `text` debe tener una etiqueta de `29` y un valor `y` de `10`.

```js
assert.strictEqual(document.querySelectorAll('text')[6]?.textContent, '29');
assert.strictEqual(
  document.querySelectorAll('text')[6]?.getAttribute('y'),
  '10'
);
```

El octavo elemento `text` debe tener una etiqueta de `14` y un valor `y` de `55`.

```js
assert.strictEqual(document.querySelectorAll('text')[7]?.textContent, '14');
assert.strictEqual(
  document.querySelectorAll('text')[7]?.getAttribute('y'),
  '55'
);
```

El noveno elemento `text` debe tener una etiqueta de `9` y un valor `y` de `70`.

```js
assert.strictEqual(document.querySelectorAll('text')[8]?.textContent, '9');
assert.strictEqual(
  document.querySelectorAll('text')[8]?.getAttribute('y'),
  '70'
);
```

# --seed--

## --seed-contents--

```html
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
      .attr('height', (d, i) => 3 * d)
      .attr('fill', 'navy');

    svg.selectAll('text').data(dataset).enter();
    // Add your code below this line




    // Add your code above this line
  </script>
  <body></body>
</body>
```

# --solutions--

```html
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
      .attr('height', (d, i) => 3 * d)
      .attr('fill', 'navy');

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .attr('x', (d, i) => i * 30)
      .attr('y', (d, i) => h - 3 * d - 3)
      .text(d => d);
  </script>
  <body></body>
</body>
```
