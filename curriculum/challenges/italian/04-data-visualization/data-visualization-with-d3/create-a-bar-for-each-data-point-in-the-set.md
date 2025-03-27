---
id: 587d7fa8367417b2b2512bcd
title: Creare una barra per ogni punto di dati nell'insieme
challengeType: 6
forumTopicId: 301482
dashedName: create-a-bar-for-each-data-point-in-the-set
---

# --description--

The last challenge added only one rectangle to the `svg` element to represent a bar. Here, you'll combine what you've learned so far about `data()`, `enter()`, and SVG shapes to create and append a rectangle for each data point in `dataset`.

Una sfida precedente ha mostrato il modo per creare e aggiungere un `div` per ogni elemento del `dataset`:

```js
d3.select('body')?.selectAll('div').data(dataset).enter().append('div');
```

Ci sono alcune differenze nel lavorare con gli elementi `rect` invece che con gli elementi `div`. Gli elementi `rect` devono essere aggiunti ad un elemento `svg`, non direttamente al `body`. Inoltre, devi dire a D3 dove posizionare ogni `rect` all'interno dell'area `svg`. Il posizionamento della barra sarà coperto nella prossima sfida.

# --instructions--

Usa i metodi `data()`, `enter()`, e `append()` per creare e aggiungere un `rect` per ogni elemento nel `dataset`. Le barre verranno tutte visualizzate l'una sopra l'altra; questo sarà risolto nella prossima sfida.

# --hints--

Il tuo documento dovrebbe avere 9 elementi `rect`.

```js
assert.lengthOf(document.querySelectorAll('rect'), 9);
```

Il tuo codice dovrebbe usare il metodo `data()`.

```js
assert.match(code, /\.data/g);
```

Il tuo codice dovrebbe utilizzare il metodo `enter()`.

```js
assert.match(code, /\.enter/g);
```

Il tuo codice dovrebbe usare il metodo `append()`.

```js
assert.match(code, /\.append/g);
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
      // Add your code below this line

      // Add your code above this line
      .attr('x', 0)
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', 100);
  </script>
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
      .attr('x', 0)
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', 100);
  </script>
</body>
```
