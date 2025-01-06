---
id: bad87fee1348bd9aedf06756
title: Sobrescrever estilos de classe com estilos inline
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJDRha'
forumTopicId: 18252
dashedName: override-class-declarations-with-inline-styles
---

# --description--

So we've proven that id declarations override class declarations, regardless of where they are declared in your `style` element CSS.

Existem outras maneiras de sobrescrever o CSS. Você se lembra dos estilos inline?

# --instructions--

Use um estilo inline para tentar tornar o elemento `h1` branco. Lembre-se, estilos inline são declarados dessa forma:

```html
<h1 style="color: green;">
```

Não apague as classes `blue-text` e `pink-text` do elemento `h1`.

# --hints--

O elemento `h1` deve ter a classe `pink-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

O elemento `h1` deve ter a classe `blue-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

O elemento `h1` deve ter o id `orange-text`.

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'), 'orange-text');
```

O elemento `h1` deve ter um estilo inline.

```js
assert.exists(document.querySelector('h1[style]'));
```

O elemento `h1` deve ser branco.

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
