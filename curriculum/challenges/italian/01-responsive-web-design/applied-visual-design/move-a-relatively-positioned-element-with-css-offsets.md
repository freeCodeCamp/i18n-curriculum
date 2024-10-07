---
id: 587d781e367417b2b2512aca
title: Spostare un elemento posizionato relativamente con gli offset CSS
challengeType: 0
videoUrl: 'https://scrimba.com/c/c9bQEA4'
forumTopicId: 301065
dashedName: move-a-relatively-positioned-element-with-css-offsets
---

# --description--

The CSS offsets of `top` or `bottom`, and `left` or `right` tell the browser how far to offset an item relative to where it would sit in the normal flow of the document. You're offsetting an element away from a given spot, which moves the element away from the referenced side (effectively, the opposite direction). As you saw in the last challenge, using the `top` offset moved the `h2` downwards. Likewise, using a `left` offset moves an item to the right.

# --instructions--

Usa gli spostamenti CSS per spostare `h2` di 15 pixel verso destra e 10 pixel verso l'alto.

# --hints--

Il tuo codice dovrebbe utilizzare un offset CSS per posizionare `h2` di 10px verso l'alto. In altre parole, spostalo di 10px lontano dal lato `bottom` rispetto alla sua posizione normale.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.bottom, '10px');
```

Il tuo codice dovrebbe utilizzare un offset CSS per posizionare relativamente l'`h2` di 15px verso destra. In altre parole, spostalo 15px lontano dal lato `left` di dove si trova normalmente.

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
