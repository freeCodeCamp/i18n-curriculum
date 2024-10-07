---
id: 587d78a6367417b2b2512adc
title: 使用 CSS Transform skex 屬性沿Y軸傾斜元素
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MZ2uB'
forumTopicId: 301075
dashedName: use-the-css-transform-property-skewy-to-skew-an-element-along-the-y-axis
---

# --description--

Given that the `skewX()` function skews the selected element along the X-axis by a given degree, it is no surprise that the `skewY()` property skews an element along the Y (vertical) axis.

# --instructions--

使用 `transform` 屬性沿 Y 軸翻轉 id 爲 `top` 的元素 -10 度。

# --hints--

id 爲 `top` 的元素應該沿着 Y 軸翻轉 -10 度。

```js
assert.match(code, /#top\s*?{\s*?.*?\s*?transform:\s*?skewY\(-10deg\);/g);
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin: 50px auto;
  }
  #top {
    background-color: red;

  }
  #bottom {
    background-color: blue;
    transform: skewX(24deg);
  }
</style>

<div id="top"></div>
<div id="bottom"></div>
```

# --solutions--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin: 50px auto;
  }
  #top {
    background-color: red;
    transform: skewY(-10deg);
  }
  #bottom {
    background-color: blue;
    transform: skewX(24deg);
  }
</style>
<div id="top"></div>
<div id="bottom"></div>
```
