---
id: 587d78ae367417b2b2512afc
title: Використовуйте flex-grow властивість для розширення об'єктів
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/c2p78cg'
forumTopicId: 301111
dashedName: use-the-flex-grow-property-to-expand-items
---

# --description--

The opposite of `flex-shrink` is the `flex-grow` property. Recall that `flex-shrink` controls the size of the items when the container shrinks. The `flex-grow` property controls the size of items when the parent container expands.

Наприклад, якщо один об'єкт матиме значення `flex-grow` від `1`, а інший матиме значення `flex-grow` від `3`, то одне зі значень від `3` стиснеться втричі більше ніж інше.

# --instructions--

Додайте CSS властивість `flex-grow` до обох `#box-1` та `#box-2`. Надайте для `#box-1` значення `1`, і для `#box-2` значення `2`.

# --hints--

Елемент `#box-1` повинен мати властивість `flex-grow` зі значенням `1`.

```js
const boxOne = document.querySelector('#box-1');
const flexGrow = window.getComputedStyle(boxOne)['flex-grow'];
assert.equal(flexGrow, '1');
```

Елемент `#box-2` повинен мати властивість `flex-grow` зі значенням `2`.

```js
const boxTwo = document.querySelector('#box-2');
const flexGrow = window.getComputedStyle(boxTwo)['flex-grow'];
assert.equal(flexGrow, '2');
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
    flex-grow: 1;
  }

  #box-2 {
    background-color: orangered;
    height: 200px;
    flex-grow: 2;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
