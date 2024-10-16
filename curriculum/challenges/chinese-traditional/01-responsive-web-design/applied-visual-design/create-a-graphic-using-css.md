---
id: 587d78a6367417b2b2512add
title: 使用 CSS 創建一個圖形
challengeType: 0
videoUrl: 'https://scrimba.com/c/cEDWPs6'
forumTopicId: 301048
dashedName: create-a-graphic-using-css
---

# --description--

By manipulating different selectors and properties, you can make interesting shapes. One of the easier ones to try is a crescent moon shape. For this challenge you need to work with the `box-shadow` property that sets the shadow of an element, along with the `border-radius` property that controls the roundness of the element's corners.

首先我們來創建一個圓的、透明的圖形，它具有模糊陰影並略微向兩邊遞減。 如你所見，這個陰影其實就是新月形狀。

爲了創建一個圓形的對象，`border-radius` 應該被設置成 50%。

你應該還記得之前關卡的 `box-shadow` 屬性以及它的依次取值 `offset-x`、`offset-y`、`blur-radius`、`spread-radius` 和 `color` 值。 其中 `blur-radius` 和 `spread-radius` 是可選的。

# --instructions--

把編輯器裏的正方形元素變成新月形狀。 首先，把 `background-color` 改爲 `transparent`，接着把 `border-radius` 屬性設置成 50%，以創建一個圓形。 最後，更改 `box-shadow` 屬性，使其 `offset-x` 爲 25px，`offset-y` 爲 10px，`blur-radius` 爲 0，`spread-radius` 爲 0，`color` 爲 `blue`。

# --hints--

`background-color` 屬性值應爲 `transparent`。

```js
assert.match(code,/background-color:\s*?transparent;/gi);
```

`border-radius` 屬性的值應該設置爲 `50%`。

```js
assert.match(code,/border-radius:\s*?50%;/gi);
```

更改 `box-shadow` 屬性，使其 `offset-x` 爲 25px，`offset-y` 爲 10px，`blur-radius` 爲 0，`spread-radius` 爲 0，`color` 爲 `blue`。

```js
assert.match(code,/box-shadow:\s*?25px\s+?10px\s+?0(px)?\s+?0(px)?\s+?blue\s*?;/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .center {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100px;
    height: 100px;
    background-color: blue;
    border-radius: 0px;
    box-shadow: 25px 10px 10px 10px green;
  }

</style>
<div class="center"></div>
```

# --solutions--

```html
<style>
  .center {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100px;
    height: 100px;
    background-color: transparent;
    border-radius: 50%;
    box-shadow: 25px 10px 0 0 blue;
  }
</style>
<div class="center"></div>
```
