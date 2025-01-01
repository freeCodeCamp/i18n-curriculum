---
id: bad87fee1348bd9aedf06756
title: 內聯樣式的優先級
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJDRha'
forumTopicId: 18252
dashedName: override-class-declarations-with-inline-styles
---

# --description--

So we've proven that id declarations override class declarations, regardless of where they are declared in your `style` element CSS.

其實還有其他方法可以覆蓋 CSS 樣式。 你還記得行內樣式嗎？

# --instructions--

使用行內樣式嘗試讓 `h1` 的字體顏色變白。 記住，內聯樣式看起來是像這樣：

```html
<h1 style="color: green;">
```

`h1` 元素應繼續保留 `blue-text` 和 `pink-text` 這兩個 class。

# --hints--

`h1` 元素應包含 `pink-text` class。

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

`h1` 元素應包含 `blue-text` class。

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

`h1` 的 id 屬性值應爲 `orange-text`。

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'), 'orange-text');
```

`h1` 元素應含有行內樣式。

```js
assert.exists(document.querySelector('h1[style]'));
```

`h1` 元素的字體顏色應該爲白色。

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color']; 
assert.strictEqual(color, 'rgb(255, 255, 255)');
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
  #orange-text {
    color: orange;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
</style>
<h1 id="orange-text" class="pink-text blue-text">Hello World!</h1>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  #orange-text {
    color: orange;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
</style>
<h1 id="orange-text" class="pink-text blue-text" style="color: white">Hello World!</h1>
```
