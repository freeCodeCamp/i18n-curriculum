---
id: 587d7fa9367417b2b2512bcf
title: Dynamisches Ändern der Höhe jedes Balkens
challengeType: 6
forumTopicId: 301486
dashedName: dynamically-change-the-height-of-each-bar
---

# --description--

The height of each bar can be set to the value of the data point in the array, similar to how the `x` value was set dynamically.

```js
selection.attr('property', (d, i) => {});
```

Hier wäre `d` der Datenpunktwert und `i` der Index des Datenpunkts im Array.

# --instructions--

Ändere die Callback-Funktion so, dass das `height`-Attribut den dreifachen Datenwert zurückgibt.

**Hinweis:** Denke daran, dass das Multiplizieren aller Datenpunkte mit derselben Konstante die Daten skaliert (wie beim Vergrößern). Die Unterschiede zwischen den Balkenwerten sind in diesem Beispiel gut zu erkennen.

# --hints--

Das erste `rect` sollte über eine auf `36` gesetzte `height` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[0]?.getAttribute('height'),
  '36'
);
```

Das zweite `rect` sollte über eine auf `93` gesetzte `height` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[1]?.getAttribute('height'),
  '93'
);
```

Das dritte `rect` sollte über eine auf `66` gesetzte `height` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[2]?.getAttribute('height'),
  '66'
);
```

Das vierte `rect` sollte über eine auf `51` gesetzte `height` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[3]?.getAttribute('height'),
  '51'
);
```

Das fünfte `rect` sollte über eine auf `75` gesetzte `height` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[4]?.getAttribute('height'),
  '75'
);
```

Das sechste `rect` sollte über eine auf `54` gesetzte `height` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[5]?.getAttribute('height'),
  '54'
);
```

Das siebte `rect` sollte über eine auf `87` gesetzte `height` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[6]?.getAttribute('height'),
  '87'
);
```

Das achte `rect` sollte über eine auf `42` gesetzte `height` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[7]?.getAttribute('height'),
  '42'
);
```

Das neunte `rect` sollte über eine auf `27` gesetzte `height` verfügen.

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
