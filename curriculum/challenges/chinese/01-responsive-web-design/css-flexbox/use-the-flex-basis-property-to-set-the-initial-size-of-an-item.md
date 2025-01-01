---
id: 587d78ae367417b2b2512afd
title: 使用 flex-basis 属性设置元素的初始大小
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/c3d9nCa'
forumTopicId: 301108
dashedName: use-the-flex-basis-property-to-set-the-initial-size-of-an-item
---

# --description--

The `flex-basis` property specifies the initial size of the item before CSS makes adjustments with `flex-shrink` or `flex-grow`.

`flex-basis` 属性的单位与其他表示尺寸的属性的单位一致（`px`、`em`、`%` 等）。 如果值为 `auto`，则项目的尺寸随内容调整。

# --instructions--

使用 `flex-basis` 为盒子设置初始值。 请给 `#box-1` 和 `#box-2` 添加 CSS 属性 `flex-basis`。 设置 `#box-1` 的尺寸初始值为 `10em`，`#box-2` 的尺寸初始值为 `20em`。

# --hints--

`#box-1` 元素应具有 `flex-basis` 属性。

```js
const boxOne = document.querySelector('#box-1');
const flexBasis = window.getComputedStyle(boxOne)['flex-basis'];
assert.notStrictEqual(flexBasis, 'auto');
```

`#box-1` 的 `flex-basis` 属性值应为 `10em`。

```js
assert.match(code, /#box-1\s*?{\s*?.*?\s*?.*?\s*?flex-basis:\s*?10em;/g);
```

`#box-2` 元素应具有 `flex-basis` 属性。

```js
const boxTwo = document.querySelector('#box-2');
const flexBasis = window.getComputedStyle(boxTwo)['flex-basis'];
assert.notStrictEqual(flexBasis, 'auto');
```

`#box-2` 的 `flex-basis` 属性值应为 `20em`。

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
