---
id: 587d7fac367417b2b2512bde
title: Verwende eine vordefinierte Skala um Elemente zu platzieren
challengeType: 6
forumTopicId: 301494
dashedName: use-a-pre-defined-scale-to-place-elements
---

# --description--

With the scales set up, it's time to map the scatter plot again. The scales are like processing functions that turn the `x` and `y` raw data into values that fit and render correctly on the SVG. They keep the data within the screen's plotting area.

Die Koordinaten-Attributwerte einer SVG-Form setzt du mithilfe der Skalierungsfunktion. Damit sind sowohl `x`- und `y`-Attribute für `rect`- bzw. `text`-Elemente als auch `cx`- und `cy`-Attribute für `circles` gemeint. Hier ein Beispiel:

```js
shape.attr('x', d => xScale(d[0]));
```

Skalen setzen Formkoordinaten-Attribute fest, um die Datenpunkte auf das SVG zu platzieren. Die Anwendung von Skalen ist nicht notwendig, wenn du den eigentlichen Datenwert wiedergibst, wie beispielsweise in den `text()`-Methoden für Kurzinformationen oder Beschriftungen.

# --instructions--

Verwende `xScale` und `yScale`, um die `circle`- und `text`-Formen im SVG zu positionieren. Wende für `circles`-Skalen zur Festlegung der `cx`- und `cy`-Attribute an. Gib ihnen auch einen Radius von `5` Einheiten.

Wende für `text`-Elemente Skalen zur Festlegung der `x`- und `y`-Attribute an. Die Beschriftungen sollten rechts neben den Punkten angezeigt werden. Erhöhe den `x`-Datenwert um `10` Einheiten, bevor du diesen an `xScale` übergibst, um das zu erreichen.

# --hints--

Dein Code sollte 10 `circle`-Elemente enthalten.

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

Das erste `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `91` und einen `cy`-Wert von etwa `368` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const firstCircle = document.querySelectorAll('circle')[0];
assert.strictEqual(Math.round(firstCircle?.getAttribute('cx')), 91);
assert.strictEqual(Math.round(firstCircle?.getAttribute('cy')), 368);
assert.strictEqual(Math.round(firstCircle?.getAttribute('r')), 5);
```

Das zweite `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `159` und einen `cy`-Wert von etwa `181` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const secondCircle = document.querySelectorAll('circle')[1];
assert.strictEqual(Math.round(secondCircle?.getAttribute('cx')), 159);
assert.strictEqual(Math.round(secondCircle?.getAttribute('cy')), 181);
assert.strictEqual(Math.round(secondCircle?.getAttribute('r')), 5);
```

Das dritte `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `340` und einen `cy`-Wert von etwa `329` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const thirdCircle = document.querySelectorAll('circle')[2];
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cx')), 340);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cy')), 329);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('r')), 5);
```

Das vierte `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `131` und einen `cy`-Wert von etwa `60` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const fourthCircle = document.querySelectorAll('circle')[3];
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cy')), 60);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('r')), 5);
```

Das fünfte `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `440` und einen `cy`-Wert von etwa `237` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const fifthCircle = document.querySelectorAll('circle')[4];
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cx')), 440);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cy')), 237);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('r')), 5);
```

Das sechste `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `271` und einen `cy`-Wert von etwa `306` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const sixthCircle = document.querySelectorAll('circle')[5];
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cx')), 271);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cy')), 306);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('r')), 5);
```

Das siebte `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `361` und einen `cy`-Wert von etwa `351` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const seventhCircle = document.querySelectorAll('circle')[6];
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cx')), 361);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cy')), 351);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('r')), 5);
```

Das achte `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `261` und einen `cy`-Wert von etwa `132` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const eighthCircle = document.querySelectorAll('circle')[7];
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cx')), 261);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cy')), 132);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('r')), 5);
```

Das neunte `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `131` und einen `cy`-Wert von etwa `144` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const ninthCircle = document.querySelectorAll('circle')[8];
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cy')), 144);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('r')), 5);
```

Das zehnte `circle`-Element sollte – nach Anwendung der Skalen – über einen `cx`-Wert von ungefähr `79` und einen `cy`-Wert von etwa `326` verfügen. Zudem sollte sein `r`-Wert auf `5` gesetzt sein.

```js
const tenthCircle = document.querySelectorAll('circle')[9];
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cx')), 79);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cy')), 326);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('r')), 5);
```

Dein Code sollte 10 `text`-Elemente enthalten.

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

Die erste Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `100` und einen `y`-Wert von etwa `368` verfügen.

```js
const firstLabel = document.querySelectorAll('text')[0];
assert.strictEqual(Math.round(firstLabel?.getAttribute('x')), 100);
assert.strictEqual(Math.round(firstLabel?.getAttribute('y')), 368);
```

Die zweite Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `168` und einen `y`-Wert von etwa `181` verfügen.

```js
const secondLabel = document.querySelectorAll('text')[1];
assert.strictEqual(Math.round(secondLabel?.getAttribute('x')), 168);
assert.strictEqual(Math.round(secondLabel?.getAttribute('y')), 181);
```

Die dritte Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `350` und einen `y`-Wert von etwa `329` verfügen.

```js
const thirdLabel = document.querySelectorAll('text')[2];
assert.strictEqual(Math.round(thirdLabel?.getAttribute('x')), 350);
assert.strictEqual(Math.round(thirdLabel?.getAttribute('y')), 329);
```

Die vierte Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `141` und einen `y`-Wert von etwa `60` verfügen.

```js
const fourthLabel = document.querySelectorAll('text')[3];
assert.strictEqual(Math.round(fourthLabel?.getAttribute('x')), 141);
assert.strictEqual(Math.round(fourthLabel?.getAttribute('y')), 60);
```

Die fünfte Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `449` und einen `y`-Wert von etwa `237` verfügen.

```js
const fifthLabel = document.querySelectorAll('text')[4];
assert.strictEqual(Math.round(fifthLabel?.getAttribute('x')), 449);
assert.strictEqual(Math.round(fifthLabel?.getAttribute('y')), 237);
```

Die sechste Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `280` und einen `y`-Wert von etwa `306` verfügen.

```js
const sixthLabel = document.querySelectorAll('text')[5];
assert.strictEqual(Math.round(sixthLabel?.getAttribute('x')), 280);
assert.strictEqual(Math.round(sixthLabel?.getAttribute('y')), 306);
```

Die siebte Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `370` und einen `y`-Wert von etwa `351` verfügen.

```js
const seventhLabel = document.querySelectorAll('text')[6];
assert.strictEqual(Math.round(seventhLabel?.getAttribute('x')), 370);
assert.strictEqual(Math.round(seventhLabel?.getAttribute('y')), 351);
```

Die achte Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `270` und einen `y`-Wert von etwa `132` verfügen.

```js
const eighthLabel = document.querySelectorAll('text')[7];
assert.strictEqual(Math.round(eighthLabel?.getAttribute('x')), 270);
assert.strictEqual(Math.round(eighthLabel?.getAttribute('y')), 132);
```

Die neunte Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `140` und einen `y`-Wert von etwa `144` verfügen.

```js
const ninthLabel = document.querySelectorAll('text')[8];
assert.strictEqual(Math.round(ninthLabel?.getAttribute('x')), 140);
assert.strictEqual(Math.round(ninthLabel?.getAttribute('y')), 144);
```

Die zehnte Beschriftung sollte – nach Anwendung der Skalen – über einen `x`-Wert von ungefähr `88` und einen `y`-Wert von etwa `326` verfügen.

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
