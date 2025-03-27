---
id: 587d7fa9367417b2b2512bd0
title: SVG-Elemente umdrehen
challengeType: 6
forumTopicId: 301488
dashedName: invert-svg-elements
---

# --description--

You may have noticed the bar chart looked like it's upside-down, or inverted. This is because of how SVG uses (x, y) coordinates.

In SVG befindet sich der Ursprungspunkt für die Koordinaten in der oberen linken Ecke. Eine `x`-Koordinate von 0 platziert eine Form am linken Rand des SVG-Bereichs. Eine `y`-Koordinate von 0 platziert eine Form am oberen Rand des SVG-Bereichs. Höhere `x`-Werte verschieben das Rechteck nach rechts. Höhere `y`-Werte verschieben das Rechteck nach unten.

Um die Balken richtig auszurichten, musst du die Art und Weise, wie die `y`-Koordinate berechnet wird, ändern. Es muss sowohl die Höhe des Balkens als auch die Gesamthöhe des SVG-Bereichs berücksichtigt werden.

Die Höhe des SVG-Bereichs ist 100. Hast du einen Datenpunkt von 0 im Satz, wirst du wollen, dass die Balken unten im SVG-Bereich anfangen (und nicht oben). Damit dir das gelingt, benötigt die `y`-Koordinate den Wert 100. Wäre der Wert des Datenpunkts 1, würdest du mit einer `y`-Koordinate von 100 beginnen, um den Balken am unteren Rand zu setzen. Anschließend müsstest du die Höhe des Balkens (1) berücksichtigen, wodurch die endgültige `y`-Koordinate 99 wäre.

Die `y`-Koordinate, d.h. `y = heightOfSVG - heightOfBar`, würde die Balken nun richtig herum ausrichten.

# --instructions--

Verändere die Callback-Funktion so, dass das `y`-Attribut die Balken richtig herum ausrichtet. Beachte, dass die `height` des Balkens dreimal so hoch ist wie der Datenwert `d`.

**Hinweis:** Normalerweise ist das Verhältnis `y = h - m * d`, wobei `m` die Konstante ist, die die Datenpunkte skaliert.

# --hints--

Das erste `rect` sollte über einen `y`-Wert von `64` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[0]?.getAttribute('y'),
  (h - dataset[0] * 3).toString()
);
```

Das zweite `rect` sollte über einen `y`-Wert von `7` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[1]?.getAttribute('y'),
  (h - dataset[1] * 3).toString()
);
```

Das dritte `rect` sollte über einen `y`-Wert von `34` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[2]?.getAttribute('y'),
  (h - dataset[2] * 3).toString()
);
```

Das vierte `rect` sollte über einen `y`-Wert von `49` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[3]?.getAttribute('y'),
  (h - dataset[3] * 3).toString()
);
```

Das fünfte `rect` sollte über einen `y`-Wert von `25` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[4]?.getAttribute('y'),
  (h - dataset[4] * 3).toString()
);
```

Das sechste `rect` sollte über einen `y`-Wert von `46` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[5]?.getAttribute('y'),
  (h - dataset[5] * 3).toString()
);
```

Das siebte `rect` sollte über einen `y`-Wert von `13` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[6]?.getAttribute('y'),
  (h - dataset[6] * 3).toString()
);
```

Das achte `rect` sollte über einen `y`-Wert von `58` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[7]?.getAttribute('y'),
  (h - dataset[7] * 3).toString()
);
```

Das neunte `rect` sollte über einen `y`-Wert von `73` verfügen.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[8]?.getAttribute('y'),
  (h - dataset[8] * 3).toString()
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
      .attr('y', (d, i) => {
        // Add your code below this line



        // Add your code above this line
      })
      .attr('width', 25)
      .attr('height', (d, i) => 3 * d);
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
      .attr('y', (d, i) => h - 3 * d)
      .attr('width', 25)
      .attr('height', (d, i) => 3 * d);
  </script>
</body>
```
