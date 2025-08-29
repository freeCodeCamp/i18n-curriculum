---
id: 587d7fac367417b2b2512bde
title: Usare una scala predefinita per posizionare gli elementi
challengeType: 6
forumTopicId: 301494
dashedName: use-a-pre-defined-scale-to-place-elements
---

# --description--

With the scales set up, it's time to map the scatter plot again. The scales are like processing functions that turn the `x` and `y` raw data into values that fit and render correctly on the SVG. They keep the data within the screen's plotting area.

I valori degli attributi coordinate di una forma SVG si impostano con la funzione di ridimensionamento. Questo include gli attributi `x` e `y` per gli elementi `rect` o `text`, oppure `cx` e `cy` per i `circles`. Ecco un esempio:

```js
shape.attr('x', d => xScale(d[0]));
```

Le scale impostano gli attributi coordinate della forma per posizionare i punti dati sull'SVG. Non è necessario applicare le scale quando si visualizza il valore effettivo dei dati, per esempio, nel metodo `text()` per un suggerimento o un'etichetta.

# --instructions--

Usa `xScale` e `yScale` per posizionare entrambe le forme `circle` e `text` sull'SVG. Per i `circles`, applica le scale per impostare gli attributi `cx` e `cy`. Dai loro anche un raggio di `5` unità.

Per gli elementi `text`, applica le scale per impostare gli attributi `x` e `y`. Le etichette devono essere spostate a destra dei punti. Per fare questo, aggiungi `10` unità al valore di dati `x` prima di passarlo a `xScale`.

# --hints--

Il tuo codice dovrebbe avere 10 elementi `circle`.

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

Il primo elemento `circle` dovrebbe avere un valore `cx` di circa `91` e un valore `cy` di circa `368` dopo aver applicato le scale. Dovrebbe anche avere un valore `r` di `5`.

```js
const firstCircle = document.querySelectorAll('circle')[0];
assert.strictEqual(Math.round(firstCircle?.getAttribute('cx')), 91);
assert.strictEqual(Math.round(firstCircle?.getAttribute('cy')), 368);
assert.strictEqual(Math.round(firstCircle?.getAttribute('r')), 5);
```

Il secondo elemento `circle` dovrebbe avere un valore `cx` di circa `159` e un valore `cy` di circa `181` dopo aver applicato le scale. Dovrebbe inoltre avere un valore `r` di `5`.

```js
const secondCircle = document.querySelectorAll('circle')[1];
assert.strictEqual(Math.round(secondCircle?.getAttribute('cx')), 159);
assert.strictEqual(Math.round(secondCircle?.getAttribute('cy')), 181);
assert.strictEqual(Math.round(secondCircle?.getAttribute('r')), 5);
```

Il terzo elemento `circle` dovrebbe avere un valore `cx` di circa `340` e un valore `cy` di circa `329` dopo aver applicato le scale. Dovrebbe inoltre avere un valore `r` di `5`.

```js
const thirdCircle = document.querySelectorAll('circle')[2];
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cx')), 340);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cy')), 329);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('r')), 5);
```

Il quarto elemento `circle` dovrebbe avere un valore `cx` di circa `131` e un valore `cy` di circa `60` dopo aver applicato le scale. Dovrebbe inoltre avere un valore `r` di `5`.

```js
const fourthCircle = document.querySelectorAll('circle')[3];
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cy')), 60);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('r')), 5);
```

Il quinto elemento `circle` dovrebbe avere un valore `cx` di circa `440` e un valore `cy` di circa `237` dopo aver applicato le scale. Dovrebbe anche avere un valore `r` di `5`.

```js
const fifthCircle = document.querySelectorAll('circle')[4];
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cx')), 440);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cy')), 237);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('r')), 5);
```

Il sesto elemento `circle` dovrebbe avere un valore `cx` di circa `271` e un valore `cy` di circa `306` dopo aver applicato le scale. Dovrebbe inoltre avere un valore `r` di `5`.

```js
const sixthCircle = document.querySelectorAll('circle')[5];
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cx')), 271);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cy')), 306);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('r')), 5);
```

Il settimo elemento `circle` dovrebbe avere un valore `cx` di circa `361` e un valore `cy` di circa `351` dopo aver applicato le scale. Dovrebbe inoltre avere un valore `r` di `5`.

```js
const seventhCircle = document.querySelectorAll('circle')[6];
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cx')), 361);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cy')), 351);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('r')), 5);
```

L'ottavo elemento `circle` dovrebbe avere un valore `cx` di circa `261` e un valore `cy` di circa `132` dopo aver applicato le scale. Dovrebbe inoltre avere un valore `r` di `5`.

```js
const eighthCircle = document.querySelectorAll('circle')[7];
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cx')), 261);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cy')), 132);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('r')), 5);
```

Il nono elemento `circle` dovrebbe avere un valore `cx` di circa `131` e un valore `cy` di circa `144` dopo aver applicato le scale. Dovrebbe inoltre avere un valore `r` di `5`.

```js
const ninthCircle = document.querySelectorAll('circle')[8];
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cy')), 144);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('r')), 5);
```

Il decimo elemento `circle` dovrebbe avere un valore `cx` di circa `79` e un valore `cy` di circa `326` dopo aver applicato le scale. Dovrebbe anche avere un valore `r` di `5`.

```js
const tenthCircle = document.querySelectorAll('circle')[9];
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cx')), 79);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cy')), 326);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('r')), 5);
```

Il tuo codice dovrebbe avere 10 elementi `text`.

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

La prima etichetta dovrebbe avere un valore `x` di circa `100` e un valore `y` di circa `368` dopo aver applicato le scale.

```js
const firstLabel = document.querySelectorAll('text')[0];
assert.strictEqual(Math.round(firstLabel?.getAttribute('x')), 100);
assert.strictEqual(Math.round(firstLabel?.getAttribute('y')), 368);
```

La seconda etichetta dovrebbe avere un valore `x` di circa `168` e un valore `y` di circa `181` dopo aver applicato le scale.

```js
const secondLabel = document.querySelectorAll('text')[1];
assert.strictEqual(Math.round(secondLabel?.getAttribute('x')), 168);
assert.strictEqual(Math.round(secondLabel?.getAttribute('y')), 181);
```

La terza etichetta dovrebbe avere un valore `x` di circa `350` e un valore `y` di circa `329` dopo aver applicato le scale.

```js
const thirdLabel = document.querySelectorAll('text')[2];
assert.strictEqual(Math.round(thirdLabel?.getAttribute('x')), 350);
assert.strictEqual(Math.round(thirdLabel?.getAttribute('y')), 329);
```

La quarta etichetta dovrebbe avere un valore `x` di circa `141` e un valore `y` di circa `60` dopo aver applicato le scale.

```js
const fourthLabel = document.querySelectorAll('text')[3];
assert.strictEqual(Math.round(fourthLabel?.getAttribute('x')), 141);
assert.strictEqual(Math.round(fourthLabel?.getAttribute('y')), 60);
```

La quinta etichetta dovrebbe avere un valore `x` di circa `449` e un valore `y` di circa `237` dopo aver applicato le scale.

```js
const fifthLabel = document.querySelectorAll('text')[4];
assert.strictEqual(Math.round(fifthLabel?.getAttribute('x')), 449);
assert.strictEqual(Math.round(fifthLabel?.getAttribute('y')), 237);
```

La sesta etichetta dovrebbe avere un valore `x` di circa `280` e un valore `y` di circa `306` dopo aver applicato le scale.

```js
const sixthLabel = document.querySelectorAll('text')[5];
assert.strictEqual(Math.round(sixthLabel?.getAttribute('x')), 280);
assert.strictEqual(Math.round(sixthLabel?.getAttribute('y')), 306);
```

La settima etichetta dovrebbe avere un valore `x` di circa `370` e un valore `y` di circa `351` dopo aver applicato le scale.

```js
const seventhLabel = document.querySelectorAll('text')[6];
assert.strictEqual(Math.round(seventhLabel?.getAttribute('x')), 370);
assert.strictEqual(Math.round(seventhLabel?.getAttribute('y')), 351);
```

L'ottava etichetta dovrebbe avere un valore `x` di circa `270` e un valore `y` di circa `132` dopo aver applicato le scale.

```js
const eighthLabel = document.querySelectorAll('text')[7];
assert.strictEqual(Math.round(eighthLabel?.getAttribute('x')), 270);
assert.strictEqual(Math.round(eighthLabel?.getAttribute('y')), 132);
```

La nona etichetta dovrebbe avere un valore `x` di circa `140` e un valore `y` di circa `144` dopo aver applicato le scale.

```js
const ninthLabel = document.querySelectorAll('text')[8];
assert.strictEqual(Math.round(ninthLabel?.getAttribute('x')), 140);
assert.strictEqual(Math.round(ninthLabel?.getAttribute('y')), 144);
```

La decima etichetta dovrebbe avere un valore `x` di circa `88` e un valore `y` di circa `326` dopo aver applicato le scale.

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
