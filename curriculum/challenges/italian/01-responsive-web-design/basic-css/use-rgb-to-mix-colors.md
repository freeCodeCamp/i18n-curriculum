---
id: bad82fee1348bd9aedf08721
title: Usare RGB per mescolare i colori
challengeType: 0
videoUrl: 'https://scrimba.com/c/cm24JU6'
forumTopicId: 18368
dashedName: use-rgb-to-mix-colors
---

# --description--

Just like with hex code, you can mix colors in RGB by using combinations of different values.

# --instructions--

Sostituisci i codici esadecimali nel nostro elemento `style` con i loro valori RGB corretti.

<table><tbody><tr><th>Color</th><th>RGB</th></tr><tr><td>Blue</td><td><code>rgb(0, 0, 255)</code></td></tr><tr><td>Red</td><td><code>rgb(255, 0, 0)</code></td></tr><tr><td>Orchid</td><td><code>rgb(218, 112, 214)</code></td></tr><tr><td>Sienna</td><td><code>rgb(160, 82, 45)</code></td></tr></tbody></table>

# --hints--

Il tuo elemento `h1` con il testo `I am red!` dovrebbe avere un `color` rosso.

```js
const redText = document.querySelector('.red-text');
const color = window.getComputedStyle(redText)['color']; 
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

Dovresti usare `rgb` per il colore rosso.

```js
assert.match(code, /\.red-text\s*{\s*color\s*:\s*rgb\(\s*255\s*,\s*0\s*,\s*0\s*\)\s*;?\s*}/gi);
```

Il tuo elemento `h1` con il testo `I am orchid!` dovrebbe avere un `color` orchidea.

```js
const orchidText = document.querySelector('.orchid-text');
const color = window.getComputedStyle(orchidText)['color']; 
assert.strictEqual(color, 'rgb(218, 112, 214)');
```

Dovresti usare `rgb` per il colore orchidea.

```js
assert.match(__helpers.removeCssComments(code), /\.orchid-text\s*{\s*color\s*:\s*rgb\(\s*218\s*,\s*112\s*,\s*214\s*\)\s*;?\s*}/gi);
```

Il tuo elemento `h1` con il testo `I am blue!` dovrebbe avere un `color` blu.

```js
const blueText = document.querySelector('.blue-text');
const color = window.getComputedStyle(blueText)['color']; 
assert.strictEqual(color, 'rgb(0, 0, 255)');
```

Dovresti usare `rgb` per il colore blu.

```js
assert.match(__helpers.removeCssComments(code), /\.blue-text\s*{\s*color\s*:\s*rgb\(\s*0\s*,\s*0\s*,\s*255\s*\)\s*;?\s*}/gi);
```

Il tuo elemento `h1` con il testo `I am sienna!` dovrebbe avere un `color` siena.

```js
const siennaText = document.querySelector('.sienna-text');
const color = window.getComputedStyle(siennaText)['color']; 
assert.strictEqual(color, 'rgb(160, 82, 45)');
```

Dovresti usare `rgb` per il colore siena.

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
