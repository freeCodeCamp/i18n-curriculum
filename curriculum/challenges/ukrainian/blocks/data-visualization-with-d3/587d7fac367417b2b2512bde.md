---
id: 587d7fac367417b2b2512bde
title: Використайте попередньо визначену шкалу, щоб розмістити елементи
challengeType: 6
forumTopicId: 301494
dashedName: use-a-pre-defined-scale-to-place-elements
---

# --description--

With the scales set up, it's time to map the scatter plot again. The scales are like processing functions that turn the `x` and `y` raw data into values that fit and render correctly on the SVG. They keep the data within the screen's plotting area.

Значення атрибута координати для фігури SVG встановлюють за допомогою функції масштабування. Сюди входять атрибути `x` та `y` для елементів `rect` чи `text`, або `cx` та `cy` для `circles`. Ось приклад:

```js
shape.attr('x', d => xScale(d[0]));
```

Шкали встановлюють атрибути координат фігури, щоб розмістити точки даних на SVG. Вам не потрібно застосовувати шкали при відтворенні фактичного значення даних, наприклад, в методі `text()` для підказки або позначки.

# --instructions--

Використайте `xScale` та `yScale`, щоб розташувати фігури `circle` та `text` на SVG. Для `circles` застосуйте шкали, щоб встановити атрибути `cx` та `cy`. Також надайте їм радіус зі значенням `5`.

Для елементів `text` застосуйте шкали, щоб встановити атрибути `x` та `y`. Позначки мають бути зсунутими праворуч від точок. Для цього додайте `10` одиниць до значення даних `x`, перш ніж передати їх до `xScale`.

# --hints--

Код має містити 10 елементів `circle`.

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

Перший елемент `circle` повинен мати `cx` зі значенням приблизно `91` та `cy` зі значенням приблизно `368` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const firstCircle = document.querySelectorAll('circle')[0];
assert.strictEqual(Math.round(firstCircle?.getAttribute('cx')), 91);
assert.strictEqual(Math.round(firstCircle?.getAttribute('cy')), 368);
assert.strictEqual(Math.round(firstCircle?.getAttribute('r')), 5);
```

Другий елемент `circle` повинен мати `cx` зі значенням приблизно `159` та `cy` зі значенням приблизно `181` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const secondCircle = document.querySelectorAll('circle')[1];
assert.strictEqual(Math.round(secondCircle?.getAttribute('cx')), 159);
assert.strictEqual(Math.round(secondCircle?.getAttribute('cy')), 181);
assert.strictEqual(Math.round(secondCircle?.getAttribute('r')), 5);
```

Третій елемент `circle` повинен мати `cx` зі значенням приблизно `340` та `cy` зі значенням приблизно `329` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const thirdCircle = document.querySelectorAll('circle')[2];
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cx')), 340);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cy')), 329);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('r')), 5);
```

Четвертий елемент `circle` повинен мати `cx` зі значенням приблизно `131` та `cy` зі значенням приблизно `60` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const fourthCircle = document.querySelectorAll('circle')[3];
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cy')), 60);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('r')), 5);
```

П’ятий елемент `circle` повинен мати `cx` зі значенням приблизно `440` та `cy` зі значенням приблизно `237` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const fifthCircle = document.querySelectorAll('circle')[4];
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cx')), 440);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cy')), 237);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('r')), 5);
```

Шостий елемент `circle` повинен мати `cx` зі значенням приблизно `271` та `cy` зі значенням приблизно `306` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const sixthCircle = document.querySelectorAll('circle')[5];
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cx')), 271);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cy')), 306);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('r')), 5);
```

Сьомий елемент `circle` повинен мати `cx` зі значенням приблизно `361` та `cy` зі значенням приблизно `351` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const seventhCircle = document.querySelectorAll('circle')[6];
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cx')), 361);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cy')), 351);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('r')), 5);
```

Восьмий елемент `circle` повинен мати `cx` зі значенням приблизно `261` та `cy` зі значенням приблизно `132` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const eighthCircle = document.querySelectorAll('circle')[7];
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cx')), 261);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cy')), 132);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('r')), 5);
```

Дев’ятий елемент `circle` повинен мати `cx` зі значенням приблизно `131` та `cy` зі значенням приблизно `144` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const ninthCircle = document.querySelectorAll('circle')[8];
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cy')), 144);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('r')), 5);
```

Десятий елемент `circle` повинен мати `cx` зі значенням приблизно `79` та `cy` зі значенням приблизно `326` після застосування шкал. Він також повинен мати `r` зі значенням `5`.

```js
const tenthCircle = document.querySelectorAll('circle')[9];
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cx')), 79);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cy')), 326);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('r')), 5);
```

Код має містити 10 елементів `text`.

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

Перша позначка повинна мати `x` зі значенням приблизно `100` та `y` зі значенням приблизно `368` після застосування шкал.

```js
const firstLabel = document.querySelectorAll('text')[0];
assert.strictEqual(Math.round(firstLabel?.getAttribute('x')), 100);
assert.strictEqual(Math.round(firstLabel?.getAttribute('y')), 368);
```

Друга позначка повинна мати `x` зі значенням приблизно `168` та `y` зі значенням приблизно `181` після застосування шкал.

```js
const secondLabel = document.querySelectorAll('text')[1];
assert.strictEqual(Math.round(secondLabel?.getAttribute('x')), 168);
assert.strictEqual(Math.round(secondLabel?.getAttribute('y')), 181);
```

Третя позначка повинна мати `x` зі значенням приблизно `350` та `y` зі значенням приблизно `329` після застосування шкал.

```js
const thirdLabel = document.querySelectorAll('text')[2];
assert.strictEqual(Math.round(thirdLabel?.getAttribute('x')), 350);
assert.strictEqual(Math.round(thirdLabel?.getAttribute('y')), 329);
```

Четверта позначка повинна мати `x` зі значенням приблизно `141` та `y` зі значенням приблизно `60` після застосування шкал.

```js
const fourthLabel = document.querySelectorAll('text')[3];
assert.strictEqual(Math.round(fourthLabel?.getAttribute('x')), 141);
assert.strictEqual(Math.round(fourthLabel?.getAttribute('y')), 60);
```

П’ята позначка повинна мати `x` зі значенням приблизно `449` та `y` зі значенням приблизно `237` після застосування шкал.

```js
const fifthLabel = document.querySelectorAll('text')[4];
assert.strictEqual(Math.round(fifthLabel?.getAttribute('x')), 449);
assert.strictEqual(Math.round(fifthLabel?.getAttribute('y')), 237);
```

Шоста позначка повинна мати `x` зі значенням приблизно `280` та `y` зі значенням приблизно `306` після застосування шкал.

```js
const sixthLabel = document.querySelectorAll('text')[5];
assert.strictEqual(Math.round(sixthLabel?.getAttribute('x')), 280);
assert.strictEqual(Math.round(sixthLabel?.getAttribute('y')), 306);
```

Сьома позначка повинна мати `x` зі значенням приблизно `370` та `y` зі значенням приблизно `351` після застосування шкал.

```js
const seventhLabel = document.querySelectorAll('text')[6];
assert.strictEqual(Math.round(seventhLabel?.getAttribute('x')), 370);
assert.strictEqual(Math.round(seventhLabel?.getAttribute('y')), 351);
```

Восьма позначка повинна мати `x` зі значенням приблизно `270` та `y` зі значенням приблизно `132` після застосування шкал.

```js
const eighthLabel = document.querySelectorAll('text')[7];
assert.strictEqual(Math.round(eighthLabel?.getAttribute('x')), 270);
assert.strictEqual(Math.round(eighthLabel?.getAttribute('y')), 132);
```

Дев’ята позначка повинна мати `x` зі значенням приблизно `140` та `y` зі значенням приблизно `144` після застосування шкал.

```js
const ninthLabel = document.querySelectorAll('text')[8];
assert.strictEqual(Math.round(ninthLabel?.getAttribute('x')), 140);
assert.strictEqual(Math.round(ninthLabel?.getAttribute('y')), 144);
```

Десята позначка повинна мати `x` зі значенням приблизно `88` та `y` зі значенням приблизно `326` після застосування шкал.

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
