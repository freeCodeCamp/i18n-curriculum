---
id: 587d78a4367417b2b2512ad2
title: Tertiärfarben kennenlernen
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). You saw these colors in the Complementary Colors challenge. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

Tertiärfarben ergeben sich aus der Kombination einer Primärfarbe mit einem ihrer sekundären Nachbarn. Zum Beispiel ergeben im RGB-Farbmodell Rot (primär) und Gelb (sekundär) Orange (tertiär). Dies erweitert einen einfachen Farbkreis um sechs Farben auf insgesamt zwölf.

Es gibt verschiedene Methoden zur Auswahl von Farbkombinationen, die zu stimmigen Designs führen. Zum Beispiel können tertiäre Farben im Split-Komplementär-Farbschema verwendet werden. Dieses Schema beginnt mit einer Grundfarbe, die dann mit zwei Farben kombiniert wird, die neben ihrer Komplementärfarbe liegen. Die drei Farben bieten einen starken visuellen Kontrast in einem Design, sind aber subtiler als die Verwendung zweier Komplementärfarben.

Hier sind drei Farben, die mit dem Split-Komplementär-Schema erstellt wurden:

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

Ändere die `background-color`-Eigenschaft der Klassen `orange`, `cyan` und `raspberry` (dt. Himbeere) auf ihren entsprechenden Farbwert. Stelle sicher, dass du Hex-Codes und nicht Farbnamen verwendest.

# --hints--

Das `div`-Element mit der Klasse `orange` sollte eine `background-color` von Orange haben.

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

Das `div`-Element mit der Klasse `cyan` sollte eine `background-color` von Cyan haben.

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

Das `div`-Element mit der Klasse `raspberry` sollte eine himbeerfarbene `background-color` haben.

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

Alle `background-color`-Werte für die Farbklassen sollten Hex-Codes und nicht Farbnamen sein.

```js
assert.notMatch(code, /background-color:\s(orange|cyan|raspberry)/);
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .orange {
    background-color: #000000;
  }

  .cyan {
    background-color: #000000;
  }

  .raspberry {
    background-color: #000000;
  }

  div {
    height: 100px;
    width: 100px;
    margin-bottom: 5px;
  }
</style>

<div class="orange"></div>
<div class="cyan"></div>
<div class="raspberry"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .orange {
    background-color: #FF7F00;
  }

  .cyan {
    background-color: #00FFFF;
  }

  .raspberry {
    background-color: #FF007F;
  }

  div {
    height: 100px;
    width: 100px;
    margin-bottom: 5px;
  }
</style>
<div class="orange"></div>
<div class="cyan"></div>
<div class="raspberry"></div>
```
