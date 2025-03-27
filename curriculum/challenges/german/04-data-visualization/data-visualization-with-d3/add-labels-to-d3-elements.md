---
id: 587d7faa367417b2b2512bd2
title: Füge Label zu den D3 Elementen hinzu
challengeType: 6
forumTopicId: 301476
dashedName: add-labels-to-d3-elements
---

# --description--

D3 lets you label a graph element, such as a bar, using the SVG `text` element.

Wie beim `rect`-Element benötigt ein `text`-Element `x`- und `y`-Attribute, um auf dem SVG platziert werden zu können. Es muss auch auf die Daten zugreifen, um diese Werte anzuzeigen.

D3 gibt dir ein hohes Maß an Kontrolle darüber, wie du deine Balken kennzeichnen kannst.

# --instructions--

Der Code im Editor bindet die Daten bereits an jedes neue `text`-Element. Hänge zuerst `text`-Knoten an `svg` an. Füge als nächstes die Attribute für die Koordinaten `x` und `y` hinzu. Sie sollten genauso wie die `rect`-Elemente berechnet werden, außer, dass der `y`-Wert für den `text` das Label 3 Einheiten höher als den Balken ansetzen soll. Benutze schließlich die D3 `text()`-Methode, um das Label mit dem Datenpunktwert gleichzusetzen.

**Hinweis:** Damit das Label höher als der Balken sitzt, musst du dich entscheiden ob der `y` Wert für den `text` größer als 3 oder 3 kleiner als der `y`-Wert für den Balken sein soll.

# --hints--

Das erste `text`-Element sollte ein Label von `12` und einen `y`-Wert von `61` haben.

```js
assert.strictEqual(document.querySelectorAll('text')[0]?.textContent, '12');
assert.strictEqual(
  document.querySelectorAll('text')[0]?.getAttribute('y'),
  '61'
);
```

Das zweite `text`-Element sollte ein Label von `31` und einen `y`-Wert von`4` haben.

```js
assert.strictEqual(document.querySelectorAll('text')[1]?.textContent, '31');
assert.strictEqual(
  document.querySelectorAll('text')[1]?.getAttribute('y'),
  '4'
);
```

Das dritte `text`-Element sollte ein Label von `22` und einen `y`-Wert von `31` haben.

```js
assert.strictEqual(document.querySelectorAll('text')[2]?.textContent, '22');
assert.strictEqual(
  document.querySelectorAll('text')[2]?.getAttribute('y'),
  '31'
);
```

Das vierte `text`-Element sollte ein Label von `17` und einen `y`-Wert von `46` haben.

```js
assert.strictEqual(document.querySelectorAll('text')[3]?.textContent, '17');
assert.strictEqual(
  document.querySelectorAll('text')[3]?.getAttribute('y'),
  '46'
);
```

Das fünfte `text`-Element sollte ein Label von `25` und einen `y`-Wert von `22` haben.

```js
assert.strictEqual(document.querySelectorAll('text')[4]?.textContent, '25');
assert.strictEqual(
  document.querySelectorAll('text')[4]?.getAttribute('y'),
  '22'
);
```

Das sechste `text`-Element sollte ein Label von `18` und einen `y`-Wert von `43` haben.

```js
assert.strictEqual(document.querySelectorAll('text')[5]?.textContent, '18');
assert.strictEqual(
  document.querySelectorAll('text')[5]?.getAttribute('y'),
  '43'
);
```

Das siebte `text`-Element sollte ein Label von `29` und ein `y`-Wert von `10` haben.

```js
assert.strictEqual(document.querySelectorAll('text')[6]?.textContent, '29');
assert.strictEqual(
  document.querySelectorAll('text')[6]?.getAttribute('y'),
  '10'
);
```

Das achte `text`-Element sollte ein Label von `14` und einen `y`-Wert von `55` haben.

```js
assert.strictEqual(document.querySelectorAll('text')[7]?.textContent, '14');
assert.strictEqual(
  document.querySelectorAll('text')[7]?.getAttribute('y'),
  '55'
);
```

Das neunte `text`-Element sollte ein Label von `9` und einen `y`-Wert von `70` haben.

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
