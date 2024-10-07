---
id: 587d781e367417b2b2512acb
title: З'єднайте елемент з батьківським елементом за допомогою абсолютної розстановки
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLJ7c3'
forumTopicId: 301060
dashedName: lock-an-element-to-its-parent-with-absolute-positioning
---

# --description--

The next option for the CSS `position` property is `absolute`, which locks the element in place relative to its parent container. Unlike the `relative` position, this removes the element from the normal flow of the document, so surrounding items ignore it. The CSS offset properties (top or bottom and left or right) are used to adjust the position.

Один нюанс з абсолютною розстановкою полягає в тому, що він буде приєднаний до найближчого *positioned* родича. Якщо ви забудете додати правило розстановки до батьківського елемента (зазвичай це відбувається під час використання `position: relative;`), браузер продовжить шукати ланцюжок і за замовчуванням перемикатися на теґ `body`.

# --instructions--

Приєднайте елемент `#searchbar` до правого верхнього кута його батьківського елемента `section`, зазначивши його `position` як `absolute`. Надайте теґам `top` і `right` значення по 50 пікселів.

# --hints--

Елемент `#searchbar` має містити `position`, встановлену на `absolute`.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.position, 'absolute');
```

Ваш код має використовувати зміщення CSS `top` зі значенням 50 пікселів на елементі `#searchbar`.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.top, '50px');
```

Ваш код має використовувати зміщення CSS `right` зі значенням 50 пікселів на елементі `#searchbar`.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.right, '50px');
```

# --seed--

## --seed-contents--

```html
<style>
  #searchbar {



  }
  section {
    position: relative;
  }
</style>
<body>
  <h1>Welcome!</h1>
  <section>
    <form id="searchbar">
      <label for="search">Search:</label>
      <input type="search" id="search" name="search">
      <input type="submit" name="submit" value="Go!">
    </form>
  </section>
</body>
```

# --solutions--

```html
<style>
  #searchbar {
    position: absolute;
    top: 50px;
    right: 50px;
  }
  section {
    position: relative;
  }
</style>
<body>
  <h1>Welcome!</h1>
  <section>
    <form id="searchbar">
      <label for="search">Search:</label>
      <input type="search" id="search" name="search">
      <input type="submit" name="submit" value="Go!">
    </form>
  </section>
</body>
```
