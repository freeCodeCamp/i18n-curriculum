---
id: 587d7fab367417b2b2512bd9
title: Añade etiquetas a un diagrama de dispersión
challengeType: 6
forumTopicId: 301477
dashedName: add-labels-to-scatter-plot-circles
---

# --description--

Puedes agregar texto para crear etiquetas para los puntos en un diagrama de dispersión.

El objetivo es mostrar los valores separados por coma del primer (`x`) y segundo (`y`) campo de cada elemento en `dataset`.

Los nodos `text` necesitan atributos `x` y `y` para posicionarse en el SVG. En este desafío, el valor `y` (que determina la altura) puede usar el mismo valor que el `circle` usa para su atributo `cy`. El valor `x` puede ser ligeramente mayor que el valor `cx` del `circle` para que la etiqueta sea visible. Esto empujará la etiqueta a la derecha del punto trazado.

# --instructions--

Etiqueta cada punto en el diagrama de dispersión usando los elementos `text`. El texto de la etiqueta debe ser los valores separados por una coma y un espacio. Por ejemplo, la etiqueta para el primer punto es `34, 78`. Establece el atributo `x` para que sea `5` unidades mayor que el valor que utilizaste para el atributo `cx` en el `circle`. Establece el atributo `y` de la misma manera que se usa para el valor `cy` en el `circle`.

# --hints--

Tu código debe tener 10 elementos `text`.

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

La primera etiqueta debe tener como texto `34, 78`, un valor de `x` de `39`, y un valor de `y` de `422`.

```js
const labelOne = document.querySelector('text');
assert.strictEqual(labelOne?.textContent, '34, 78');
assert.strictEqual(labelOne?.getAttribute('x'), '39');
assert.strictEqual(labelOne?.getAttribute('y'), '422');
```

La segunda etiqueta debe tener como texto `109, 280`, un valor de `x` de `114`, y un valor de `y` de `220`.

```js
const labelTwo = document.querySelectorAll('text')[1];
assert.strictEqual(labelTwo?.textContent, '109, 280');
assert.strictEqual(labelTwo?.getAttribute('x'), '114');
assert.strictEqual(labelTwo?.getAttribute('y'), '220');
```

La tercera etiqueta debe tener como texto `310, 120`, un valor de `x` de `315`, y un valor de `y` de `380`.

```js
const labelThree = document.querySelectorAll('text')[2];
assert.strictEqual(labelThree?.textContent, '310, 120');
assert.strictEqual(labelThree?.getAttribute('x'), '315');
assert.strictEqual(labelThree?.getAttribute('y'), '380');
```

La cuarta etiqueta debe tener como texto `79, 411`, un valor de `x` de `84`, y un valor de `y` de `89`.

```js
const labelFour = document.querySelectorAll('text')[3];
assert.strictEqual(labelFour?.textContent, '79, 411');
assert.strictEqual(labelFour?.getAttribute('x'), '84');
assert.strictEqual(labelFour?.getAttribute('y'), '89');
```

La quinta etiqueta debe tener como texto `420, 220`, un valor de `x` de `425`, y un valor de `y` de `280`.

```js
const labelFive = document.querySelectorAll('text')[4];
assert.strictEqual(labelFive?.textContent, '420, 220');
assert.strictEqual(labelFive?.getAttribute('x'), '425');
assert.strictEqual(labelFive?.getAttribute('y'), '280');
```

La sexta etiqueta debe tener como texto `233, 145`, un valor de `x` de `238`, y un valor de `y` de `355`.

```js
const labelSix = document.querySelectorAll('text')[5];
assert.strictEqual(labelSix?.textContent, '233, 145');
assert.strictEqual(labelSix?.getAttribute('x'), '238');
assert.strictEqual(labelSix?.getAttribute('y'), '355');
```

La séptima etiqueta debe tener como texto `333, 96`, un valor de `x` de `338`, y un valor de `y` de `404`.

```js
const labelSeven = document.querySelectorAll('text')[6];
assert.strictEqual(labelSeven?.textContent, '333, 96');
assert.strictEqual(labelSeven?.getAttribute('x'), '338');
assert.strictEqual(labelSeven?.getAttribute('y'), '404');
```

La octava etiqueta debe tener como texto `222, 333`, un valor de `x` de `227`, y un valor de `y` de `167`.

```js
const labelEight = document.querySelectorAll('text')[7];
assert.strictEqual(labelEight?.textContent, '222, 333');
assert.strictEqual(labelEight?.getAttribute('x'), '227');
assert.strictEqual(labelEight?.getAttribute('y'), '167');
```

La novena etiqueta debe tener como texto `78, 320`, un valor de `x` de `83`, y un valor de `y` de `180`.

```js
const labelNine = document.querySelectorAll('text')[8];
assert.strictEqual(labelNine?.textContent, '78, 320');
assert.strictEqual(labelNine?.getAttribute('x'), '83');
assert.strictEqual(labelNine?.getAttribute('y'), '180');
```

La décima etiqueta debe tener como texto `21, 123`, un valor de `x` de `26`, y un valor de `y` de `377`.

```js
const labelTen = document.querySelectorAll('text')[9];
assert.strictEqual(labelTen?.textContent, '21, 123');
assert.strictEqual(labelTen?.getAttribute('x'), '26');
assert.strictEqual(labelTen?.getAttribute('y'), '377');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [
      [34, 78],
      [109, 280],
      [310, 120],
      [79, 411],
      [420, 220],
      [233, 145],
      [333, 96],
      [222, 333],
      [78, 320],
      [21, 123]
    ];

    const w = 500;
    const h = 500;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('circle')
      .data(dataset)
      .enter()
      .append('circle')
      .attr('cx', (d, i) => d[0])
      .attr('cy', (d, i) => h - d[1])
      .attr('r', 5);

    svg.selectAll('text').data(dataset).enter().append('text');
    // Add your code below this line



    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [
      [34, 78],
      [109, 280],
      [310, 120],
      [79, 411],
      [420, 220],
      [233, 145],
      [333, 96],
      [222, 333],
      [78, 320],
      [21, 123]
    ];

    const w = 500;
    const h = 500;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('circle')
      .data(dataset)
      .enter()
      .append('circle')
      .attr('cx', (d, i) => d[0])
      .attr('cy', (d, i) => h - d[1])
      .attr('r', 5);

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .attr('x', d => d[0] + 5)
      .attr('y', d => h - d[1])
      .text(d => d[0] + ', ' + d[1]);
  </script>
</body>
```
