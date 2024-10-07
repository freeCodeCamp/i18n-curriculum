---
id: 587d78a4367417b2b2512ad2
title: Aprende sobre colores terciarios
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). You saw these colors in the Complementary Colors challenge. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

Los colores terciarios se forman al combinar dos colores primarios con uno de sus vecinos de color secundario. Por ejemplo, entre el modelo de color RGB, rojo (primario) y amarillo (secundario) forman naranja (terciario). Esto añade seis colores a un círculo cromático simple para un total de doce.

Hay varios métodos para seleccionar colores diferentes que resultan de una combinación armoniosa en diseño. Un ejemplo que puede usar colores terciarios es el esquema de color complementario dividido. Este esquema comienza con un color base, luego lo empareja con los dos colores que están adyacentes a su complemento. Los tres colores proporcionan un fuerte contraste visual en un diseño, pero son más sutiles que utilizar dos colores complementarios.

Aquí hay tres colores creados usando el esquema de dividir-complemento:

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

Cambia la propiedad `background-color` de las clases `orange`, `cyan` y `raspberry` a sus colores respectivos. Asegúrate de usar los códigos hexadecimales y no los nombres de colores.

# --hints--

El elemento `div` con clase `orange` debe tener un `background-color` naranja.

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

El elemento `div` con clase `cyan` debe tener un `background-color` cian.

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

El elemento `div` con clase `raspberry` debe tener un `background-color` frambuesa.

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

Todos los valores de `background-color` para las clases de color deben ser códigos hexadecimales y no nombres de color.

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
