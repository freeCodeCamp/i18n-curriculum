---
id: bad87fee1248bd9aedf08824
title: 給元素的每一側添加不同的外邊距
challengeType: 0
videoUrl: 'https://scrimba.com/c/cg4RWh4'
forumTopicId: 16633
dashedName: add-different-margins-to-each-side-of-an-element
---

# --description--

Sometimes you will want to customize an element so that it has a different `margin` on each of its sides.

CSS 允許你使用 `margin-top`、`margin-right`、`margin-bottom`、`margin-left` 屬性來設置四個不同方向的 `margin` 值。

# --instructions--

請將藍色框的頂部和左側 `margin` 屬性值設置爲 `40px`，將底部和右側的屬性值設置爲 `20px`。

# --hints--

class 爲 `blue-box` 的元素的上外邊距屬性值 `margin` 應爲 `40px`。

```js
const blueBox = document.querySelector('.blue-box');
const marginTop = window.getComputedStyle(blueBox)['margin-top'];
assert.strictEqual(marginTop, '40px');
```

class 爲 `blue-box` 的元素的右外邊距屬性值 `margin` 應爲 `20px`。

```js
const blueBox = document.querySelector('.blue-box');
const marginRight = window.getComputedStyle(blueBox)['margin-right'];
assert.strictEqual(marginRight, '20px');
```

class 爲 `blue-box` 的元素的下外邊距屬性值 `margin` 應爲 `20px`。

```js
const blueBox = document.querySelector('.blue-box');
const marginBottom = window.getComputedStyle(blueBox)['margin-bottom'];
assert.strictEqual(marginBottom, '20px');
```

class 爲 `blue-box` 的元素的左外邊距屬性值 `margin` 應爲 `40px`。

```js
const blueBox = document.querySelector('.blue-box');
const marginLeft = window.getComputedStyle(blueBox)['margin-left'];
assert.strictEqual(marginLeft,'40px');
```

# --seed--

## --seed-contents--

```html
<style>
  .injected-text {
    margin-bottom: -25px;
    text-align: center;
  }

  .box {
    border-style: solid;
    border-color: black;
    border-width: 5px;
    text-align: center;
  }

  .yellow-box {
    background-color: yellow;
    padding: 10px;
  }

  .red-box {
    background-color: crimson;
    color: #fff;
    margin-top: 40px;
    margin-right: 20px;
    margin-bottom: 20px;
    margin-left: 40px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```

# --solutions--

```html
<style>
  .injected-text {
    margin-bottom: -25px;
    text-align: center;
  }

  .box {
    border-style: solid;
    border-color: black;
    border-width: 5px;
    text-align: center;
  }

  .yellow-box {
    background-color: yellow;
    padding: 10px;
  }

  .red-box {
    background-color: crimson;
    color: #fff;
    margin-top: 40px;
    margin-right: 20px;
    margin-bottom: 20px;
    margin-left: 40px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
    margin-top: 40px;
    margin-right: 20px;
    margin-bottom: 20px;
    margin-left: 40px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```
