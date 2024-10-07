---
id: 587d78a6367417b2b2512adb
title: Usare la proprietà di trasformazione skewX per inclinare un elemento rispetto all'asse X
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLP8Sr'
forumTopicId: 301074
dashedName: use-the-css-transform-property-skewx-to-skew-an-element-along-the-x-axis
---

# --description--

The next function of the `transform` property is `skewX()`, which skews the selected element along its X (horizontal) axis by a given degree.

Il seguente codice inclina l'elemento del paragrafo di -32 gradi sull'asse X.

```css
p {
  transform: skewX(-32deg);
}
```

# --instructions--

Inclina l'elemento con l'id `bottom` di 24 gradi sull'asse X usando la proprietà `transform`.

# --hints--

L'elemento con l'id `bottom` dovrebbe essere inclinato di 24 gradi dal suo asse X.

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
