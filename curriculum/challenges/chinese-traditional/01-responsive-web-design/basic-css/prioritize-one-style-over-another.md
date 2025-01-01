---
id: bad87fee1348bd9aedf08756
title: 樣式中的優先級
challengeType: 0
videoUrl: 'https://scrimba.com/c/cZ8wnHv'
forumTopicId: 18258
dashedName: prioritize-one-style-over-another
---

# --description--

Sometimes your HTML elements will receive multiple styles that conflict with one another.

就像 `h1` 元素不能同時設置綠色和粉色兩種顏色。

讓我們嘗試創建一個字體顏色爲粉色的 class，並應用於其中一個元素中。 猜一猜，它會 *覆蓋* `body` 元素的 `color: green;` CSS 規則嗎？

# --instructions--

創建一個能將元素的字體顏色改爲粉色的 class，並命名爲 `pink-text`。

給 `h1` 元素添加 `pink-text` class。

# --hints--

`h1` 元素應含有 `pink-text` class。

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

`<style>` 標籤應含有一個可以改變 `color` 的 `pink-text` class。

```js
assert.match(__helpers.removeCssComments(code), /\.pink-text\s*\{\s*color\s*:\s*.+\s*;?\s*\}/g);
```

`h1` 元素的字體顏色應爲粉色。

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color']; 
assert.strictEqual(color, 'rgb(255, 192, 203)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
</style>
<h1>Hello World!</h1>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
</style>
<h1 class="pink-text">Hello World!</h1>
```
