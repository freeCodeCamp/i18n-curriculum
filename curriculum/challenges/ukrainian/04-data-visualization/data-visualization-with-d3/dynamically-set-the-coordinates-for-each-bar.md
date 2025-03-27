---
id: 587d7fa9367417b2b2512bce
title: Встановіть координати кожного стовпчика динамічно
challengeType: 6
forumTopicId: 301487
dashedName: dynamically-set-the-coordinates-for-each-bar
---

# --description--

The last challenge created and appended a rectangle to the `svg` element for each point in `dataset` to represent a bar. Unfortunately, they were all stacked on top of each other.

Атрибути `x` та `y` відповідають за розміщення прямокутника. Вони повідомляють D3, де починати малювати фігуру в площині `svg`. В попередньому завданні ви встановили їх на 0, тому кожен стовпчик розміщено у верхньому лівому куті.

У стовпчиковій діаграмі всі стовпчики мають розташовуватись на однаковому вертикальному рівні, тобто значення `y` залишається незмінним (0) для всіх стовпчиків. Однак при додаванні нових стовпчиків потрібно змінювати значення `x`. Пам’ятайте, що більші значення `x` зміщують елементи праворуч. Значення `x` має збільшуватись при перегляді масиву елементів у `dataset`.

Метод `attr()` в D3 приймає функцію зворотнього виклику, щоб встановити цей атрибут динамічно. Функція зворотнього виклику приймає два аргументи: для самої точки даних (зазвичай `d`) та для індексу точки даних у масиві. Другий аргумент для індексу необов’язковий. Ось формат:

```js
selection.attr('property', (d, i) => {});
```

Варто зауважити, що НЕ потрібно писати цикл `for` або використовувати `forEach()`, щоб перебрати елементи в наборі даних. Пригадайте, що метод `data()` парсить набір даних, а будь-який метод, приєднаний після `data()`, запускається один раз для кожного елемента в наборі даних.

# --instructions--

Змініть атрибут `x` функції зворотного виклику, щоб вона повернула індекс, помножений на 30.

**Примітка:** ширина кожного стовпчика становить 25, тому при збільшенні значення `x` у 30 раз збільшується відстань між стовпчиками. У цьому прикладі спрацювало б будь-яке значення, більше за 25.

# --hints--

Перший `rect` повинен мати `x` зі значенням `0`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[0]?.getAttribute('x'),
  '0'
);
```

Другий `rect` повинен мати `x` зі значенням `30`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[1]?.getAttribute('x'),
  '30'
);
```

Третій `rect` повинен мати `x` зі значенням `60`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[2]?.getAttribute('x'),
  '60'
);
```

Четвертий `rect` повинен мати `x` зі значенням `90`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[3]?.getAttribute('x'),
  '90'
);
```

П’ятий `rect` повинен мати `x` зі значенням `120`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[4]?.getAttribute('x'),
  '120'
);
```

Шостий `rect` повинен мати `x` зі значенням `150`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[5]?.getAttribute('x'),
  '150'
);
```

Сьомий `rect` повинен мати `x` зі значенням `180`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[6]?.getAttribute('x'),
  '180'
);
```

Восьмий `rect` повинен мати `x` зі значенням `210`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[7]?.getAttribute('x'),
  '210'
);
```

Дев’ятий `rect` повинен мати `x` зі значенням `240`.

```js
assert.strictEqual(
  document.querySelectorAll('rect')[8]?.getAttribute('x'),
  '240'
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
      .attr('x', (d, i) => {
        // Add your code below this line



        // Add your code above this line
      })
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
      .attr('x', (d, i) => {
        return i * 30;
      })
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', 100);
  </script>
</body>
```
