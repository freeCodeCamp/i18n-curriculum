---
id: 587d7fa8367417b2b2512bcd
title: Criar uma barra para cada ponto de dados no conjunto
challengeType: 6
forumTopicId: 301482
dashedName: create-a-bar-for-each-data-point-in-the-set
---

# --description--

The last challenge added only one rectangle to the `svg` element to represent a bar. Here, you'll combine what you've learned so far about `data()`, `enter()`, and SVG shapes to create and append a rectangle for each data point in `dataset`.

Um desafio anterior mostrou o formato para criar e acrescentar um `div` para cada item no `dataset`:

```js
d3.select('body')?.selectAll('div').data(dataset).enter().append('div');
```

Existem algumas diferenças ao trabalhar com elementos `rect` em vez de elementos `div`. Os elementos `rect` devem ser incluídos em um elemento `svg`, não diretamente no `body`. Além disso, você precisa dizer ao D3 onde colocar cada `rect` na área do `svg`. O posicionamento da barra será tratado no próximo desafio.

# --instructions--

Use os métodos `data()`, `enter()` e `append()` para criar e incluir um `rect` para cada item no `dataset`. As barras devem ser exibidas em cima umas das outras. Isto será corrigido no próximo desafio.

# --hints--

O documento deve ter 9 elementos `rect`.

```js
assert.lengthOf(document.querySelectorAll('rect'), 9);
```

O código deve usar o método `data()`.

```js
assert.match(code, /\.data/g);
```

O código deve usar o método `enter()`.

```js
assert.match(code, /\.enter/g);
```

O código deve usar o método `append()`.

```js
assert.match(code, /\.append/g);
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
      // Add your code below this line

      // Add your code above this line
      .attr('x', 0)
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', 100);
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
      .attr('x', 0)
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', 100);
  </script>
</body>
```
