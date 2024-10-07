---
id: 587d78a6367417b2b2512adc
title: CSS 변형 속성인 SkewY를 사용하여 요소를 Y축을 따라 기울이는 방법
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MZ2uB'
forumTopicId: 301075
dashedName: use-the-css-transform-property-skewy-to-skew-an-element-along-the-y-axis
---

# --description--

Given that the `skewX()` function skews the selected element along the X-axis by a given degree, it is no surprise that the `skewY()` property skews an element along the Y (vertical) axis.

# --instructions--

`transform` 속성을 사용하여 `top` id를 가진 요소를 Y축을 따라 -10도만큼 기울이세요.

# --hints--

`top` id를 가진 요소는 Y축을 따라 -10도만큼 기울어야 합니다.

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
