---
id: 587d78ad367417b2b2512afb
title: Використовуйте властивість flex-shrink щоб стискати об'єкти
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cd3PBfr'
forumTopicId: 301113
dashedName: use-the-flex-shrink-property-to-shrink-items
---

# --description--

So far, all the properties in the challenges apply to the flex container (the parent of the flex items). However, there are several useful properties for the flex items.

Перша - властивість `flex-shrink`. Це дозволяє об'єкту стискатись під час використання, якщо flex-контейнер є замалий. Об'єкти стискаються, коли ширина контейнера вихідних елементів є меншою за об'єднану ширину всіх flex-об'єктів в середині нього.

Властивість `flex-shrink` вважає числа за значення. Чим більше число, тим більше він буде стискатись в порівнянні з іншими об'єктами в контейнері. Наприклад, якщо один об'єкт матиме значення `flex-shrink` від `1`, а інший матиме значення `flex-shrink` від `3`, то одне зі значень від `3` стиснеться втричі більше ніж інше.

# --instructions--

Додайте CSS властивість `flex-shrink` до обох `#box-1` та `#box-2`. Надайте для `#box-1` значення `1` і для `#box-2` значення `2`.

# --hints--

Елемент `#box-1` повинен мати властивість `flex-shrink` зі значенням `1`.

```js
const boxOne = document.querySelector('#box-1');
const flexShrink = window.getComputedStyle(boxOne)['flex-shrink'];
assert.equal(flexShrink, '1');
```

Елемент `#box-2` повинен мати властивість `flex-shrink` зі значенням `2`.

```js
const boxTwo = document.querySelector('#box-2');
const flexShrink = window.getComputedStyle(boxTwo)['flex-shrink'];
assert.equal(flexShrink, '2');
```

# --seed--

## --seed-contents--

```html
<style>
  #box-container {
    display: flex;
    height: 500px;
  }
  #box-1 {
    background-color: dodgerblue;
    width: 100%;
    height: 200px;

  }

  #box-2 {
    background-color: orangered;
    width: 100%;
    height: 200px;

  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```

# --solutions--

```html
<style>
  #box-container {
    display: flex;
    height: 500px;
  }
  #box-1 {
    background-color: dodgerblue;
    width: 100%;
    height: 200px;
    flex-shrink: 1;
  }

  #box-2 {
    background-color: orangered;
    width: 100%;
    height: 200px;
    flex-shrink: 2;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
