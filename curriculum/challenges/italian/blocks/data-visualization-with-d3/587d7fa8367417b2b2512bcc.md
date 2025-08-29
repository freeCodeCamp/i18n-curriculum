---
id: 587d7fa8367417b2b2512bcc
title: Mostrare forme con SVG
challengeType: 6
forumTopicId: 301485
dashedName: display-shapes-with-svg
---

# --description--

The last challenge created an `svg` element with a given width and height, which was visible because it had a `background-color` applied to it in the `style` tag. The code made space for the given width and height.

Il passo successivo è quello di creare una forma da inserire nell'area `svg`. SVG supporta un certo numero di forme, come rettangoli e cerchi. Vengono utilizzate per visualizzare i dati. Ad esempio, una forma rettangolo SVG (`<rect>`) potrebbe creare una barra in un grafico a barre.

Quando metti una forma nell'area `svg`, puoi specificare dove va messa utilizzando le coordinate `x` e `y`. Il punto di origine di (0, 0) è nell'angolo in alto a sinistra. Valori positivi per `x` spingeranno la forma verso destra, e valori positivi per `y` spingeranno la forma verso il basso dal punto di origine.

Per posizionare una forma al centro dell'area `svg` di 500 (larghezza) x 100 (altezza) presa dall'ultima sfida, la coordinata `x` sarà 250 e la coordinata `y` sarà 50.

Un `rect` SVG ha quattro attributi. Ci sono le coordinate `x` e `y` che indicano dove si trova nell'area `svg`. Ha anche un'altezza (`height`) e una larghezza (`width`) che ne specificano la dimensione.

# --instructions--

Aggiungi una forma `rect` all'`svg` usando `append()`, e dalle un attributo `width` di `25` e un attributo `height` di `100`. Inoltre, dai al `rect` gli attributi `x` e `y` settandoli entrambi a `0`.

# --hints--

Il tuo documento dovrebbe avere un elemento `rect`.

```js
assert.lengthOf(document.querySelectorAll('rect'), 1);
```

L'elemento `rect` dovrebbe avere un attributo `width` impostato a `25`.

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('width'), '25');
```

L'elemento `rect` dovrebbe avere un attributo `height` impostato a `100`.

```js
assert.strictEqual(
  document.querySelector('rect')?.getAttribute('height'),
  '100'
);
```

L'elemento `rect` dovrebbe avere un attributo `x` settato a `0`.

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('x'), '0');
```

L'elemento `rect` dovrebbe avere un attributo `y` settato a `0`.

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('y'), '0');
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
    // Add your code below this line



    // Add your code above this line
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
      .attr('height', h)
      .append('rect')
      .attr('width', 25)
      .attr('height', 100)
      .attr('x', 0)
      .attr('y', 0);
  </script>
</body>
```
