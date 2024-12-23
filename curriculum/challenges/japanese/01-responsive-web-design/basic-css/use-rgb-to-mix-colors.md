---
id: bad82fee1348bd9aedf08721
title: RGB を使用して色を調整する
challengeType: 0
videoUrl: 'https://scrimba.com/c/cm24JU6'
forumTopicId: 18368
dashedName: use-rgb-to-mix-colors
---

# --description--

16 進数コードと同様に、RGB でも異なる値を組み合わせて色を混ぜることができます。

# --instructions--

`style` 要素の中の 16 進数カラーコードを正しい RGB 値で置き換えてください。

<table><tbody><tr><th>色</th><th>RGB</th></tr><tr><td>青</td><td><code>rgb(0, 0, 255)</code></td></tr><tr><td>赤</td><td><code>rgb(255, 0, 0)</code></td></tr><tr><td>オーキッド</td><td><code>rgb(218, 112, 214)</code></td></tr><tr><td>シエナ</td><td><code>rgb(160, 82, 45)</code></td></tr></tbody></table>

# --hints--

テキストが `I am red!` の `h1` 要素の `color` は赤にしてください。

```js
const redText = document.querySelector('.red-text');
const color = window.getComputedStyle(redText)['color']; 
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

赤色の指定には `rgb` を使用してください。

```js
assert.match(code, /\.red-text\s*{\s*color\s*:\s*rgb\(\s*255\s*,\s*0\s*,\s*0\s*\)\s*;?\s*}/gi);
```

テキストが `I am orchid!` の `h1` 要素の `color` はオーキッドにしてください。

```js
const orchidText = document.querySelector('.orchid-text');
const color = window.getComputedStyle(orchidText)['color']; 
assert.strictEqual(color, 'rgb(218, 112, 214)');
```

オーキッドの指定には `rgb` を使用してください。

```js
assert.match(__helpers.removeCssComments(code), /\.orchid-text\s*{\s*color\s*:\s*rgb\(\s*218\s*,\s*112\s*,\s*214\s*\)\s*;?\s*}/gi);
```

テキストが `I am blue!` の `h1` 要素の `color` は青にしてください。

```js
const blueText = document.querySelector('.blue-text');
const color = window.getComputedStyle(blueText)['color']; 
assert.strictEqual(color, 'rgb(0, 0, 255)');
```

青色の指定には `rgb` を使用してください。

```js
assert.match(__helpers.removeCssComments(code), /\.blue-text\s*{\s*color\s*:\s*rgb\(\s*0\s*,\s*0\s*,\s*255\s*\)\s*;?\s*}/gi);
```

テキストが `I am sienna!` の `h1` 要素の `color` はシエナにしてください。

```js
const siennaText = document.querySelector('.sienna-text');
const color = window.getComputedStyle(siennaText)['color']; 
assert.strictEqual(color, 'rgb(160, 82, 45)');
```

シエナの指定には `rgb` を使用してください。

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
