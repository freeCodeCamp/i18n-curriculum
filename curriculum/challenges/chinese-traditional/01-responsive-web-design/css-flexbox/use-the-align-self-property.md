---
id: 587d78af367417b2b2512b00
title: 使用 align-self 屬性
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cMbvzfv'
forumTopicId: 301107
dashedName: use-the-align-self-property
---

# --description--

The final property for flex items is `align-self`. This property allows you to adjust each item's alignment individually, instead of setting them all at once. This is useful since other common adjustment techniques using the CSS properties `float`, `clear`, and `vertical-align` do not work on flex items.

`align-self` 可設置的值與 `align-items` 的一樣，並且它會覆蓋 `align-items` 所設置的值。

# --instructions--

請爲 `#box-1` 和 `#box-2` 添加 CSS 屬性 `align-self`。 將 `#box-1` 的 `align-self` 屬性值設爲 center，將 `#box-2` 的設爲 `flex-end`。

# --hints--

`#box-1` 元素應具有 `align-self` 屬性，其屬性值應爲 `center`。

```js
const boxOne = document.querySelector('#box-1');
const alignment = window.getComputedStyle(boxOne)['align-self'];
assert.strictEqual(alignment, 'center');
```

`#box-2` 元素應具有 `align-self` 屬性，其屬性值應爲 `flex-end`。

```js
const boxTwo = document.querySelector('#box-2');
const alignment = window.getComputedStyle(boxTwo)['align-self'];
assert.strictEqual(alignment, 'flex-end');
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
    width: 200px;
  }

  #box-2 {
    background-color: orangered;

    height: 200px;
    width: 200px;
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
    align-self: center;
    height: 200px;
    width: 200px;
  }

  #box-2 {
    background-color: orangered;
    align-self: flex-end;
    height: 200px;
    width: 200px;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
