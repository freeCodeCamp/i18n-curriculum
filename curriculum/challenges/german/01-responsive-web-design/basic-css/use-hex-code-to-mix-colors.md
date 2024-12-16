---
id: bad87fee1348bd9aedf08721
title: Mische Farben mit Hex-Code
challengeType: 0
videoUrl: 'https://scrimba.com/c/cK89PhP'
forumTopicId: 18359
dashedName: use-hex-code-to-mix-colors
---

# --description--

To review, hex codes use 6 hexadecimal digits to represent colors, two each for red (R), green (G), and blue (B) components.

Von diesen drei reinen Farben (rot, grün und blau) können wir die Beträge variieren, um mehr als 16 Millionen andere Farben zu erstellen!

Zum Beispiel ist Orange reines Rot, gemischt mit etwas Grün und keinem Blau. In Hex-Code übertragen wäre das `#FFA500`.

Die Ziffer `0` ist die niedrigste Zahl im Hex-Code und stellt ein völliges Fehlen von Farbe dar.

Die Ziffer `F` ist die höchste Zahl im Hex-Code und repräsentiert die maximal mögliche Helligkeit.

# --instructions--

Ersetze die Farbwörter in unserem `style` Element mit ihnen entsprechenden Hex-Codes. (Anm.: "Dodger Blue" bezieht sich auf die blaue Uniform der Baseball-Mannschaft Los Angeles Dodgers)

<table><tbody><tr><th>Color</th><th>Hex Code</th></tr><tr><td>Dodger Blue</td><td><code>#1E90FF</code></td></tr><tr><td>Green</td><td><code>#00FF00</code></td></tr><tr><td>Orange</td><td><code>#FFA500</code></td></tr><tr><td>Red</td><td><code>#FF0000</code></td></tr></tbody></table>

# --hints--

Dein `h1` Element mit dem Text `I am red!` sollte einen roten `color` Wert besitzen.

```js
const redText = document.querySelector('.red-text');
const color = window.getComputedStyle(redText)['color']; 
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

Der `hex code` für die Farbe Rot sollte statt dem Wort `red` verwendet werden.

```js
assert.match(code, /\.red-text\s*?{\s*?color\s*:\s*?(#FF0000|#F00)\s*?;?\s*?}/gi);
```

Dein `h1` Element mit dem Text `I am green!` sollte einen grünen `color` Wert besitzen.

```js
const greenText = document.querySelector('.green-text');
const color = window.getComputedStyle(greenText)['color']; 
assert.strictEqual(color, 'rgb(0, 255, 0)');
```

Der `hex code` für die Farbe Grün sollte statt dem Wort `green` verwendet werden.

```js
assert.match(code, /\.green-text\s*?{\s*?color\s*:\s*?(#00FF00|#0F0)\s*?;?\s*?}/gi);
```

Dein `h1` Element mit dem Text `I am dodger blue!` sollte einen `color`-Wert besitzen der "Dodger Blue" entspricht.

```js
const blueText = document.querySelector('.dodger-blue-text');
const color = window.getComputedStyle(blueText)['color']; 
assert.strictEqual(color, 'rgb(30, 144, 255)');
```

Der `hex code` für die Farbe "Dodger Blue" sollte statt dem Wort `dodgerblue` verwendet werden.

```js
assert.match(code, /\.dodger-blue-text\s*?{\s*?color\s*:\s*?#1E90FF\s*?;?\s*?}/gi);
```

Dein `h1` Element mit dem Text `I am orange!` sollte einen orangen `color` Wert haben.

```js
const orangeText = document.querySelector('.orange-text');
const color = window.getComputedStyle(orangeText)['color']; 

assert.strictEqual(color, 'rgb(255, 165, 0)');
```

Der `hex code` für die Farbe Orange sollte statt dem Wort `orange` verwendet werden.

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
