---
id: 587d7fac367417b2b2512bde
title: Usa una escala predefinida para colocar elementos
challengeType: 6
forumTopicId: 301494
dashedName: use-a-pre-defined-scale-to-place-elements
---

# --description--

Con las escalas configuradas, es hora de trazar el diagrama de dispersión nuevamente. Las escalas son como funciones de procesamiento que convierten los datos brutos `x` y `y` en valores que se ajustan y representan correctamente en el SVG. Mantienen los datos dentro del área de trazado de la pantalla.

Establece los valores de los atributos de coordenada para una forma SVG con la función escaladora. Esto incluye los atributos `x` e `y` para `rect` o elementos `text`, o `cx` y `cy` para `circles`. He aquí un ejemplo:

```js
shape.attr('x', d => xScale(d[0]));
```

Las escalas establecen atributos de coordenadas de forma para colocar los puntos de datos en el SVG. No necesitas aplicar escalas cuando muestras el valor del dato real, por ejemplo, en el método `text()` para una descripción o una etiqueta.

# --instructions--

Utiliza `xScale` y `yScale` para colocar las formas `circle` y `text` en el SVG. Para los `circles`, aplica las escalas para establecer los atributos `cx` y `cy`. También, dales un radio de `5` unidades.

Para los elementos `text`, aplica las escalas para establecer los atributos `x` e `y`. Las etiquetas deben ser desplazadas a la derecha de los puntos. Para ello, agrega `10` unidades al valor de datos `x` antes de pasarlo a `xScale`.

# --hints--

Tu código debe tener 10 elementos `circle`.

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

El primer elemento `circle` debe tener un valor `cx` de aproximadamente `91` y un valor `cy` de aproximadamente `368` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const firstCircle = document.querySelectorAll('circle')[0];
assert.strictEqual(Math.round(firstCircle?.getAttribute('cx')), 91);
assert.strictEqual(Math.round(firstCircle?.getAttribute('cy')), 368);
assert.strictEqual(Math.round(firstCircle?.getAttribute('r')), 5);
```

El segundo elemento `circle` debe tener un valor `cx` de aproximadamente `159` y un valor `cy` de aproximadamente `181` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const secondCircle = document.querySelectorAll('circle')[1];
assert.strictEqual(Math.round(secondCircle?.getAttribute('cx')), 159);
assert.strictEqual(Math.round(secondCircle?.getAttribute('cy')), 181);
assert.strictEqual(Math.round(secondCircle?.getAttribute('r')), 5);
```

El tercer elemento `circle` debe tener un valor `cx` de aproximadamente `340` y un valor `cy` de aproximadamente `329` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const thirdCircle = document.querySelectorAll('circle')[2];
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cx')), 340);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cy')), 329);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('r')), 5);
```

El cuarto elemento `circle` debe tener un valor `cx` de aproximadamente `131` y un valor `cy` de aproximadamente `60` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const fourthCircle = document.querySelectorAll('circle')[3];
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cy')), 60);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('r')), 5);
```

El quinto elemento `circle` debe tener un valor `cx` de aproximadamente `440` y un valor `cy` de aproximadamente `237` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const fifthCircle = document.querySelectorAll('circle')[4];
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cx')), 440);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cy')), 237);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('r')), 5);
```

El sexto elemento `circle` debe tener un valor `cx` de aproximadamente `271` y un valor `cy` de aproximadamente `306` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const sixthCircle = document.querySelectorAll('circle')[5];
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cx')), 271);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cy')), 306);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('r')), 5);
```

El séptimo elemento `circle` debe tener un valor `cx` de aproximadamente `361` y un valor `cy` de aproximadamente `351` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const seventhCircle = document.querySelectorAll('circle')[6];
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cx')), 361);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cy')), 351);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('r')), 5);
```

El octavo elemento `circle` debe tener un valor `cx` de aproximadamente `261` y un valor `cy` de aproximadamente `132` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const eighthCircle = document.querySelectorAll('circle')[7];
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cx')), 261);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cy')), 132);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('r')), 5);
```

El noveno elemento `circle` debe tener un valor `cx` de aproximadamente `131` y un valor `cy` de aproximadamente `144` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const ninthCircle = document.querySelectorAll('circle')[8];
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cy')), 144);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('r')), 5);
```

El décimo elemento `circle` debe tener un valor `cx` de aproximadamente `79` y un valor `cy` de aproximadamente `326` luego de aplicar las escalas. También debe tener un valor `r` de `5`.

```js
const tenthCircle = document.querySelectorAll('circle')[9];
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cx')), 79);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cy')), 326);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('r')), 5);
```

Tu código debe tener 10 elementos `text`.

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

La primer etiqueta debe tener un valor `x` de aproximadamente `100` y un valor `y` de aproximadamente `368` luego de aplicar las escalas.

```js
const firstLabel = document.querySelectorAll('text')[0];
assert.strictEqual(Math.round(firstLabel?.getAttribute('x')), 100);
assert.strictEqual(Math.round(firstLabel?.getAttribute('y')), 368);
```

La segunda etiqueta debe tener un valor `x` de aproximadamente `168` y un valor `y` de aproximadamente `181` luego de aplicar las escalas.

```js
const secondLabel = document.querySelectorAll('text')[1];
assert.strictEqual(Math.round(secondLabel?.getAttribute('x')), 168);
assert.strictEqual(Math.round(secondLabel?.getAttribute('y')), 181);
```

La tercer etiqueta debe tener un valor `x` de aproximadamente `350` y un valor `y` de aproximadamente `329` luego de aplicar las escalas.

```js
const thirdLabel = document.querySelectorAll('text')[2];
assert.strictEqual(Math.round(thirdLabel?.getAttribute('x')), 350);
assert.strictEqual(Math.round(thirdLabel?.getAttribute('y')), 329);
```

La cuarta etiqueta debe tener un valor `x` de aproximadamente `141` y un valor `y` de aproximadamente `60` luego de aplicar las escalas.

```js
const fourthLabel = document.querySelectorAll('text')[3];
assert.strictEqual(Math.round(fourthLabel?.getAttribute('x')), 141);
assert.strictEqual(Math.round(fourthLabel?.getAttribute('y')), 60);
```

La quinta etiqueta debe tener un valor `x` de aproximadamente `449` y un valor `y` de aproximadamente `237` luego de aplicar las escalas.

```js
const fifthLabel = document.querySelectorAll('text')[4];
assert.strictEqual(Math.round(fifthLabel?.getAttribute('x')), 449);
assert.strictEqual(Math.round(fifthLabel?.getAttribute('y')), 237);
```

La sexta etiqueta debe tener un valor `x` de aproximadamente `280` y un valor `y` de aproximadamente `306` luego de aplicar las escalas.

```js
const sixthLabel = document.querySelectorAll('text')[5];
assert.strictEqual(Math.round(sixthLabel?.getAttribute('x')), 280);
assert.strictEqual(Math.round(sixthLabel?.getAttribute('y')), 306);
```

La séptima etiqueta debe tener un valor `x` de aproximadamente `370` y un valor `y` de aproximadamente `351` luego de aplicar las escalas.

```js
const seventhLabel = document.querySelectorAll('text')[6];
assert.strictEqual(Math.round(seventhLabel?.getAttribute('x')), 370);
assert.strictEqual(Math.round(seventhLabel?.getAttribute('y')), 351);
```

La octava etiqueta debe tener un valor `x` de aproximadamente `270` y un valor `y` de aproximadamente `132` luego de aplicar las escalas.

```js
const eighthLabel = document.querySelectorAll('text')[7];
assert.strictEqual(Math.round(eighthLabel?.getAttribute('x')), 270);
assert.strictEqual(Math.round(eighthLabel?.getAttribute('y')), 132);
```

La novena etiqueta debe tener un valor `x` de aproximadamente `140` y un valor `y` de aproximadamente `144` luego de aplicar las escalas.

```js
const ninthLabel = document.querySelectorAll('text')[8];
assert.strictEqual(Math.round(ninthLabel?.getAttribute('x')), 140);
assert.strictEqual(Math.round(ninthLabel?.getAttribute('y')), 144);
```

La décima etiqueta debe tener un valor `x` de aproximadamente `88` y un valor `y` de aproximadamente `326` luego de aplicar las escalas.

```js
const tenthLabel = document.querySelectorAll('text')[9];
assert.strictEqual(Math.round(tenthLabel?.getAttribute('x')), 88);
assert.strictEqual(Math.round(tenthLabel?.getAttribute('y')), 326);
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
    const padding = 60;

    const xScale = d3
      .scaleLinear()
      .domain([0, d3.max(dataset, d => d[0])])
      .range([padding, w - padding]);

    const yScale = d3
      .scaleLinear()
      .domain([0, d3.max(dataset, d => d[1])])
      .range([h - padding, padding]);

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg.selectAll('circle').data(dataset).enter().append('circle');
    // Add your code below this line



    // Add your code above this line

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .text(d => d[0] + ', ' + d[1]);
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
    const padding = 60;

    const xScale = d3
      .scaleLinear()
      .domain([0, d3.max(dataset, d => d[0])])
      .range([padding, w - padding]);

    const yScale = d3
      .scaleLinear()
      .domain([0, d3.max(dataset, d => d[1])])
      .range([h - padding, padding]);

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
      .attr('cx', d => xScale(d[0]))
      .attr('cy', d => yScale(d[1]))
      .attr('r', 5);

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .text(d => d[0] + ', ' + d[1])
      .attr('x', d => xScale(d[0] + 10))
      .attr('y', d => yScale(d[1]));
  </script>
</body>
```
