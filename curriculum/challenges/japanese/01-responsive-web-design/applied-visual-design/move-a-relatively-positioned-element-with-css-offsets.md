---
id: 587d781e367417b2b2512aca
title: 相対位置指定要素を CSS オフセットで移動させる
challengeType: 0
videoUrl: 'https://scrimba.com/c/c9bQEA4'
forumTopicId: 301065
dashedName: move-a-relatively-positioned-element-with-css-offsets
---

# --description--

The CSS offsets of `top` or `bottom`, and `left` or `right` tell the browser how far to offset an item relative to where it would sit in the normal flow of the document. You're offsetting an element away from a given spot, which moves the element away from the referenced side (effectively, the opposite direction). As you saw in the last challenge, using the `top` offset moved the `h2` downwards. Likewise, using a `left` offset moves an item to the right.

# --instructions--

CSS オフセットを使用して、`h2` を 15 ピクセル右方向に、10 ピクセル上方向に移動してください。

# --hints--

`h2` を相対的に 10px 上に配置する CSS オフセットを使用する必要があります。 言い換えれば、通常配置される場所の `bottom` から 10px 離れたところに移動させてください。

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.bottom, '10px');
```

`h2` を相対的に 15px 右に配置する CSS オフセットを使用する必要があります。 言い換えれば、通常配置される場所の `left` から 15px 離れたところに移動させてください。

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.left , '15px');
```

# --seed--

## --seed-contents--

```html
<head>
<style>
  h2 {
    position: relative;


  }
</style>
</head>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```

# --solutions--

```html
<head>
<style>
  h2 {
    position: relative;
    left: 15px;
    bottom: 10px;
  }
</style>
</head>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```
