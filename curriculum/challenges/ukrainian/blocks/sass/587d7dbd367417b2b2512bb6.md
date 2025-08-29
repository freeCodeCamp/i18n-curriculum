---
id: 587d7dbd367417b2b2512bb6
title: Створіть багаторазовий CSS за допомогою міксинів
challengeType: 0
forumTopicId: 301455
dashedName: create-reusable-css-with-mixins
---

# --description--

<dfn>Міксин</dfn> у Sass — це група оголошень CSS, які можна повторно використовувати у таблиці стилів. Визначення починається з директиви `@mixin`, після якої пишуть назву. Ви застосовуєте міксин за допомогою директиви `@include`.

```scss
@mixin reset-list {
  margin: 0;
  padding: 0;
  list-style: none;
}

nav ul {
  @include reset-list;
}
```

Компілюється у:

```css
nav ul {
  margin: 0;
  padding: 0;
  list-style: none;
}
```

Міксини також можуть приймати аргументи, що дозволяє налаштувати їхню поведінку. Аргументи потрібні під час використання міксину.

```scss
@mixin prose($font-size, $spacing) {
  font-size: $font-size;
  margin: 0;
  margin-block-end: $spacing;
}

p {
  @include prose(1.25rem, 1rem);
}

h2 {
  @include prose(2.4rem, 1.5rem);
}
```

Аргументи можна зробити необов’язковими, надавши параметрам значення за замовчуванням.

```scss
@mixin text-color($color: black) {
  color: $color;
}

p {
  @include text-color(); /* color: black */
}

nav a {
  @include text-color(orange);
}
```

# --instructions--

Напишіть міксин під назвою `shape` і надайте йому 3 параметри: `$w`, `$h` та `$bg-color`.

Використайте міксин `shape`, щоб надати елементу `#square` ширину та висоту зі значенням `50px` і червоний колір фону (`red`). До елемента `#rect-a` додайте ширину `100px`, висоту `50px` та блакитний колір фону (`blue`). Вкінці до елемента `#rect-b` додайте ширину `50px`, висоту `100px` та оранжевий колір фону (`orange`).

# --hints--

Оголосіть міксин під назвою `shape` із 3 параметрами: `$w`, `$h` та `$bg-color`.

```js
assert.match(code, /@mixin\s+shape\s*\(\s*\$w,\s*\$h,\s*\$bg-color\s*\)\s*{/gi);
```

Міксин має містити властивість `width`, яка використовує параметр `$w`.

```js
assert.match(__helpers.removeWhiteSpace(code), /width:\$w;/gi);
```

Міксин має містити властивість `height`, яка використовує параметр `$h`.

```js
assert.match(__helpers.removeWhiteSpace(code), /height:\$h;/gi);
```

Міксин має містити властивість `background-color`, яка використовує параметр `$bg-color`.

```js
assert.match(__helpers.removeWhiteSpace(code), /background-color:\$bg\-color;/gi);
```

Замініть стилі всередині селектора `#square` на виклик міксину `shape` за допомогою ключового слова `@include`. Встановіть ширину та висоту на `50px`, а колір фону — на `red`.

```js
assert.match(code, /#square\s*{\s*@include\s+shape\s*\(\s*50px\s*,\s*50px\s*,\s*red\s*\)\s*;\s*}/gi);
```

Замініть стилі всередині селектора `#rect-a` на виклик міксину `shape` за допомогою ключового слова `@include`. Встановіть ширину на `100px`, висоту — на `50px`, а колір фону — на `blue`.

```js
assert.match(code, /#rect-a\s*{\s*@include\s+shape\s*\(\s*100px\s*,\s*50px\s*,\s*blue\s*\)\s*;\s*}/gi);
```

Замініть стилі всередині селектора `#rect-b` на виклик міксину `shape` за допомогою ключового слова `@include`. Встановіть ширину на `50px`, висоту — на `100px`, а колір фону — на `orange`.

```js
assert.match(code, /#rect-b\s*{\s*@include\s+shape\s*\(\s*50px\s*,\s*100px\s*,\s*orange\s*\)\s*;\s*}/gi);
```

# --seed--

## --seed-contents--

```html
<style type='text/scss'>
#square {
  width: 50px;
  height: 50px;
  background-color: red;
}

#rect-a {
  width: 100px;
  height: 50px;
  background-color: blue;
}

#rect-b {
  width: 50px;
  height: 100px;
  background-color: orange;
}
</style>

<div id="square"></div>
<div id="rect-a"></div>
<div id="rect-b"></div>
```

# --solutions--

```html
<style type='text/scss'>
@mixin shape($w, $h, $bg-color) {
  width: $w;
  height: $h;
  background-color: $bg-color;
}

#square {
  @include shape(50px, 50px, red);
}

#rect-a {
  @include shape(100px, 50px, blue);
}

#rect-b {
  @include shape(50px, 100px, orange);
}
</style>

<div id="square"></div>
<div id="rect-a"></div>
<div id="rect-b"></div>
```
