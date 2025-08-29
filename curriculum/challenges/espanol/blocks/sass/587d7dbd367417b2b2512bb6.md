---
id: 587d7dbd367417b2b2512bb6
title: Crea CSS reutilizable con Mixins
challengeType: 0
forumTopicId: 301455
dashedName: create-reusable-css-with-mixins
---

# --description--

En Sass, un <dfn>mixin</dfn> es un grupo de declaraciones de CSS que pueden reutilizarse a través de la hoja de estilo. La definición empieza con la regla de arroba `@mixin` seguido de un nombre personalizado. Aplica el mixin usando la regla de arroba `@include`.

```scss
@mixin reset-list {
  margin: 0;
  padding: 0;
  list-style: none;
}

nav ul {
  @include reset-list;
}
```

Compila a:

```css
nav ul {
  margin: 0;
  padding: 0;
  list-style: none;
}
```

Los mixins también pueden tomar argumentos, lo que permite que su comportamiento sea personalizado. Los argumentos son requeridos cuando se usa el mixin.

```scss
@mixin prose($font-size, $spacing) {
  font-size: $font-size;
  margin: 0;
  margin-block-end: $spacing;
}

p {
  @include prose(1.25rem, 1rem);
}

h2 {
  @include prose(2.4rem, 1.5rem);
}
```

Puedes hacer argumentos opcionales asignando valores predeterminados en los parámetros.

```scss
@mixin text-color($color: black) {
  color: $color;
}

p {
  @include text-color(); /* color: black */
}

nav a {
  @include text-color(orange);
}
```

# --instructions--

Escribe un mixin llamado `shape` y dale 3 parámetros: `$w`, `$h` y `$bg-color`.

Usa el mixin `shape` para dar al elemento `#square` un ancho y altura de `50px`, y el color de fondo `red`. Para el elemento `#rect-a` añade un ancho de `100px`, una altura de `50px` y el color de fondo `blue`. Finalmente, para el elemento `#rect-b` añade un ancho de `50px`, una altura de `100px` y el color de fondo `orange`.

# --hints--

Debes declarar un mixin llamado `shape` con 3 parámetros: `$w`, `$h` y `$bg-color`.

```js
assert.match(code, /@mixin\s+shape\s*\(\s*\$w,\s*\$h,\s*\$bg-color\s*\)\s*{/gi);
```

Tu mixin debe incluir una propiedad `width` que utilice el parámetro `$w`.

```js
assert.match(__helpers.removeWhiteSpace(code), /width:\$w;/gi);
```

Tu mixin debe incluir una propiedad `height` que utilice el parámetro `$h`.

```js
assert.match(__helpers.removeWhiteSpace(code), /height:\$h;/gi);
```

Tu mixin debe incluir una propiedad `background-color` que utilice el parámetro `$bg-color`.

```js
assert.match(__helpers.removeWhiteSpace(code), /background-color:\$bg\-color;/gi);
```

Debes reemplazar los estilos dentro del selector `#square` por una llamada al mixin `shape` usando la palabra clave `@include`. Establecer un ancho y altura de `50px` y el color de fondo `red`.

```js
assert.match(code, /#square\s*{\s*@include\s+shape\s*\(\s*50px\s*,\s*50px\s*,\s*red\s*\)\s*;\s*}/gi);
```

Debes reemplazar los estilos dentro del selector `#rect-a` por una llamada al mixin `shape` usando la palabra clave `@include`. Establecer un ancho de `100px` y una altura de `50px` y el color de fondo `blue`.

```js
assert.match(code, /#rect-a\s*{\s*@include\s+shape\s*\(\s*100px\s*,\s*50px\s*,\s*blue\s*\)\s*;\s*}/gi);
```

Debes reemplazar los estilos dentro del selector `#rect-b` por una llamada al mixin `shape` usando la palabra clave `@include`. Establecer un ancho de `50px` y una altura de `100px` y el color de fondo `orange`.

```js
assert.match(code, /#rect-b\s*{\s*@include\s+shape\s*\(\s*50px\s*,\s*100px\s*,\s*orange\s*\)\s*;\s*}/gi);
```

# --seed--

## --seed-contents--

```html
<style type='text/scss'>
#square {
  width: 50px;
  height: 50px;
  background-color: red;
}

#rect-a {
  width: 100px;
  height: 50px;
  background-color: blue;
}

#rect-b {
  width: 50px;
  height: 100px;
  background-color: orange;
}
</style>

<div id="square"></div>
<div id="rect-a"></div>
<div id="rect-b"></div>
```

# --solutions--

```html
<style type='text/scss'>
@mixin shape($w, $h, $bg-color) {
  width: $w;
  height: $h;
  background-color: $bg-color;
}

#square {
  @include shape(50px, 50px, red);
}

#rect-a {
  @include shape(100px, 50px, blue);
}

#rect-b {
  @include shape(50px, 100px, orange);
}
</style>

<div id="square"></div>
<div id="rect-a"></div>
<div id="rect-b"></div>
```
