---
id: 587d78a6367417b2b2512ade
title: Crea una forma más compleja usando CSS y HTML
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPpz4fr'
forumTopicId: 301050
dashedName: create-a-more-complex-shape-using-css-and-html
---

# --description--

One of the most popular shapes in the world is the heart shape, and in this challenge you'll create one using pure CSS. But first, you need to understand the `::before` and `::after` pseudo-elements. `::before` creates a pseudo-element that is the first child of the selected element; `::after` creates a pseudo-element that is the last child of the selected element. In the following example, a `::before` pseudo-element is used to add a rectangle to an element with the class `heart`:

```css
.heart::before {
  content: "";
  background-color: yellow;
  border-radius: 25%;
  position: absolute;
  height: 50px;
  width: 70px;
  top: -50px;
  left: 5px;
}
```

Para que los pseudo-elements `::before` y `::after` funcionen correctamente, deben tener una propiedad `content` definida. Esta propiedad generalmente se usa para agregar cosas como una foto o texto al elemento seleccionado. Cuando se utilizan los pseudo-elements `::before` y `::after` para crear formas, la propiedad `content` sigue siendo necesaria, pero se establece en una cadena vacía. En el ejemplo anterior, el elemento con la clase de `heart` tiene un pseudo-element `::before` que produce un rectángulo amarillo con una altura y un ancho de `50px` y `70px`, respectivamente. Este rectángulo tiene esquinas redondeadas debido a su 25% `border-radius` y está posicionado absolutamente a `5px` desde la izquierda y `50px` por encima de la parte superior del elemento.

# --instructions--

Transforma el elemento en la pantalla en un corazón. En el selector `heart::after`, cambia `background-color` a `pink` y `border-radius` a 50%.

A continuación, apunta el elemento con la clase `heart` (solo `heart`) y llena la propiedad `transform`. Utiliza la función `rotate()` con -45 grados.

Finalmente, en el selector `heart::before`, establece su propiedad `content` en una cadena vacía.

# --hints--

La propiedad de `background-color` del selector `heart::after` debe ser `pink`.

```js
const heartAfter = code.match(/\.heart::after\s*{[\s\S]+?[^\}]}/g)?.[0];
assert.match(heartAfter, /({|;)\s*background-color\s*:\s*pink\s*(;|})/g);
```

El `border-radius` del selector `heart::after` debe ser 50%.

```js
assert.lengthOf(code.match(/border-radius\s*?:\s*?50%/gi),2);
```

La propiedad `transform` para la clase `heart` debe usar una función `rotate()` configurada en -45 grados.

```js
assert.match(code,/transform\s*?:\s*?rotate\(\s*?-45deg\s*?\)/gi);
```

El `contenido` de `heart::before` debe ser una cadena vacía.

```js
assert.match(code,/\.heart::before\s*?{\s*?content\s*?:\s*?("|')\1\s*?;/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .heart {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-color: pink;
    height: 50px;
    width: 50px;
    transform: ;
  }
  .heart::after {
    background-color: blue;
    content: "";
    border-radius: 25%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: 0px;
    left: 25px;
  }
  .heart::before {
    content: ;
    background-color: pink;
    border-radius: 50%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: -25px;
    left: 0px;
  }
</style>
<div class="heart"></div>
```

# --solutions--

```html
<style>
  .heart {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-color: pink;
    height: 50px;
    width: 50px;
    transform: rotate(-45deg);
  }
  .heart::after {
    background-color: pink;
    content: "";
    border-radius: 50%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: 0px;
    left: 25px;
  }
  .heart::before {
    content: "";
    background-color: pink;
    border-radius: 50%;
    position: absolute;
    width: 50px;
    height: 50px;
    top: -25px;
    left: 0px;
  }
</style>
<div class="heart"></div>
```
