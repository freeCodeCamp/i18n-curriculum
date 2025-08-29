---
id: 587d7fab367417b2b2512bd9
title: Füge Streudiagramm-Kreisen Beschriftungen hinzu
challengeType: 6
forumTopicId: 301477
dashedName: add-labels-to-scatter-plot-circles
---

# --description--

You can add text to create labels for the points in a scatter plot.

Ziel ist es, die kommaseparierten Werte des ersten (`x`)- und zweiten (`y`)-Felds eines jeden Elements im `dataset` darzustellen.

Die `text`-Knotenpunkte benötigen die Attribute `x` und `y`, um auf dem SVG positioniert zu werden. In dieser Aufgabe kann der `y`-Wert (der die Höhe bestimmt) denselben Wert verwenden, den der `circle`-Wert für sein `cy`-Attribut verwendet. Der `x`-Wert kann etwas größer sein als der `cx`-Wert des `circle`, damit die Bezeichnungen sichtbar ist. Dadurch wird die Beschriftung nach rechts vom dargestellten Punkt verschoben.

# --instructions--

Beschrifte jeden Punkt im Streudiagramm mithilfe der `text`-Elemente. Der Text der Bezeichnung sollte aus den beiden Werten bestehen, die durch ein Komma und ein Leerzeichen getrennt sind. Die Bezeichnung des ersten Punktes ist zum Beispiel `34, 78`. Setze den Wert des `x`-Attributs so, dass dieser `5` Einheiten über den Wert liegt, den du für das `cx`-Attribut des `circle` verwendet hast. Setze das `y`-Attribut auf den gleichen Wert, der für `cy` des `circle` verwendet wird.

# --hints--

Dein Code sollte 10 `text`-Elemente enthalten.

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

Die erste Beschriftung sollte aus dem Text `34, 78` bestehen sowie über einen `x`-Wert von `39` und einen `y`-Wert von `422` verfügen.

```js
const labelOne = document.querySelector('text');
assert.strictEqual(labelOne?.textContent, '34, 78');
assert.strictEqual(labelOne?.getAttribute('x'), '39');
assert.strictEqual(labelOne?.getAttribute('y'), '422');
```

Die zweite Beschriftung sollte aus dem Text `109, 280` bestehen sowie über einen `x`-Wert von `114` und einen `y`-Wert von `220` verfügen.

```js
const labelTwo = document.querySelectorAll('text')[1];
assert.strictEqual(labelTwo?.textContent, '109, 280');
assert.strictEqual(labelTwo?.getAttribute('x'), '114');
assert.strictEqual(labelTwo?.getAttribute('y'), '220');
```

Die dritte Beschriftung sollte aus dem Text `310, 120` bestehen sowie über einen `x`-Wert von `315` und einen `y`-Wert von `380` verfügen.

```js
const labelThree = document.querySelectorAll('text')[2];
assert.strictEqual(labelThree?.textContent, '310, 120');
assert.strictEqual(labelThree?.getAttribute('x'), '315');
assert.strictEqual(labelThree?.getAttribute('y'), '380');
```

Die vierte Beschriftung sollte aus dem Text `79, 411` bestehen sowie über einen `x`-Wert von `84` und einen `y`-Wert von `89` verfügen.

```js
const labelFour = document.querySelectorAll('text')[3];
assert.strictEqual(labelFour?.textContent, '79, 411');
assert.strictEqual(labelFour?.getAttribute('x'), '84');
assert.strictEqual(labelFour?.getAttribute('y'), '89');
```

Die fünfte Beschriftung sollte aus dem Text `420, 220` bestehen sowie über einen `x`-Wert von `425` und einen `y`-Wert von `280` verfügen.

```js
const labelFive = document.querySelectorAll('text')[4];
assert.strictEqual(labelFive?.textContent, '420, 220');
assert.strictEqual(labelFive?.getAttribute('x'), '425');
assert.strictEqual(labelFive?.getAttribute('y'), '280');
```

Die sechste Beschriftung sollte aus dem Text `233, 145` bestehen sowie über einen `x`-Wert von `238` und einen `y`-Wert von `355` verfügen.

```js
const labelSix = document.querySelectorAll('text')[5];
assert.strictEqual(labelSix?.textContent, '233, 145');
assert.strictEqual(labelSix?.getAttribute('x'), '238');
assert.strictEqual(labelSix?.getAttribute('y'), '355');
```

Die siebte Beschriftung sollte aus dem Text `333, 96` bestehen sowie über einen `x`-Wert von `338` und einen `y`-Wert von `404` verfügen.

```js
const labelSeven = document.querySelectorAll('text')[6];
assert.strictEqual(labelSeven?.textContent, '333, 96');
assert.strictEqual(labelSeven?.getAttribute('x'), '338');
assert.strictEqual(labelSeven?.getAttribute('y'), '404');
```

Die achte Beschriftung sollte aus dem Text `222, 333` bestehen sowie über einen `x`-Wert von `227` und einen `y`-Wert von `167` verfügen.

```js
const labelEight = document.querySelectorAll('text')[7];
assert.strictEqual(labelEight?.textContent, '222, 333');
assert.strictEqual(labelEight?.getAttribute('x'), '227');
assert.strictEqual(labelEight?.getAttribute('y'), '167');
```

Die neunte Beschriftung sollte aus dem Text `78, 320` bestehen sowie über einen `x`-Wert von `83` und einen `y`-Wert von `180` verfügen.

```js
const labelNine = document.querySelectorAll('text')[8];
assert.strictEqual(labelNine?.textContent, '78, 320');
assert.strictEqual(labelNine?.getAttribute('x'), '83');
assert.strictEqual(labelNine?.getAttribute('y'), '180');
```

Die zehnte Beschriftung sollte aus dem Text `21, 123` bestehen sowie über einen `x`-Wert von `26` und einen `y`-Wert von `377` verfügen.

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
