---
id: bad87fee1348bd9aedf08719
title: Gekürzten Hex-Code verwenden
challengeType: 0
videoUrl: 'https://scrimba.com/c/cRkpKAm'
forumTopicId: 18338
dashedName: use-abbreviated-hex-code
---

# --description--

Many people feel overwhelmed by the possibilities of more than 16 million colors. And it's difficult to remember hex code. Fortunately, you can shorten it.

Zum Beispiel kann der Hex-Code von Rot `#FF0000` zu `#F00` verkürzt werden. Diese verkürzte Form ergibt eine Ziffer für Rot, eine Ziffer für Grün und eine Ziffer für Blau.

Dadurch reduziert sich die Gesamtzahl der möglichen Farben auf etwa 4.000. Die Browser interpretieren jedoch `#FF0000` und `#F00` als genau dieselbe Farbe.

# --instructions--

Versuche, mithilfe der gekürzten Hex-Codes die richtigen Elemente einzufärben.

<table><tbody><tr><th>Color</th><th>Short Hex Code</th></tr><tr><td>Cyan</td><td><code>#0FF</code></td></tr><tr><td>Green</td><td><code>#0F0</code></td></tr><tr><td>Red</td><td><code>#F00</code></td></tr><tr><td>Fuchsia</td><td><code>#F0F</code></td></tr></tbody></table>

# --hints--

Dein `h1`-Element mit dem Text `I am red!` sollte die `color` Rot erhalten.

```js
const redText = document.querySelector('.red-text');
const color = window.getComputedStyle(redText)['color']; 
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

Der gekürzte Hex-Code für die Farbe Rot sollte anstelle des Hex-Codes `#FF0000` verwendet werden.

```js
assert.match(code,/\.red-text\s*?{\s*?color\s*:\s*?#F00\s*?;?\s*?}/gi);
```

Dein `h1`-Element mit dem Text `I am green!` sollte die `color` Grün erhalten.

```js
const greenText = document.querySelector('.green-text');
const color = window.getComputedStyle(greenText)['color']; 
assert.strictEqual(color, 'rgb(0, 255, 0)');
```

Der gekürzte Hex-Code für die Farbe Grün sollte anstelle des Hex-Codes `#00FF00` verwendet werden.

```js
assert.match(__helpers.removeCssComments(code), /\.green-text\s*?{\s*?color\s*:\s*?#0F0\s*?;?\s*?}/gi);
```

Dein `h1`-Element mit dem Text `I am cyan!` sollte die `color` Cyan erhalten.

```js
const cyanText = document.querySelector('.cyan-text');
const color = window.getComputedStyle(cyanText)['color']; 
assert.strictEqual(color, 'rgb(0, 255, 255)');
```

Der gekürzte Hex-Code für die Farbe Cyan sollte anstelle des Hex-Codes `#00FFFF` verwendet werden.

```js
assert.match(__helpers.removeCssComments(code), /\.cyan-text\s*?{\s*?color\s*:\s*?#0FF\s*?;?\s*?}/gi);
```

Dein `h1`-Element mit dem Text `I am fuchsia!` sollte die Farbe `color` Fuchsia erhalten.

```js
const fuchsiaText = document.querySelector('.fuchsia-text');
const color = window.getComputedStyle(fuchsiaText)['color']; 
assert.strictEqual(color,'rgb(255, 0, 255)');
```

Der gekürzte Hex-Code für die Farbe Fuchsia sollte anstelle des Hex-Codes `#FF00FF` verwendet werden.

```js
assert.match(__helpers.removeCssComments(code), /\.fuchsia-text\s*?{\s*?color\s*:\s*?#F0F\s*?;?\s*?}/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .red-text {
    color: #000000;
  }
  .fuchsia-text {
    color: #000000;
  }
  .cyan-text {
    color: #000000;
  }
  .green-text {
    color: #000000;
  }
</style>

<h1 class="red-text">I am red!</h1>

<h1 class="fuchsia-text">I am fuchsia!</h1>

<h1 class="cyan-text">I am cyan!</h1>

<h1 class="green-text">I am green!</h1>
```

# --solutions--

```html
<style>
  .red-text {
    color: #F00;
  }
  .fuchsia-text {
    color: #F0F;
  }
  .cyan-text {
    color: #0FF;
  }
  .green-text {
    color: #0F0;
  }
</style>

<h1 class="red-text">I am red!</h1>

<h1 class="fuchsia-text">I am fuchsia!</h1>

<h1 class="cyan-text">I am cyan!</h1>

<h1 class="green-text">I am green!</h1>
```
