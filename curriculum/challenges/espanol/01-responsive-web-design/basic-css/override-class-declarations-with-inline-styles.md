---
id: bad87fee1348bd9aedf06756
title: Sobreescribe declaraciones de clase con inline styles (estilos en línea)
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJDRha'
forumTopicId: 18252
dashedName: override-class-declarations-with-inline-styles
---

# --description--

Hemos demostrado que las declaraciones de id tienen prioridad por sobre las declaraciones de clase, independientemente de dónde hayan sido declaradas en el código CSS del elemento `style`.

Hay otras formas de sobreescribir CSS. ¿Recuerdas los "inline styles" (estilos en línea)?

# --instructions--

Usa un inline style para hacer que nuestro elemento `h1` sea de color blanco. Recuerda, los estilos en línea se ven así:

```html
<h1 style="color: green;">
```

Deja las clases `blue-text` y `pink-text` en tu elemento `h1`.

# --hints--

Tu elemento `h1` debe incluir la clase `pink-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

Tu elemento `h1` debe incluir la clase `blue-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

Tu elemento `h1` debe incluir el id `orange-text`.

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'), 'orange-text');
```

Tu elemento `h1` debe tener un inline style.

```js
assert.exists(document.querySelector('h1[style]'));
```

Tu elemento `h1` debe ser de color blanco ("white").

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
