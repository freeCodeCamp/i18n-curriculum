---
id: 587d7fab367417b2b2512bd8
title: Додайте атрибути до кругів
challengeType: 6
forumTopicId: 301471
dashedName: add-attributes-to-the-circle-elements
---

# --description--

The last challenge created the `circle` elements for each point in the `dataset`, and appended them to the SVG. But D3 needs more information about the position and size of each `circle` to display them correctly.

Елемент `circle` в SVG має три основні атрибути. Атрибути `cx` та `cy` — це координати. They tell D3 where to position the _center_ of the shape on the SVG. Радіус (атрибут `r`) вказує розмір елемента `circle`.

Як і координата `y` для `rect`, атрибут `cy` для `circle` вимірюється зверху SVG, а не знизу.

Всі три атрибути можуть використовувати функцію зворотного виклику, щоб динамічно встановити значення. Пам’ятайте, що всі методи, згруповані після `data(dataset)`, запускаються по одному разу для кожного елемента в `dataset`. Параметр `d` у функції зворотного виклику посилається на поточний елемент в `dataset`, який є масивом для кожної точки. Використайте дужкову нотацію (наприклад, `d[0]`), щоб отримати доступ до значень в цьому масиві.

# --instructions--

Додайте атрибути `cx`, `cy` та `r` до елемента `circle`. Значення `cx` має бути першим числом у масиві для кожного елемента в `dataset`. Значення `cy` має базуватися на другому числі у масиві, але не забудьте показати графік правильно, а не перевернуто. Значенням `r` має бути `5` для всіх кругів.

# --hints--

Код має містити 10 елементів `circle`.

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

Перший елемент `circle` повинен мати `cx` зі значенням `34`, `cy` зі значенням `422` та `r` зі значенням `5`.

```js
const circle1 = document.querySelector('circle');
assert.strictEqual(circle1?.getAttribute('cx'), '34');
assert.strictEqual(circle1?.getAttribute('cy'), '422');
assert.strictEqual(circle1?.getAttribute('r'), '5');
```

Другий елемент `circle` повинен мати `cx` зі значенням `109`, `cy` зі значенням `220` та `r` зі значенням `5`.

```js
const circle2 = document.querySelectorAll('circle')[1];
assert.strictEqual(circle2?.getAttribute('cx'), '109');
assert.strictEqual(circle2?.getAttribute('cy'), '220');
assert.strictEqual(circle2?.getAttribute('r'), '5');
```

Третій елемент `circle` повинен мати `cx` зі значенням `310`, `cy` зі значенням `380` та `r` зі значенням `5`.

```js
const circle3 = document.querySelectorAll('circle')[2];
assert.strictEqual(circle3?.getAttribute('cx'), '310');
assert.strictEqual(circle3?.getAttribute('cy'), '380');
assert.strictEqual(circle3?.getAttribute('r'), '5');
```

Четвертий елемент `circle` повинен мати `cx` зі значенням `79`, `cy` зі значенням `89` та `r` зі значенням `5`.

```js
const circle4 = document.querySelectorAll('circle')[3];
assert.strictEqual(circle4?.getAttribute('cx'), '79');
assert.strictEqual(circle4?.getAttribute('cy'), '89');
assert.strictEqual(circle4?.getAttribute('r'), '5');
```

П’ятий елемент `circle` повинен мати `cx` зі значенням `420`, `cy` зі значенням `280` та `r` зі значенням `5`.

```js
const circle5 = document.querySelectorAll('circle')[4];
assert.strictEqual(circle5?.getAttribute('cx'), '420');
assert.strictEqual(circle5?.getAttribute('cy'), '280');
assert.strictEqual(circle5?.getAttribute('r'), '5');
```

Шостий елемент `circle` повинен мати `cx` зі значенням `233`, `cy` зі значенням `355` та `r` зі значенням `5`.

```js
const circle6 = document.querySelectorAll('circle')[5];
assert.strictEqual(circle6?.getAttribute('cx'), '233');
assert.strictEqual(circle6?.getAttribute('cy'), '355');
assert.strictEqual(circle6?.getAttribute('r'), '5');
```

Сьомий елемент `circle` повинен мати `cx` зі значенням `333`, `cy` зі значенням `404` та `r` зі значенням `5`.

```js
const circle7 = document.querySelectorAll('circle')[6];
assert.strictEqual(circle7?.getAttribute('cx'), '333');
assert.strictEqual(circle7?.getAttribute('cy'), '404');
assert.strictEqual(circle7?.getAttribute('r'), '5');
```

Восьмий елемент `circle` повинен мати `cx` зі значенням `222`, `cy` зі значенням `167` та `r` зі значенням `5`.

```js
const circle8 = document.querySelectorAll('circle')[7];
assert.strictEqual(circle8?.getAttribute('cx'), '222');
assert.strictEqual(circle8?.getAttribute('cy'), '167');
assert.strictEqual(circle8?.getAttribute('r'), '5');
```

Дев’ятий елемент `circle` повинен мати `cx` зі значенням `78`, `cy` зі значенням `180` та `r` зі значенням `5`.

```js
const circle9 = document.querySelectorAll('circle')[8];
assert.strictEqual(circle9?.getAttribute('cx'), '78');
assert.strictEqual(circle9?.getAttribute('cy'), '180');
assert.strictEqual(circle9?.getAttribute('r'), '5');
```

Десятий елемент `circle` повинен мати `cx` зі значенням `21`, `cy` зі значенням `377` та `r` зі значенням `5`.

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
