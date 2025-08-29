---
id: 587d78ae367417b2b2512afd
title: Використання властивості flex-basis для встановлення початкового розміру елемента
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/c3d9nCa'
forumTopicId: 301108
dashedName: use-the-flex-basis-property-to-set-the-initial-size-of-an-item
---

# --description--

The `flex-basis` property specifies the initial size of the item before CSS makes adjustments with `flex-shrink` or `flex-grow`.

Одиниці виміру, що використовуються властивістю `flex-basis`, дорівнюють розмірам інших властивостей (`px`, `em`, `%` тощо). Значення `auto` змінює розмір елементів на основі їхнього вмісту.

# --instructions--

Налаштуйте початковий розмір боксів за допомогою `flex-basis`. Додайте властивість CSS `flex-basis` до `#box-1` та `#box-2`. Надайте `#box-1` значення `10em`, а `#box-2` значення `20em`.

# --hints--

Елемент `#box-1` повинен мати властивість `flex-basis`.

```js
const boxOne = document.querySelector('#box-1');
const flexBasis = window.getComputedStyle(boxOne)['flex-basis'];
assert.notStrictEqual(flexBasis, 'auto');
```

Елемент `#box-1` повинен мати властивість `flex-basis`, налаштовану до значення `10em`.

```js
assert.match(code, /#box-1\s*?{\s*?.*?\s*?.*?\s*?flex-basis:\s*?10em;/g);
```

Елемент `#box-2` повинен мати властивість `flex-basis`.

```js
const boxTwo = document.querySelector('#box-2');
const flexBasis = window.getComputedStyle(boxTwo)['flex-basis'];
assert.notStrictEqual(flexBasis, 'auto');
```

Елемент `#box-2` повинен мати властивість `flex-basis`, налаштовану до значення `20em`.

```js
assert.match(code, /#box-2\s*?{\s*?.*?\s*?.*?\s*?flex-basis:\s*?20em;/g);
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
    height: 200px;

  }

  #box-2 {
    background-color: orangered;
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
    height: 200px;
    flex-basis: 10em;
  }

  #box-2 {
    background-color: orangered;
    height: 200px;
    flex-basis: 20em;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
