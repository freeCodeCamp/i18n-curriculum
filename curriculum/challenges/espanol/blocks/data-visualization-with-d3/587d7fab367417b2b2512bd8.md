---
id: 587d7fab367417b2b2512bd8
title: Añade atributos a los elementos del círculo
challengeType: 6
forumTopicId: 301471
dashedName: add-attributes-to-the-circle-elements
---

# --description--

En el último reto se han creado los elementos `circle` para cada punto del `dataset` y se han añadido al SVG. Pero D3 necesita más información sobre la posición y el tamaño de cada `circle` para mostrarlos correctamente.

Un `circle` en SVG tiene tres atributos principales. Los atributos `cx` y `cy` son las coordenadas. They tell D3 where to position the _center_ of the shape on the SVG. El radio (atributo `r`) da el tamaño del `circle`.

Al igual que la coordenada `rect` `y`, el atributo `cy` de un `circle` se mide desde la parte superior del SVG, no desde la inferior.

Los tres atributos pueden usar una función callback para establecer sus valores de forma dinámica. Recuerda que todos los métodos encadenados después de `data(dataset)` se ejecutan una vez por elemento en `dataset`. El parámetro `d` en la función callback se refiere al elemento actual en `dataset`, que es un arreglo para cada punto. Utiliza la notación de corchetes, como `d[0]`, para acceder a los valores de ese arreglo.

# --instructions--

Agrega los atributos `cx`, `cy` y `r` a los elementos `circle`. El valor de `cx` debe ser el primer número en el arreglo para cada elemento en `dataset`. El valor de `cy` debe basarse en el segundo número del arreglo, pero asegúrese de mostrar el gráfico del lado derecho hacia arriba y no invertido. El valor de `r` debe ser `5` para todos los círculos.

# --hints--

Tu código debe tener 10 elementos `circle`.

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

El primer elemento `circle` debe tener un `cx` con valor de `34`, un `cy` con valor de `422` y un `r` con valor de `5`.

```js
const circle1 = document.querySelector('circle');
assert.strictEqual(circle1?.getAttribute('cx'), '34');
assert.strictEqual(circle1?.getAttribute('cy'), '422');
assert.strictEqual(circle1?.getAttribute('r'), '5');
```

El segundo elemento `circle` debe tener un `cx` con valor de `109`, un `cy` con valor de `220` y un `r` con valor de `5`.

```js
const circle2 = document.querySelectorAll('circle')[1];
assert.strictEqual(circle2?.getAttribute('cx'), '109');
assert.strictEqual(circle2?.getAttribute('cy'), '220');
assert.strictEqual(circle2?.getAttribute('r'), '5');
```

El tercer elemento `circle` debe tener un `cx` con valor de `310`, un `cy` con valor de `380` y un `r` con valor de `5`.

```js
const circle3 = document.querySelectorAll('circle')[2];
assert.strictEqual(circle3?.getAttribute('cx'), '310');
assert.strictEqual(circle3?.getAttribute('cy'), '380');
assert.strictEqual(circle3?.getAttribute('r'), '5');
```

El cuarto elemento `circle` debe tener un `cx` valor de `79`, un `cy` valor de `89` y un `r` valor de `5`.

```js
const circle4 = document.querySelectorAll('circle')[3];
assert.strictEqual(circle4?.getAttribute('cx'), '79');
assert.strictEqual(circle4?.getAttribute('cy'), '89');
assert.strictEqual(circle4?.getAttribute('r'), '5');
```

El quinto elemento `circle` debe tener un `cx` valor de `420`, un `cy` valor de `280` y un `r` valor de `5`.

```js
const circle5 = document.querySelectorAll('circle')[4];
assert.strictEqual(circle5?.getAttribute('cx'), '420');
assert.strictEqual(circle5?.getAttribute('cy'), '280');
assert.strictEqual(circle5?.getAttribute('r'), '5');
```

El sexto elemento `circle` debe tener un `cx` con valor de `233`, un `cy` con valor de `355` y un `r` con valor de `5`.

```js
const circle6 = document.querySelectorAll('circle')[5];
assert.strictEqual(circle6?.getAttribute('cx'), '233');
assert.strictEqual(circle6?.getAttribute('cy'), '355');
assert.strictEqual(circle6?.getAttribute('r'), '5');
```

El séptimo elemento `circle` debe tener un `cx` con valor de `333`, un `cy` con valor de `404` y un `r` con valor de `5`.

```js
const circle7 = document.querySelectorAll('circle')[6];
assert.strictEqual(circle7?.getAttribute('cx'), '333');
assert.strictEqual(circle7?.getAttribute('cy'), '404');
assert.strictEqual(circle7?.getAttribute('r'), '5');
```

El octavo elemento `circle` debe tener un `cx` con valor de `222`, un `cy` con valor de `167` y un `r` con valor de `5`.

```js
const circle8 = document.querySelectorAll('circle')[7];
assert.strictEqual(circle8?.getAttribute('cx'), '222');
assert.strictEqual(circle8?.getAttribute('cy'), '167');
assert.strictEqual(circle8?.getAttribute('r'), '5');
```

El noveno elemento `circle` debe tener un `cx` con valor de `78`, un `cy` con valor de `180` y un `r` con valor de `5`.

```js
const circle9 = document.querySelectorAll('circle')[8];
assert.strictEqual(circle9?.getAttribute('cx'), '78');
assert.strictEqual(circle9?.getAttribute('cy'), '180');
assert.strictEqual(circle9?.getAttribute('r'), '5');
```

El décimo elemento `circle` debe tener un `cx` con valor de `21`, un `cy` con valor de `377` y un `r` con valor de `5`.

```js
const circle10 = document.querySelectorAll('circle')[9];
assert.strictEqual(circle10?.getAttribute('cx'), '21');
assert.strictEqual(circle10?.getAttribute('cy'), '377');
assert.strictEqual(circle10?.getAttribute('r'), '5');
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

    svg.selectAll('circle').data(dataset).enter().append('circle');
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
      .attr('cx', d => d[0])
      .attr('cy', d => h - d[1])
      .attr('r', 5);
  </script>
</body>
```
