---
id: 587d78ae367417b2b2512afe
title: 使用 flex 短方法属性
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cbpW2tE'
forumTopicId: 301112
dashedName: use-the-flex-shorthand-property
---

# --description--

There is a shortcut available to set several flex properties at once. The `flex-grow`, `flex-shrink`, and `flex-basis` properties can all be set together by using the `flex` property.

例如，`flex: 1 0 10px;` 会把项目属性设为 `flex-grow: 1;`、`flex-shrink: 0;` 以及 `flex-basis: 10px;`。

属性的默认设置是 `flex: 0 1 auto;`。

# --instructions--

请给 `#box-1` 和 `#box-2` 添加 `flex` 属性。 设置 `#box-1` 的 `flex-grow` 属性值为 `2`、`flex-shrink` 属性值为 `2`、`flex-basis` 属性值为 `150px`。 设置 `#box-2` 的 `flex-grow` 属性值为 `1`、`flex-shrink` 属性值为 `1`、`flex-basis` 属性值为 `150px`。

通过上面的设置，在容器大于 300px 时，`#box-1` 扩大的空间会是 `#box-2` 扩大空间的两倍；在容器小于 300px 时，前者缩小的空间会是 `#box-2` 缩小空间的两倍。 300px 是两个盒子的 `flex-basis` 属性值之和。

# --hints--

`#box-1` 元素应具有 `flex` 属性，其属性值应为 `2 2 150px`。

```js
const boxOne = document.querySelector('#box-1');
const flexGrow = window.getComputedStyle(boxOne)['flex-grow'];
const flexShrink = window.getComputedStyle(boxOne)['flex-shrink'];
const flexBasis = window.getComputedStyle(boxOne)['flex-basis'];

assert.equal(flexGrow, '2');
assert.equal(flexShrink, '2');
assert.equal(flexBasis, '150px');
```

`#box-2` 元素应具有 `flex` 属性，其属性值应为 `1 1 150px`。

```js
const boxTwo = document.querySelector('#box-2');
const flexGrow = window.getComputedStyle(boxTwo)['flex-grow'];
const flexShrink = window.getComputedStyle(boxTwo)['flex-shrink'];
const flexBasis = window.getComputedStyle(boxTwo)['flex-basis'];

assert.equal(flexGrow, '1');
assert.equal(flexShrink, '1');
assert.equal(flexBasis, '150px');
```

应使用 `flex` 的简写属性为 `#box-1` 和 `#box-2` 添加规则。

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
