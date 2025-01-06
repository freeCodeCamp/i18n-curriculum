---
id: bad87fee1348bd9aedf08721
title: Usare il codice esadecimale per mescolare i colori
challengeType: 0
videoUrl: 'https://scrimba.com/c/cK89PhP'
forumTopicId: 18359
dashedName: use-hex-code-to-mix-colors
---

# --description--

To review, hex codes use 6 hexadecimal digits to represent colors, two each for red (R), green (G), and blue (B) components.

Da questi tre colori puri (rosso, verde e blu), possiamo variare la quantità di ciascuno per creare oltre 16 milioni di altri colori!

Ad esempio, l'arancione è rosso puro, mescolato con un po' di verde e niente blu. In codice esadecimale, questo si traduce in `#FFA500`.

La cifra `0` è il numero più basso in codice esadecimale e rappresenta una completa assenza di quel colore.

La cifra `F` è il numero più alto in codice esadecimale e rappresenta la massima luminosità possibile.

# --instructions--

Sostituisci i nomi dei colori nel nostro elemento `style` con i codici esadecimali corretti.

<table><tbody><tr><th>Color</th><th>Hex Code</th></tr><tr><td>Dodger Blue</td><td><code>#1E90FF</code></td></tr><tr><td>Green</td><td><code>#00FF00</code></td></tr><tr><td>Orange</td><td><code>#FFA500</code></td></tr><tr><td>Red</td><td><code>#FF0000</code></td></tr></tbody></table>

# --hints--

Il tuo elemento `h1` con il testo `I am red!` dovrebbe ricevere un `color` rosso.

```js
const redText = document.querySelector('.red-text');
const color = window.getComputedStyle(redText)['color']; 
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

L'`hex code` per il colore rosso dovrebbe essere utilizzato al posto della parola `red`.

```js
assert.match(code, /\.red-text\s*?{\s*?color\s*:\s*?(#FF0000|#F00)\s*?;?\s*?}/gi);
```

Al tuo elemento `h1` con il testo `I am green!` dovrebbe essere assegnato un `color` verde.

```js
const greenText = document.querySelector('.green-text');
const color = window.getComputedStyle(greenText)['color']; 
assert.strictEqual(color, 'rgb(0, 255, 0)');
```

L'`hex code` per il colore verde dovrebbe essere utilizzato al posto della parola `green`.

```js
assert.match(code, /\.green-text\s*?{\s*?color\s*:\s*?(#00FF00|#0F0)\s*?;?\s*?}/gi);
```

Al tuo elemento `h1` con il testo `I am dodger blue!` dovrebbe essere assegnato un `color` dodger blue.

```js
const blueText = document.querySelector('.dodger-blue-text');
const color = window.getComputedStyle(blueText)['color']; 
assert.strictEqual(color, 'rgb(30, 144, 255)');
```

L'`hex code` per il colore blu dodger dovrebbe essere usato al posto della parola `dodgerblue`.

```js
assert.match(code, /\.dodger-blue-text\s*?{\s*?color\s*:\s*?#1E90FF\s*?;?\s*?}/gi);
```

Il tuo elemento `h1` con il testo `I am orange!` dovrebbe ricevere il `color` arancione.

```js
const orangeText = document.querySelector('.orange-text');
const color = window.getComputedStyle(orangeText)['color']; 

assert.strictEqual(color, 'rgb(255, 165, 0)');
```

L'`hex code` per il colore arancione dovrebbe essere utilizzato al posto della parola `orange`.

```js
assert.match(code, /\.orange-text\s*?{\s*?color\s*:\s*?#FFA500\s*?;?\s*?}/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .red-text {
    color: black;
  }
  .green-text {
    color: black;
  }
  .dodger-blue-text {
    color: black;
  }
  .orange-text {
    color: black;
  }
</style>

<h1 class="red-text">I am red!</h1>

<h1 class="green-text">I am green!</h1>

<h1 class="dodger-blue-text">I am dodger blue!</h1>

<h1 class="orange-text">I am orange!</h1>
```

# --solutions--

```html
<style>
  .red-text {
    color: #FF0000;
  }
  .green-text {
    color: #00FF00;
  }
  .dodger-blue-text {
    color: #1E90FF;
  }
  .orange-text {
    color: #FFA500;
  }
</style>

<h1 class="red-text">I am red!</h1>

<h1 class="green-text">I am green!</h1>

<h1 class="dodger-blue-text">I am dodger blue!</h1>

<h1 class="orange-text">I am orange!</h1>
```
