---
id: 587d7fab367417b2b2512bd8
title: Füge Attribute zu Kreiselementen hinzu
challengeType: 6
forumTopicId: 301471
dashedName: add-attributes-to-the-circle-elements
---

# --description--

The last challenge created the `circle` elements for each point in the `dataset`, and appended them to the SVG. But D3 needs more information about the position and size of each `circle` to display them correctly.

Ein `circle` in SVG hat drei Hauptattribute. Die `cx` und `cy` Attribute sind die Koordinaten. They tell D3 where to position the _center_ of the shape on the SVG. Der Radius (`r`-Attribute) gibt die Größe des `circle`-Elements an.

Genau wie die `rect` `y`-Koordinate wird das `cy`-Attribut eines `circle`-Elements bei der SVG von oben gemessen und nicht von unten.

Alle drei Attribute können mit einer Callback-Funktion ihre Werte dynamisch setzen. Denke daran, dass alle Methoden nach `data(dataset)` einmal pro Element in `dataset` ausgeführt werden. Der `d`-Parameter in der Callback-Funktion bezieht sich auf das aktuelle Element in `dataset`, welches ein Array für jeden Punkt ist. Du verwendest Klammern, wie `d[0]` um auf die Werte in diesem Array zugreifen zu können.

# --instructions--

Füge `cx`, `cy`, und `r`-Attribute zu deinen `circle`-Elementen hinzu. Der `cx`-Wert sollte die erste Zahl im Array für jedes Element im `dataset` sein. Der `cy`-Wert sollte sich auf die zweite Zahl im Array beziehen. Aber stelle sicher, dass das Diagramm rechts angezeigt wird und nicht umgedreht. Der `r`-Wert sollte `5` für alle Kreise sein.

# --hints--

Dein Code sollte 10 `circle`-Elemente enthalten.

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

Das erste `circle`-Element sollte einen `cx`-Wert von `34`, einen `cy`-Wert von `422`, und einen `r`-Wert von `5` haben.

```js
const circle1 = document.querySelector('circle');
assert.strictEqual(circle1?.getAttribute('cx'), '34');
assert.strictEqual(circle1?.getAttribute('cy'), '422');
assert.strictEqual(circle1?.getAttribute('r'), '5');
```

Das zweite `circle`-Element sollte einen `cx`-Wert von `109`, einen `cy`-Wert von `220`, und einen `r`-Wert von `5` haben.

```js
const circle2 = document.querySelectorAll('circle')[1];
assert.strictEqual(circle2?.getAttribute('cx'), '109');
assert.strictEqual(circle2?.getAttribute('cy'), '220');
assert.strictEqual(circle2?.getAttribute('r'), '5');
```

Das dritte `circle`-Element sollte einen `cx`-Wert von `310`, einen `cy`-Wert von `380`, und einen `r`-Wert von `5` haben.

```js
const circle3 = document.querySelectorAll('circle')[2];
assert.strictEqual(circle3?.getAttribute('cx'), '310');
assert.strictEqual(circle3?.getAttribute('cy'), '380');
assert.strictEqual(circle3?.getAttribute('r'), '5');
```

Das vierte `circle`-Element sollte einen `cx`-Wert von `79`, einen `cy`-Wert von `89`, und einen `r`-Wert von `5` haben.

```js
const circle4 = document.querySelectorAll('circle')[3];
assert.strictEqual(circle4?.getAttribute('cx'), '79');
assert.strictEqual(circle4?.getAttribute('cy'), '89');
assert.strictEqual(circle4?.getAttribute('r'), '5');
```

Das fünfte `circle`-Element sollte einen `cx`-Wert von `420`, einen `cy`-Wert von `280`, und einen `r`-Wert von `5` haben.

```js
const circle5 = document.querySelectorAll('circle')[4];
assert.strictEqual(circle5?.getAttribute('cx'), '420');
assert.strictEqual(circle5?.getAttribute('cy'), '280');
assert.strictEqual(circle5?.getAttribute('r'), '5');
```

Das sechste `circle`-Element sollte einen `cx`-Wert von `233`, einen `cy`-Wert von `355`, und einen `r`-Wert von `5` haben.

```js
const circle6 = document.querySelectorAll('circle')[5];
assert.strictEqual(circle6?.getAttribute('cx'), '233');
assert.strictEqual(circle6?.getAttribute('cy'), '355');
assert.strictEqual(circle6?.getAttribute('r'), '5');
```

Das siebte `circle`-Element sollte einen `cx`-Wert von `333`, einen `cy`-Wert von `404`, und einen `r`-Wert von `5` haben.

```js
const circle7 = document.querySelectorAll('circle')[6];
assert.strictEqual(circle7?.getAttribute('cx'), '333');
assert.strictEqual(circle7?.getAttribute('cy'), '404');
assert.strictEqual(circle7?.getAttribute('r'), '5');
```

Das achte `circle`-Element sollte einen `cx`-Wert von `222`, einen `cy`-Wert von `167`, und einen `r`-Wert von `5` haben.

```js
const circle8 = document.querySelectorAll('circle')[7];
assert.strictEqual(circle8?.getAttribute('cx'), '222');
assert.strictEqual(circle8?.getAttribute('cy'), '167');
assert.strictEqual(circle8?.getAttribute('r'), '5');
```

Das neunte `circle`-Element sollte einen `cx`-Wert von `78`, einen `cy`-Wert von `180`, und einen `r`-Wert von `5` haben.

```js
const circle9 = document.querySelectorAll('circle')[8];
assert.strictEqual(circle9?.getAttribute('cx'), '78');
assert.strictEqual(circle9?.getAttribute('cy'), '180');
assert.strictEqual(circle9?.getAttribute('r'), '5');
```

Das zehnte `circle`-Element sollte einen `cx`-Wert von `21`, einen `cy`-Wert von `377`, und einen `r`-Wert von `5` haben.

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
