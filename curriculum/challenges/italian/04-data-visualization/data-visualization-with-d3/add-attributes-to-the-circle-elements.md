---
id: 587d7fab367417b2b2512bd8
title: Aggiungere attributi agli elementi cerchio
challengeType: 6
forumTopicId: 301471
dashedName: add-attributes-to-the-circle-elements
---

# --description--

The last challenge created the `circle` elements for each point in the `dataset`, and appended them to the SVG. But D3 needs more information about the position and size of each `circle` to display them correctly.

Un `circle` in SVG ha tre attributi principali. Gli attributi `cx` e `cy` sono le coordinate. They tell D3 where to position the _center_ of the shape on the SVG. Il raggio (attributo `r`) dà la dimensione del `circle`.

Proprio come la coordinata `y` del `rect`, l'attributo `cy` per un `circle` è misurato dalla parte superiore dell'SVG, non dal basso.

Tutti e tre gli attributi possono usare una funzione callback per impostare dinamicamente i loro valori. Ricorda che tutti i metodi concatenati dopo `data(dataset)` vengono eseguiti una volta per ogni elemento del `dataset`. Il parametro `d` nella funzione callback si riferisce all'elemento corrente del `dataset`, che è un array per ogni punto. Si utilizza la notazione parentesi, come `d[0]`, per accedere ai valori in quell'array.

# --instructions--

Aggiungi gli attributi `cx`, `cy`e `r` agli elementi `circle`. Il valore `cx` dovrebbe essere il primo numero nell'array per ogni elemento del `dataset`. Il valore `cy` dovrebbe essere basato sul secondo numero nell'array, ma assicurati di mostrare il grafico a destra e non invertito. Il valore `r` dovrebbe essere `5` per tutti i cerchi.

# --hints--

Il tuo codice dovrebbe avere 10 elementi `circle`.

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

Il primo elemento `circle` dovrebbe avere un valore `cx` di `34`, un valore `cy` di `422`, e un valore `r` di `5`.

```js
const circle1 = document.querySelector('circle');
assert.strictEqual(circle1?.getAttribute('cx'), '34');
assert.strictEqual(circle1?.getAttribute('cy'), '422');
assert.strictEqual(circle1?.getAttribute('r'), '5');
```

Il secondo elemento `circle` dovrebbe avere un valore `cx` di `109`, un valore `cy` di `220`, e un valore `r` di `5`.

```js
const circle2 = document.querySelectorAll('circle')[1];
assert.strictEqual(circle2?.getAttribute('cx'), '109');
assert.strictEqual(circle2?.getAttribute('cy'), '220');
assert.strictEqual(circle2?.getAttribute('r'), '5');
```

Il terzo elemento `circle` dovrebbe avere un valore `cx` di `310`, un valore `cy` di `380`, e un valore `r` di `5`.

```js
const circle3 = document.querySelectorAll('circle')[2];
assert.strictEqual(circle3?.getAttribute('cx'), '310');
assert.strictEqual(circle3?.getAttribute('cy'), '380');
assert.strictEqual(circle3?.getAttribute('r'), '5');
```

Il quarto elemento `circle` dovrebbe avere un valore `cx` di `79`, un valore `cy` di `89`, e un valore `r` di `5`.

```js
const circle4 = document.querySelectorAll('circle')[3];
assert.strictEqual(circle4?.getAttribute('cx'), '79');
assert.strictEqual(circle4?.getAttribute('cy'), '89');
assert.strictEqual(circle4?.getAttribute('r'), '5');
```

Il quinto elemento `circle` dovrebbe avere un valore `cx` di `420`, un valore `cy` di `280`, e un valore `r` di `5`.

```js
const circle5 = document.querySelectorAll('circle')[4];
assert.strictEqual(circle5?.getAttribute('cx'), '420');
assert.strictEqual(circle5?.getAttribute('cy'), '280');
assert.strictEqual(circle5?.getAttribute('r'), '5');
```

Il sesto elemento `circle` dovrebbe avere un valore `cx` di `233`, un valore `cy` di `355`, e un valore `r` di `5`.

```js
const circle6 = document.querySelectorAll('circle')[5];
assert.strictEqual(circle6?.getAttribute('cx'), '233');
assert.strictEqual(circle6?.getAttribute('cy'), '355');
assert.strictEqual(circle6?.getAttribute('r'), '5');
```

Il settimo elemento `circle` dovrebbe avere un valore `cx` di `333`, un valore `cy` di `404`, e un valore `r` di `5`.

```js
const circle7 = document.querySelectorAll('circle')[6];
assert.strictEqual(circle7?.getAttribute('cx'), '333');
assert.strictEqual(circle7?.getAttribute('cy'), '404');
assert.strictEqual(circle7?.getAttribute('r'), '5');
```

L'ottavo elemento `circle` dovrebbe avere un valore `cx` di `222`, un valore `cy` di `167`, e un valore `r` di `5`.

```js
const circle8 = document.querySelectorAll('circle')[7];
assert.strictEqual(circle8?.getAttribute('cx'), '222');
assert.strictEqual(circle8?.getAttribute('cy'), '167');
assert.strictEqual(circle8?.getAttribute('r'), '5');
```

Il nono elemento `circle` dovrebbe avere un valore `cx` di `78`, un valore `cy` di `180`, e un valore `r` di `5`.

```js
const circle9 = document.querySelectorAll('circle')[8];
assert.strictEqual(circle9?.getAttribute('cx'), '78');
assert.strictEqual(circle9?.getAttribute('cy'), '180');
assert.strictEqual(circle9?.getAttribute('r'), '5');
```

Il decimo elemento `circle` dovrebbe avere un valore `cx` di `21`, un valore `cy` di `377`, e un valore `r` di `5`.

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
