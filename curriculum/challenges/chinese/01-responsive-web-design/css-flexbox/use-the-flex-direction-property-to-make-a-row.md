---
id: 587d78ab367417b2b2512af2
title: 使用 flex-direction 属性创建一个行
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cBEkbfJ'
forumTopicId: 301110
dashedName: use-the-flex-direction-property-to-make-a-row
---

# --description--

Adding `display: flex` to an element turns it into a flex container. This makes it possible to align any children of that element into rows or columns. You do this by adding the `flex-direction` property to the parent item and setting it to row or column. Creating a row will align the children horizontally, and creating a column will align the children vertically.

`flex-direction` 的其他可选值还有 `row-reverse` 和 `column-reverse`。

**注意：** `flex-direction` 的默认值为 `row`。

# --instructions--

请为 `#box-container` 添加 CSS 属性 `flex-direction`，将其值设为 `row-reverse`。

# --hints--

`#box-container` 元素应有 `flex-direction` 属性，其属性值应为 `row-reverse`。

```js
const boxContainer = document.querySelector('#box-container');
const flexDirection = window.getComputedStyle(boxContainer)['flex-direction'];
assert.strictEqual(flexDirection, 'row-reverse');
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
    width: 50%;
    height: 50%;
  }

  #box-2 {
    background-color: orangered;
    width: 50%;
    height: 50%;
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
    flex-direction: row-reverse;
  }
  #box-1 {
    background-color: dodgerblue;
    width: 50%;
    height: 50%;
  }

  #box-2 {
    background-color: orangered;
    width: 50%;
    height: 50%;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
