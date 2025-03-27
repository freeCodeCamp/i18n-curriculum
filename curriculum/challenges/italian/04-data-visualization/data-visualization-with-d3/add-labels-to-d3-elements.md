---
id: 587d7faa367417b2b2512bd2
title: Aggiungere etichette agli elementi D3
challengeType: 6
forumTopicId: 301476
dashedName: add-labels-to-d3-elements
---

# --description--

D3 lets you label a graph element, such as a bar, using the SVG `text` element.

Come l'elemento `rect`, un elemento `text` deve avere attributi `x` e `y`, per essere posizionato sull'SVG. Deve inoltre accedere ai dati per visualizzare tali valori.

D3 ti dà un alto livello di controllo su come etichettare le tue barre.

# --instructions--

Il codice nell'editor lega già i dati a ogni nuovo elemento `text`. Innanzitutto, aggiungi dei nodi `text` all'`svg`. Successivamente, aggiungi gli attributi per le coordinate `x` e `y`. Esse dovrebbero essere calcolate allo stesso modo di quelle per il `rect`, a parte il fatto che il valore `y` per il `text` dovrebbe posizionare l'etichetta tre unità più in altro rispetto alla barra. Infine, utilizza il metodo D3 `text()` per impostare l'etichetta uguale al valore del data point.

**Nota:** Per fare in modo che l'etichetta stia più in alto della barra, decidi se il valore `y` per il `text` dovrebbe essere maggiore o minore di 3 rispetto al valore `y` della barra.

# --hints--

Il primo elemento `text` dovrebbe avere un'etichetta di `12` e un valore `y` di `61`.

```js
assert.strictEqual(document.querySelectorAll('text')[0]?.textContent, '12');
assert.strictEqual(
  document.querySelectorAll('text')[0]?.getAttribute('y'),
  '61'
);
```

Il secondo elemento `text` dovrebbe avere un'etichetta di `31` e un valore `y` di `4`.

```js
assert.strictEqual(document.querySelectorAll('text')[1]?.textContent, '31');
assert.strictEqual(
  document.querySelectorAll('text')[1]?.getAttribute('y'),
  '4'
);
```

Il terzo elemento `text` dovrebbe avere un'etichetta di `22` e un valore `y` di `31`.

```js
assert.strictEqual(document.querySelectorAll('text')[2]?.textContent, '22');
assert.strictEqual(
  document.querySelectorAll('text')[2]?.getAttribute('y'),
  '31'
);
```

Il quarto elemento `text` dovrebbe avere un'etichetta di `17` e un valore `y` di `46`.

```js
assert.strictEqual(document.querySelectorAll('text')[3]?.textContent, '17');
assert.strictEqual(
  document.querySelectorAll('text')[3]?.getAttribute('y'),
  '46'
);
```

Il quinto elemento `text` dovrebbe avere un'etichetta di `25` e un valore `y` di `22`.

```js
assert.strictEqual(document.querySelectorAll('text')[4]?.textContent, '25');
assert.strictEqual(
  document.querySelectorAll('text')[4]?.getAttribute('y'),
  '22'
);
```

Il sesto elemento `text` dovrebbe avere un'etichetta di `18` e un valore `y` di `43`.

```js
assert.strictEqual(document.querySelectorAll('text')[5]?.textContent, '18');
assert.strictEqual(
  document.querySelectorAll('text')[5]?.getAttribute('y'),
  '43'
);
```

Il settimo elemento `text` dovrebbe avere un'etichetta di `29` e un valore `y` di `10`.

```js
assert.strictEqual(document.querySelectorAll('text')[6]?.textContent, '29');
assert.strictEqual(
  document.querySelectorAll('text')[6]?.getAttribute('y'),
  '10'
);
```

L'ottavo elemento `text` dovrebbe avere un'etichetta di `14` e un valore `y` di `55`.

```js
assert.strictEqual(document.querySelectorAll('text')[7]?.textContent, '14');
assert.strictEqual(
  document.querySelectorAll('text')[7]?.getAttribute('y'),
  '55'
);
```

Il nono elemento `text` dovrebbe avere un'etichetta di `9` e un valore `y` di `70`.

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
