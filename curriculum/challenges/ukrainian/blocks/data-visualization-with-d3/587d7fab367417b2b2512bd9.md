---
id: 587d7fab367417b2b2512bd9
title: Додайте позначки до кругів точкової діаграми
challengeType: 6
forumTopicId: 301477
dashedName: add-labels-to-scatter-plot-circles
---

# --description--

You can add text to create labels for the points in a scatter plot.

Для цього потрібно зобразити значення, розділені комами, для першого (`x`) та другого (`y`) полів кожного елемента в `dataset`.

Вузлам `text` потрібні атрибути `x` та `y`, щоб розташуватись на SVG. У цьому завданні значення `y` (яке визначає висоту) може використати те ж саме значення, що й `circle` використовує для атрибута `cy`. Значення `x` може бути дещо більшим, ніж значення `cx` елемента `circle`, тому позначку видно. Це змістить позначку праворуч від нанесеної точки.

# --instructions--

Позначте кожну точку на точковій діаграмі за допомогою елементів `text`. Текст позначки повинен складатись з двох значень, розділених комою та пробілом. Наприклад, позначкою для першої точки є `34, 78`. Встановіть атрибут `x` так, щоб його значення було на `5` більше за значення, використане для атрибута `cx` в `circle`. Встановіть атрибут `y` так само, як і значення `cy` в `circle`.

# --hints--

Код має містити 10 елементів `text`.

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

Перша позначка повинна мати текст `34, 78`, `x` зі значенням `39` та `y` зі значенням `422`.

```js
const labelOne = document.querySelector('text');
assert.strictEqual(labelOne?.textContent, '34, 78');
assert.strictEqual(labelOne?.getAttribute('x'), '39');
assert.strictEqual(labelOne?.getAttribute('y'), '422');
```

Друга позначка повинна мати текст `109, 280`, `x` зі значенням `114` та `y` зі значенням `220`.

```js
const labelTwo = document.querySelectorAll('text')[1];
assert.strictEqual(labelTwo?.textContent, '109, 280');
assert.strictEqual(labelTwo?.getAttribute('x'), '114');
assert.strictEqual(labelTwo?.getAttribute('y'), '220');
```

Третя позначка повинна мати текст `310, 120`, `x` зі значенням `315` та `y` зі значенням `380`.

```js
const labelThree = document.querySelectorAll('text')[2];
assert.strictEqual(labelThree?.textContent, '310, 120');
assert.strictEqual(labelThree?.getAttribute('x'), '315');
assert.strictEqual(labelThree?.getAttribute('y'), '380');
```

Четверта позначка повинна мати текст `79, 411`, `x` зі значенням `84` та `y` зі значенням `89`.

```js
const labelFour = document.querySelectorAll('text')[3];
assert.strictEqual(labelFour?.textContent, '79, 411');
assert.strictEqual(labelFour?.getAttribute('x'), '84');
assert.strictEqual(labelFour?.getAttribute('y'), '89');
```

П’ята позначка повинна мати текст `420, 220`, `x` зі значенням `425` та `y` зі значенням `280`.

```js
const labelFive = document.querySelectorAll('text')[4];
assert.strictEqual(labelFive?.textContent, '420, 220');
assert.strictEqual(labelFive?.getAttribute('x'), '425');
assert.strictEqual(labelFive?.getAttribute('y'), '280');
```

Шоста позначка повинна мати текст `233, 145`, `x` зі значенням `238` та `y` зі значенням `355`.

```js
const labelSix = document.querySelectorAll('text')[5];
assert.strictEqual(labelSix?.textContent, '233, 145');
assert.strictEqual(labelSix?.getAttribute('x'), '238');
assert.strictEqual(labelSix?.getAttribute('y'), '355');
```

Сьома позначка повинна мати текст `333, 96`, `x` зі значенням `338` та `y` зі значенням `404`.

```js
const labelSeven = document.querySelectorAll('text')[6];
assert.strictEqual(labelSeven?.textContent, '333, 96');
assert.strictEqual(labelSeven?.getAttribute('x'), '338');
assert.strictEqual(labelSeven?.getAttribute('y'), '404');
```

Восьма позначка повинна мати текст `222, 333`, `x` зі значенням `227` та `y` зі значенням `167`.

```js
const labelEight = document.querySelectorAll('text')[7];
assert.strictEqual(labelEight?.textContent, '222, 333');
assert.strictEqual(labelEight?.getAttribute('x'), '227');
assert.strictEqual(labelEight?.getAttribute('y'), '167');
```

Дев’ята позначка повинна мати текст `78, 320`, `x` зі значенням `83` та `y` зі значенням `180`.

```js
const labelNine = document.querySelectorAll('text')[8];
assert.strictEqual(labelNine?.textContent, '78, 320');
assert.strictEqual(labelNine?.getAttribute('x'), '83');
assert.strictEqual(labelNine?.getAttribute('y'), '180');
```

Десята позначка повинна мати текст `21, 123`, `x` зі значенням `26` та `y` зі значенням `377`.

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
