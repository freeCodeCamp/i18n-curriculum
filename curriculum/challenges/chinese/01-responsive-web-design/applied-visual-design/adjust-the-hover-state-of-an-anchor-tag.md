---
id: 587d781d367417b2b2512ac8
title: 调整锚标签的悬停状态
challengeType: 0
videoUrl: 'https://scrimba.com/c/cakRGcm'
forumTopicId: 301035
dashedName: adjust-the-hover-state-of-an-anchor-tag
---

# --description--

This challenge will touch on the usage of pseudo-classes. A pseudo-class is a keyword that can be added to selectors, in order to select a specific state of the element.

比如，可以使用 `:hover` 伪类选择器来选取锚标签的悬停状态。 下面的代码可以在鼠标悬停在锚标签上时将其 `color` 变成红色：

```css
a:hover {
  color: red;
}
```

# --instructions--

代码编辑器里面已经有了一个 CSS 规则把所有的 `a` 标签定义成了黑色。 请添加一个规则，使得用户悬停在 `a` 标签时，标签的 `color` 变成蓝色。

# --hints--

锚标签的 `color` 应该保持黑色，应只添加 `:hover` CSS 规则。

```js
const anchorElement = document.querySelector("a"); 
const anchorStyle = window.getComputedStyle(anchorElement);
assert.equal(anchorStyle?.color, 'rgb(0, 0, 0)');
```

悬停锚标签时它的 `color` 应该变成蓝色。

```js
assert.match(code,
    /a:hover\s*?{\s*?color:\s*?(blue|rgba\(\s*?0\s*?,\s*?0\s*?,\s*?255\s*?,\s*?1\s*?\)|#00F|rgb\(\s*?0\s*?,\s*?0\s*?,\s*?255\s*?\))\s*?;\s*?}/gi
  );
```

# --seed--

## --seed-contents--

```html
<style>
  a {
    color: #000;
  }



</style>
<a href="https://freecatphotoapp.com/" target="_blank">CatPhotoApp</a>
```

# --solutions--

```html
<style>
  a {
    color: #000;
  }
  a:hover {
    color: rgba(0,0,255,1);
  }
</style>
<a href="https://freecatphotoapp.com/" target="_blank">CatPhotoApp</a>
```
