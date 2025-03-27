---
id: 587d7fa8367417b2b2512bcc
title: Відтворіть фігури за допомогою SVG
challengeType: 6
forumTopicId: 301485
dashedName: display-shapes-with-svg
---

# --description--

The last challenge created an `svg` element with a given width and height, which was visible because it had a `background-color` applied to it in the `style` tag. The code made space for the given width and height.

Наступним кроком є створення фігур, які знаходитимуться в площині `svg`. В SVG існує безліч підтримуваних фігур, серед яких прямокутники та круги. Їх використовують, щоб представити дані. Наприклад, прямокутник SVG (`<rect>`) може створити стовпчик в стовпчиковій діаграмі.

Якщо ви розміщуєте фігуру в площині `svg`, то її місце можна вказати за допомогою координат `x` та `y`. Початок координат (0, 0) знаходиться у верхньому лівому куті. Додатні значення `x` переміщують фігуру праворуч, а додатні значення `y` переміщують фігуру вниз від початку координат.

Щоб розмістити фігуру посередині `svg` зі значеннями 500 (ширина) x 100 (висота) з попереднього завдання, координатою `x` буде 250, а координатою `y` буде 50.

`rect` має чотири атрибути. Існують координати `x` та `y`, від яких залежить місце розміщення в площині `svg`. Він також має `height` та `width` для визначення розміру.

# --instructions--

Додайте фігуру `rect` до `svg` за допомогою `append()` та надайте їй атрибут `width` зі значенням `25` і атрибут `height` зі значенням `100`. Також надайте `rect` атрибути `x` та `y` зі значенням `0`.

# --hints--

Документ має містити 1 елемент `rect`.

```js
assert.lengthOf(document.querySelectorAll('rect'), 1);
```

Елемент `rect` повинен мати атрибут `width` зі значенням `25`.

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('width'), '25');
```

Елемент `rect` повинен мати атрибут `height` зі значенням `100`.

```js
assert.strictEqual(
  document.querySelector('rect')?.getAttribute('height'),
  '100'
);
```

Елемент `rect` повинен мати атрибут `x` зі значенням `0`.

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('x'), '0');
```

Елемент `rect` повинен мати атрибут `y` зі значенням `0`.

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
