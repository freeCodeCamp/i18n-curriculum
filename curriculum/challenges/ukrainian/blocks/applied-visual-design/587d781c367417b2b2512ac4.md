---
id: 587d781c367417b2b2512ac4
title: Встановлення розміру шрифту тексту абзацу
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJ36Cr'
forumTopicId: 301068
dashedName: set-the-font-size-of-paragraph-text
---

# --description--

The `font-size` property in CSS is not limited to headings, it can be applied to any element containing text.

# --instructions--

Абзац стане більш видимий, якщо змінити значення властивості `font-size` до 16px.

# --hints--

Ваш тег `p` повинен мати розмір шрифту 16 pixels `font-size`.

```js
const pElement =document.querySelector('p')
const pStyle = window.getComputedStyle(pElement);
assert.equal(pStyle?.fontSize, '16px');
```

# --seed--

## --seed-contents--

```html
<style>
  p {
    font-size: 10px;
  }
</style>
<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
</p>
```

# --solutions--

```html
<style>
  p {
    font-size: 16px;
  }
</style>
<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
</p>
```
