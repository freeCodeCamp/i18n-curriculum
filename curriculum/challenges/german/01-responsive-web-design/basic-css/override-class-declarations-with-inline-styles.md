---
id: bad87fee1348bd9aedf06756
title: Klassendeklarationen mit Inline-Stilen überschreiben
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJDRha'
forumTopicId: 18252
dashedName: override-class-declarations-with-inline-styles
---

# --description--

So we've proven that id declarations override class declarations, regardless of where they are declared in your `style` element CSS.

Es gibt noch weitere Möglichkeiten, um CSS zu überschreiben. Erinnerst du dich an Inline-Stile?

# --instructions--

Verwende einen Inline-Stil, um unser `h1`-Element weiß zu machen. Erinnere dich, dass Inline-Stile so aussehen:

```html
<h1 style="color: green;">
```

Lass die `blue-text` und `pink-text`-Klassen auf deinem `h1`-Element.

# --hints--

Dein `h1`-Element sollte die Klasse `pink-text` haben.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

Dein `h1`-Element sollte die Klasse `blue-text` haben.

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

Dein `h1`-Element sollte die Id `orange-text` haben.

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'), 'orange-text');
```

Dein `h1`-Element sollte einen Inline-Stil haben.

```js
assert.exists(document.querySelector('h1[style]'));
```

Dein `h1`-Element sollte weiß sein.

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
