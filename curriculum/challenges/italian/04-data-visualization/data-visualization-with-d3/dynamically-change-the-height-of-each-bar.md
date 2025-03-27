---
id: 587d7fa9367417b2b2512bcf
title: Cambiare dinamicamente l'altezza di ogni barra
challengeType: 6
forumTopicId: 301486
dashedName: dynamically-change-the-height-of-each-bar
---

# --description--

The height of each bar can be set to the value of the data point in the array, similar to how the `x` value was set dynamically.

```js
selection.attr('property', (d, i) => {});
```

Qui `d` sarebbe il valore del punto dati, e `i` sarebbe l'indice del punto di dati nell'array.

# --instructions--

Modifica la funzione di callback per l'attributo altezza `height` in modo che restituisca i valori dei dati moltiplicati per 3.

**Nota:** Ricorda che moltiplicando tutti i punti dati per la stessa costante riscala i dati (come nel fare uno zoom). In questo esempio aiuta a vedere le differenze tra i valori della barra.

# --hints--

Il primo `rect` dovrebbe avere un'altezza `height` di `36`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[0]?.getAttribute('height'),
  '36'
);
```

Il secondo `rect` dovrebbe avere un'altezza `height` di `93`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[1]?.getAttribute('height'),
  '93'
);
```

Il terzo `rect` dovrebbe avere un'altezza `height` di `66`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[2]?.getAttribute('height'),
  '66'
);
```

Il quarto `rect` dovrebbe avere un'altezza `height` di `51`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[3]?.getAttribute('height'),
  '51'
);
```

Il quinto `rect` dovrebbe avere un'altezza `height` di `75`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[4]?.getAttribute('height'),
  '75'
);
```

Il sesto`rect` dovrebbe avere un'altezza `height` di `54`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[5]?.getAttribute('height'),
  '54'
);
```

Il settimo `rect` dovrebbe avere un'altezza `height` di `87`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[6]?.getAttribute('height'),
  '87'
);
```

L'ottavo `rect` dovrebbe avere un'altezza `height` di `42`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[7]?.getAttribute('height'),
  '42'
);
```

Il nono `rect` dovrebbe avere un'altezza `height` di `27`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[8]?.getAttribute('height'),
  '27'
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
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', (d, i) => {
        // Add your code below this line




        // Add your code above this line
      });
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
      .attr('x', (d, i) => i * 30)
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', (d, i) => {
        return d * 3;
      });
  </script>
</body>
```
