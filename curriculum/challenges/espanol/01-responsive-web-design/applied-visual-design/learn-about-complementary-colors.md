---
id: 587d78a3367417b2b2512ad1
title: Aprende sobre colores complementarios
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MD3Tr'
forumTopicId: 301056
dashedName: learn-about-complementary-colors
---

# --description--

Color theory and its impact on design is a deep topic and only the basics are covered in the following challenges. On a website, color can draw attention to content, evoke emotions, or create visual harmony. Using different combinations of colors can really change the look of a website, and a lot of thought can go into picking a color palette that works with your content.

El círculo cromático es una herramienta útil para observar cómo los colores están relacionados entre sí - es un círculo donde los tonos similares están juntos y los tonos diferentes alejados. Cuando dos colores opuestos están juntos en el círculo, se los llama colores complementarios. Se caracterizan porque si se combinan, se cancelan así mismos y crean un color gris. Sin embargo, al ubicarse juntos, estos colores parecen más brillantes y producen un contraste visual fuerte.

A continuación hay algunos ejemplos de colores con sus códigos hexadecimales:

<blockquote>rojo (#FF0000) y cian (#00FFFF)<br>verde(#00FF00) y magenta (#FF00FF)<br>azul (#0000FF) y amarillo (#FFFF00)</blockquote>

Esto es diferente del anticuado modelo de color RYB que muchos de nosotros aprendimos en la escuela, que tiene diferentes colores primarios y complementarios. La teoría moderna del color utiliza el modelo aditivo RGB (como en una pantalla de computadora) y el modelo restante CMY(K) (como en la impresión).

Hay muchas herramientas de selección de color disponibles en línea que tienen la opción de encontrar el complemento de un color.

**Nota:** El uso del color puede ser una forma poderosa de agregar interés visual a una página. Sin embargo, el color por sí solo no debe utilizarse como la única manera de transmitir información importante porque los usuarios con deficiencias visuales pueden no entender ese contenido. Esta cuestión se tratará con más detalle en los desafíos de accesibilidad aplicada.

# --instructions--

Cambia la propiedad `background-color` de las clases `blue` y `yellow` a sus colores respectivos. Observa cómo se ven los colores unos a otros distintos de los que se comparan con el fondo blanco.

# --hints--

El elemento `div` con clase `blue` debe tener un `background-color` azul.

```js
const blueElement = document.querySelector('.blue');
const blueStyle = window.getComputedStyle(blueElement); 
assert.equal(blueStyle?.backgroundColor, 'rgb(0, 0, 255)');
```

El elemento `div` con clase `yellow` debe tener un `background-color` amarillo.

```js
const yellowElement = document.querySelector('.yellow');
const yellowStyle = window.getComputedStyle(yellowElement);
assert.equal(yellowStyle?.backgroundColor, 'rgb(255, 255, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }
  .blue {
    background-color: #000000;
  }
  .yellow {
    background-color: #000000;
  }
  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>
<div class="blue"></div>
<div class="yellow"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }
  .blue {
    background-color: blue;
  }
  .yellow {
    background-color: yellow;
  }
  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>
<div class="blue"></div>
<div class="yellow"></div>
```
