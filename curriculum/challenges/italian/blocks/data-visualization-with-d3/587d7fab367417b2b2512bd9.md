---
id: 587d7fab367417b2b2512bd9
title: Aggiungere etichette ai grafici a dispersione
challengeType: 6
forumTopicId: 301477
dashedName: add-labels-to-scatter-plot-circles
---

# --description--

You can add text to create labels for the points in a scatter plot.

L'obiettivo è quello di visualizzare i valori separati da virgole per il primo campo (`x`) e il secondo campo (`y`) di ogni elemento nel `dataset`.

I nodi `text` hanno bisogno di attributi `x` e `y` per essere posizionati sull'SVG. In questa sfida, il valore `y` (che determina l'altezza) può usare lo stesso valore che il `circle` utilizza per il suo attributo `cy`. Il valore `x` può essere leggermente più grande del valore `cx` del `circle`, in modo che l'etichetta sia visibile. Questo sposterà l'etichetta a destra del punto tracciato.

# --instructions--

Etichetta ogni punto sul grafico a dispersione utilizzando gli elementi `text`. Il testo dell'etichetta dovrebbe essere composto dai due valori separati da una virgola e uno spazio. Ad esempio, l'etichetta per il primo punto è `34, 78`. Imposta l'attributo `x` in modo che sia `5` unità più grande del valore che hai usato per l'attributo `cx` sul `circle`. Imposta l'attributo `y` come già fatto per il valore `cy` sul `circle`.

# --hints--

Il tuo codice dovrebbe avere 10 elementi `text`.

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

La prima etichetta dovrebbe avere il testo di `34, 78`, un valore `x` di `39`, e un valore `y` di `422`.

```js
const labelOne = document.querySelector('text');
assert.strictEqual(labelOne?.textContent, '34, 78');
assert.strictEqual(labelOne?.getAttribute('x'), '39');
assert.strictEqual(labelOne?.getAttribute('y'), '422');
```

La seconda etichetta dovrebbe avere il testo di `109, 280`, un valore `x` di `114`, e un valore `y` di `220`.

```js
const labelTwo = document.querySelectorAll('text')[1];
assert.strictEqual(labelTwo?.textContent, '109, 280');
assert.strictEqual(labelTwo?.getAttribute('x'), '114');
assert.strictEqual(labelTwo?.getAttribute('y'), '220');
```

La terza etichetta dovrebbe avere il testo di `310, 120`, un valore `x` di `315`, e un valore `y` di `380`.

```js
const labelThree = document.querySelectorAll('text')[2];
assert.strictEqual(labelThree?.textContent, '310, 120');
assert.strictEqual(labelThree?.getAttribute('x'), '315');
assert.strictEqual(labelThree?.getAttribute('y'), '380');
```

La quarta etichetta dovrebbe avere il testo di `79, 411`, un valore `x` di `84`, e un valore `y` di `89`.

```js
const labelFour = document.querySelectorAll('text')[3];
assert.strictEqual(labelFour?.textContent, '79, 411');
assert.strictEqual(labelFour?.getAttribute('x'), '84');
assert.strictEqual(labelFour?.getAttribute('y'), '89');
```

La quinta etichetta dovrebbe avere il testo di `420, 220`, un valore `x` di `425`, e un valore `y` di `280`.

```js
const labelFive = document.querySelectorAll('text')[4];
assert.strictEqual(labelFive?.textContent, '420, 220');
assert.strictEqual(labelFive?.getAttribute('x'), '425');
assert.strictEqual(labelFive?.getAttribute('y'), '280');
```

La sesta etichetta dovrebbe avere il testo di `233, 145`, un valore `x` di `238`, e un valore `y` di `355`.

```js
const labelSix = document.querySelectorAll('text')[5];
assert.strictEqual(labelSix?.textContent, '233, 145');
assert.strictEqual(labelSix?.getAttribute('x'), '238');
assert.strictEqual(labelSix?.getAttribute('y'), '355');
```

La settima etichetta dovrebbe avere il testo di `333, 96`, un valore `x` di `338`, e un valore `y` di `404`.

```js
const labelSeven = document.querySelectorAll('text')[6];
assert.strictEqual(labelSeven?.textContent, '333, 96');
assert.strictEqual(labelSeven?.getAttribute('x'), '338');
assert.strictEqual(labelSeven?.getAttribute('y'), '404');
```

L'ottava etichetta dovrebbe avere il testo di `222, 333`, un valore `x` di `227`, e un valore `y` di `167`.

```js
const labelEight = document.querySelectorAll('text')[7];
assert.strictEqual(labelEight?.textContent, '222, 333');
assert.strictEqual(labelEight?.getAttribute('x'), '227');
assert.strictEqual(labelEight?.getAttribute('y'), '167');
```

La nona etichetta dovrebbe avere il testo di `78, 320`, un valore `x` di `83`, e un valore `y` di `180`.

```js
const labelNine = document.querySelectorAll('text')[8];
assert.strictEqual(labelNine?.textContent, '78, 320');
assert.strictEqual(labelNine?.getAttribute('x'), '83');
assert.strictEqual(labelNine?.getAttribute('y'), '180');
```

La decima etichetta dovrebbe avere il testo di `21, 123`, un valore `x` di `26`, e un valore `y` di `377`.

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
