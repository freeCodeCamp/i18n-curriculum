---
id: 587d7faa367417b2b2512bd2
title: Додайте позначки до елементів D3
challengeType: 6
forumTopicId: 301476
dashedName: add-labels-to-d3-elements
---

# --description--

D3 lets you label a graph element, such as a bar, using the SVG `text` element.

Як і елемент `rect`, елемент `text` повинен мати атрибути `x` та `y`, щоб розміститись в SVG. Крім того, необхідно отримати доступ до даних, щоб показати ці значення.

D3 надає високий рівень контролю над тим, як ви позначаєте стовпчики.

# --instructions--

Код у редакторі вже пов’язує дані з кожним новим елементом `text`. Спочатку додайте вузли `text` до `svg`. Далі додайте атрибути для координат `x` та `y`. Їх потрібно обчислити так само, як і значення `rect`, але значення `y` для `text` має розмістити позначку на 3 одиниці вище, ніж стовпчик. Вкінці використайте метод `text()` від D3, щоб позначки відповідали значенням точок даних.

**Примітка:** щоб позначка була вище за стовпчик, вирішіть, чи значення `y` для `text` має бути менше на 3 чи більше на 3, ніж значення `y` для стовпчика.

# --hints--

Перший елемент `text` повинен мати позначку `12` та `y` зі значенням `61`.

```js
assert.strictEqual(document.querySelectorAll('text')[0]?.textContent, '12');
assert.strictEqual(
  document.querySelectorAll('text')[0]?.getAttribute('y'),
  '61'
);
```

Другий елемент `text` повинен мати позначку `31` та `y` зі значенням `4`.

```js
assert.strictEqual(document.querySelectorAll('text')[1]?.textContent, '31');
assert.strictEqual(
  document.querySelectorAll('text')[1]?.getAttribute('y'),
  '4'
);
```

Третій елемент `text` повинен мати позначку `22` та `y` зі значенням `31`.

```js
assert.strictEqual(document.querySelectorAll('text')[2]?.textContent, '22');
assert.strictEqual(
  document.querySelectorAll('text')[2]?.getAttribute('y'),
  '31'
);
```

Четвертий елемент `text` повинен мати позначку `17` та `y` зі значенням `46`.

```js
assert.strictEqual(document.querySelectorAll('text')[3]?.textContent, '17');
assert.strictEqual(
  document.querySelectorAll('text')[3]?.getAttribute('y'),
  '46'
);
```

П’ятий елемент `text` повинен мати позначку `25` та `y` зі значенням `22`.

```js
assert.strictEqual(document.querySelectorAll('text')[4]?.textContent, '25');
assert.strictEqual(
  document.querySelectorAll('text')[4]?.getAttribute('y'),
  '22'
);
```

Шостий елемент `text` повинен мати позначку `18` та `y` зі значенням `43`.

```js
assert.strictEqual(document.querySelectorAll('text')[5]?.textContent, '18');
assert.strictEqual(
  document.querySelectorAll('text')[5]?.getAttribute('y'),
  '43'
);
```

Сьомий елемент `text` повинен мати позначку `29` та `y` зі значенням `10`.

```js
assert.strictEqual(document.querySelectorAll('text')[6]?.textContent, '29');
assert.strictEqual(
  document.querySelectorAll('text')[6]?.getAttribute('y'),
  '10'
);
```

Восьмий елемент `text` повинен мати позначку `14` та `y` зі значенням `55`.

```js
assert.strictEqual(document.querySelectorAll('text')[7]?.textContent, '14');
assert.strictEqual(
  document.querySelectorAll('text')[7]?.getAttribute('y'),
  '55'
);
```

Дев’ятий елемент `text` повинен мати позначку `9` та `y` зі значенням `70`.

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
