---
id: 587d78a6367417b2b2512adb
title: CSS の Transform プロパティ skewX を使用して要素を X 軸に沿ってゆがめる
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLP8Sr'
forumTopicId: 301074
dashedName: use-the-css-transform-property-skewx-to-skew-an-element-along-the-x-axis
---

# --description--

The next function of the `transform` property is `skewX()`, which skews the selected element along its X (horizontal) axis by a given degree.

次のコードは、段落要素を X 軸に沿って -32 度傾けます。

```css
p {
  transform: skewX(-32deg);
}
```

# --instructions--

`transform` プロパティを使って、id `bottom` を持つ要素を X 軸に沿って 24 度傾けてください。

# --hints--

id が `bottom` の要素は X 軸に沿って 24 度傾けられている必要があります。

```js
assert.match(code, /#bottom\s*?{\s*?.*?\s*?transform:\s*?skewX\(24deg\);/g);
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
  }
  #top {
    background-color: red;
  }
  #bottom {
    background-color: blue;

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
    margin:  50px auto;
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
