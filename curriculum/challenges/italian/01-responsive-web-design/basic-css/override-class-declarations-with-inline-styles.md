---
id: bad87fee1348bd9aedf06756
title: Sovrascrivere le dichiarazioni di classe con gli stili in linea
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJDRha'
forumTopicId: 18252
dashedName: override-class-declarations-with-inline-styles
---

# --description--

So we've proven that id declarations override class declarations, regardless of where they are declared in your `style` element CSS.

Ci sono altri modi in cui puoi sovrascrivere il CSS. Ti ricordi gli stili inline?

# --instructions--

Usa uno stile in linea per cercare di rendere bianco l'elemento `h1`. Ricorda, gli stili inline appaiono così:

```html
<h1 style="color: green;">
```

Lascia le classi `blue-text` e `pink-text` sul tuo elemento `h1`.

# --hints--

L'elemento `h1` dovrebbe avere la classe `pink-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

L'elemento `h1` dovrebbe avere la classe `blue-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

L'elemento `h1` dovrebbe avere l'id di `orange-text`.

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'), 'orange-text');
```

L'elemento `h1` dovrebbe avere uno stile inline.

```js
assert.exists(document.querySelector('h1[style]'));
```

L'elemento `h1` dovrebbe essere bianco.

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
