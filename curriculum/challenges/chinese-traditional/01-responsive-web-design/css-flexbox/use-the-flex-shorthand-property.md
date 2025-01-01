---
id: 587d78ae367417b2b2512afe
title: 使用 flex 短方法屬性
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cbpW2tE'
forumTopicId: 301112
dashedName: use-the-flex-shorthand-property
---

# --description--

There is a shortcut available to set several flex properties at once. The `flex-grow`, `flex-shrink`, and `flex-basis` properties can all be set together by using the `flex` property.

例如，`flex: 1 0 10px;` 會把項目屬性設爲 `flex-grow: 1;`、`flex-shrink: 0;` 以及 `flex-basis: 10px;`。

屬性的默認設置是 `flex: 0 1 auto;`。

# --instructions--

請給 `#box-1` 和 `#box-2` 添加 `flex` 屬性。 設置 `#box-1` 的 `flex-grow` 屬性值爲 `2`、`flex-shrink` 屬性值爲 `2`、`flex-basis` 屬性值爲 `150px`。 設置 `#box-2` 的 `flex-grow` 屬性值爲 `1`、`flex-shrink` 屬性值爲 `1`、`flex-basis` 屬性值爲 `150px`。

通過上面的設置，在容器大於 300px 時，`#box-1` 擴大的空間會是 `#box-2` 擴大空間的兩倍；在容器小於 300px 時，前者縮小的空間會是 `#box-2` 縮小空間的兩倍。 300px 是兩個盒子的 `flex-basis` 屬性值之和。

# --hints--

`#box-1` 元素應具有 `flex` 屬性，其屬性值應爲 `2 2 150px`。

```js
const boxOne = document.querySelector('#box-1');
const flexGrow = window.getComputedStyle(boxOne)['flex-grow'];
const flexShrink = window.getComputedStyle(boxOne)['flex-shrink'];
const flexBasis = window.getComputedStyle(boxOne)['flex-basis'];

assert.equal(flexGrow, '2');
assert.equal(flexShrink, '2');
assert.equal(flexBasis, '150px');
```

`#box-2` 元素應具有 `flex` 屬性，其屬性值應爲 `1 1 150px`。

```js
const boxTwo = document.querySelector('#box-2');
const flexGrow = window.getComputedStyle(boxTwo)['flex-grow'];
const flexShrink = window.getComputedStyle(boxTwo)['flex-shrink'];
const flexBasis = window.getComputedStyle(boxTwo)['flex-basis'];

assert.equal(flexGrow, '1');
assert.equal(flexShrink, '1');
assert.equal(flexBasis, '150px');
```

應使用 `flex` 的簡寫屬性爲 `#box-1` 和 `#box-2` 添加規則。

```js
assert.lengthOf(code.match(/flex:\s*?\d\s+?\d\s+?150px;/g), 2);
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
    flex: 2 2 150px;
    height: 200px;
  }

  #box-2 {
    background-color: orangered;
    flex: 1 1 150px;
    height: 200px;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
