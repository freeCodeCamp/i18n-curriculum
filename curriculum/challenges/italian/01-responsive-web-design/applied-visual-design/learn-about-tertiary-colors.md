---
id: 587d78a4367417b2b2512ad2
title: Scoprire di più sui colori terziari
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). You saw these colors in the Complementary Colors challenge. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

I colori terziari sono il risultato della combinazione di un colore primario con uno dei suoi vicini colori secondari. Ad esempio, all'interno del modello di colore RGB, rosso (primario) e giallo (secondario) danno l'arancione (terziario). Questo aggiunge altri sei colori ad una semplice ruota dei colori per un totale di dodici.

Ci sono vari metodi per selezionare diversi colori che portano ad una combinazione armoniosa nel design. Un esempio in cui possono essere usati i colori terziari è chiamato lo schema di colori split-complementary. Questo schema inizia con un colore di base, poi lo abbina con i due colori che sono adiacenti al suo complemento. I tre colori forniscono un forte contrasto visivo in un design, ma sono più tenui rispetto all'utilizzo di due colori complementari.

Qui vediamo tre colori creati utilizzando lo schema split-complement:

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

Sostituisci la proprietà `background-color` delle classi `orange`, `cyan`e `raspberry` con i rispettivi colori. Assicurati di utilizzare i codici esadecimali e non i nomi dei colori.

# --hints--

L'elemento `div` con classe `orange` dovrebbe avere un `background-color` arancione.

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

L'elemento `div` con classe `cyan` dovrebbe avere un `background-color` ciano.

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

L'elemento `div` con classe `raspberry` dovrebbe avere un `background-color` di color lampone.

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

Tutti i valori `background-color` per le classi di colore, dovrebbero essere codici esadecimali e non nomi di colori.

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
