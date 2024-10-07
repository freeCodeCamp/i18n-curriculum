---
id: 587d78a5367417b2b2512ad7
title: 使用 CSS 線性漸變創建條紋元素
challengeType: 0
videoUrl: 'https://scrimba.com/c/c6bmQh2'
forumTopicId: 301072
dashedName: use-a-css-linear-gradient-to-create-a-striped-element
---

# --description--

The `repeating-linear-gradient()` function is very similar to `linear-gradient()` with the major difference that it repeats the specified gradient pattern. `repeating-linear-gradient()` accepts a variety of values, but for simplicity, you'll work with an angle value and color stop values in this challenge.

角度就是漸變的方向。 色標代表漸變顏色及發生漸變的位置，由百分比或者像素值表示。

在代碼編輯器的例子裏，漸變開始於 0 像素位置的 `yellow`，然後過渡到距離開始位置 40 像素的 `blue`。 由於下一個漸變顏色的起始位置也是 40 像素，所以顏色直接漸變成第三個顏色值 `green`，然後過渡到距離開始位置 80 像素的 `red`。

下面的代碼可以幫助理解成對的起止漸變顏色值是如何過渡的。

```css
0px [yellow -- blend -- blue] 40px [green -- blend -- red] 80px
```

如果每對起止漸變顏色值的顏色都是相同的，由於是在兩個相同的顏色間過渡，那麼中間的過渡色也爲同色，接着就是同色的過渡色和下一個起止顏色，最終產生的效果就是條紋。

# --instructions--

使用 `repeating-linear-gradient()` 函數創建一個漸變角度爲 `45deg` 的條紋，然後設置第一對漸變顏色爲 `yellow`，第二對漸變顏色爲 `black`。

# --hints--

`repeating-linear-gradient()` 的漸變角度應爲 45deg。

```js
assert.match(code,/background:\s*?repeating-linear-gradient\(\s*?45deg/gi);
```

`repeating-linear-gradient()` 的漸變角度應該不再是 90deg。

```js
assert.notMatch(code, /90deg/gi);
```

0px 處的漸變顏色應該是 `yellow`。

```js
assert.match(code, /yellow\s+?0(px)?/gi);
```

40 像素處的第一個色標應該是 `yellow`。

```js
assert.match(code, /yellow\s+?40px/gi);
```

40px 處的第二個漸變顏色應該是 `black`。

```js
assert.match(code, /yellow\s+?40px,\s*?black\s+?40px/gi);
```

80px 處的最後一個漸變顏色應該是 `black`。

```js
assert.match(code, /black\s+?80px/gi);
```

# --seed--

## --seed-contents--

```html
<style>

  div{
    border-radius: 20px;
    width: 70%;
    height: 400px;
    margin:  50 auto;
    background: repeating-linear-gradient(
      90deg,
      yellow 0px,
      blue 40px,
      green 40px,
      red 80px
    );
  }

</style>

<div></div>
```

# --solutions--

```html
<style>
  div{
    border-radius: 20px;
    width: 70%;
    height: 400px;
    margin:  50 auto;
    background: repeating-linear-gradient(
      45deg,
      yellow 0px,
      yellow 40px,
      black 40px,
      black 80px
    );
  }
</style>
<div></div>
```
