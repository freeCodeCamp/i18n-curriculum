---
id: bad82fee1348bd9aedf08721
title: 使用 RGB 混合颜色
challengeType: 0
videoUrl: 'https://scrimba.com/c/cm24JU6'
forumTopicId: 18368
dashedName: use-rgb-to-mix-colors
---

# --description--

Just like with hex code, you can mix colors in RGB by using combinations of different values.

# --instructions--

将 `style` 标签里面中的十六进制编码替换为正确的 RGB 值。

<table><tbody><tr><th>Color</th><th>RGB</th></tr><tr><td>Blue</td><td><code>rgb(0, 0, 255)</code></td></tr><tr><td>Red</td><td><code>rgb(255, 0, 0)</code></td></tr><tr><td>Orchid</td><td><code>rgb(218, 112, 214)</code></td></tr><tr><td>Sienna</td><td><code>rgb(160, 82, 45)</code></td></tr></tbody></table>

# --hints--

文本内容为 `I am red!` 的 `h1` 元素的 `color` 值应为红色。

```js
const redText = document.querySelector('.red-text');
const color = window.getComputedStyle(redText)['color']; 
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

红色应使用 `rgb` 值来表示。

```js
assert.match(code, /\.red-text\s*{\s*color\s*:\s*rgb\(\s*255\s*,\s*0\s*,\s*0\s*\)\s*;?\s*}/gi);
```

文本内容为 `I am orchid!` 的 `h1` 元素的 `color` 应为淡紫色。

```js
const orchidText = document.querySelector('.orchid-text');
const color = window.getComputedStyle(orchidText)['color']; 
assert.strictEqual(color, 'rgb(218, 112, 214)');
```

淡紫色应使用 `rgb` 值来表示。

```js
assert.match(__helpers.removeCssComments(code), /\.orchid-text\s*{\s*color\s*:\s*rgb\(\s*218\s*,\s*112\s*,\s*214\s*\)\s*;?\s*}/gi);
```

文本内容为 `I am blue!` 的 `h1` 元素的 `color` 应为蓝色。

```js
const blueText = document.querySelector('.blue-text');
const color = window.getComputedStyle(blueText)['color']; 
assert.strictEqual(color, 'rgb(0, 0, 255)');
```

蓝色应使用 `rgb` 值来表示。

```js
assert.match(__helpers.removeCssComments(code), /\.blue-text\s*{\s*color\s*:\s*rgb\(\s*0\s*,\s*0\s*,\s*255\s*\)\s*;?\s*}/gi);
```

文本内容为 `I am sienna!` 的 `h1` 元素的 `color` 应为赭黄色。

```js
const siennaText = document.querySelector('.sienna-text');
const color = window.getComputedStyle(siennaText)['color']; 
assert.strictEqual(color, 'rgb(160, 82, 45)');
```

赭黄色应使用 `rgb` 值来表示。

```js
assert.match(__helpers.removeCssComments(code), /\.sienna-text\s*{\s*color\s*:\s*rgb\(\s*160\s*,\s*82\s*,\s*45\s*\)\s*;?\s*}/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .red-text {
    color: #000000;
  }
  .orchid-text {
    color: #000000;
  }
  .sienna-text {
    color: #000000;
  }
  .blue-text {
    color: #000000;
  }
</style>

<h1 class="red-text">I am red!</h1>

<h1 class="orchid-text">I am orchid!</h1>

<h1 class="sienna-text">I am sienna!</h1>

<h1 class="blue-text">I am blue!</h1>
```

# --solutions--

```html
<style>
  .red-text {
    color: rgb(255, 0, 0);
  }
  .orchid-text {
    color: rgb(218, 112, 214);
  }
  .sienna-text {
    color: rgb(160, 82, 45);
  }
  .blue-text {
    color:rgb(0, 0, 255);
  }
</style>

<h1 class="red-text">I am red!</h1>

<h1 class="orchid-text">I am orchid!</h1>

<h1 class="sienna-text">I am sienna!</h1>

<h1 class="blue-text">I am blue!</h1>
```
