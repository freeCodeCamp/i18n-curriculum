---
id: 63ee3ff1381756f9716727f2
title: Ejercicio de Fundamentos de CSS D
challengeType: 25
dashedName: css-foundations-exercise-d
---

# --description--

Con este ejercicio, te hemos proporcionado un archivo HTML completo, por lo que solo tendrás que editar el archivo CSS. Para este ejercicio, es más importante comprender cómo funciona encadenar diferentes selectores que cómo realmente agregar los atributos.

1. Debe ver un `width` de `300px` en la clase `avatar` y `proportioned`.
1. Debe darle una altura para que conserve sus proporciones cuadradas originales (¡no codifique un valor de píxel para la altura!).
1. Debe darle a los elementos con ambas clases `avatar` y `distorted` un `width` de `200px`.
1. Debe darle una `height` dos veces mayor que su anchura.

# --hints--

Debe tener un `width` de `300px` en la clase `avatar` y `proportioned`.

```js
const style = new __helpers.CSSHelp(document).getStyle(`.avatar.proportioned`) || new __helpers.CSSHelp(document).getStyle(`.proportioned.avatar`);
assert(style?.width === '300px');
```

Debe tener una altura de `auto` en la clase `avatar` y `proportioned`.

```js
const style = new __helpers.CSSHelp(document).getStyle(`.avatar.proportioned`) || new __helpers.CSSHelp(document).getStyle(`.proportioned.avatar`)
assert(style?.height === 'auto');
```

Debe usar un selector de encadenamiento en la clase `avatar` y `proportioned`.

```js
const style = new __helpers.CSSHelp(document).getStyle(`.avatar.proportioned`) || new __helpers.CSSHelp(document).getStyle(`.proportioned.avatar`);
assert(style);
```

Debe tener un `width` de `200px` en la clase `avatar` y `distorted`.

```js
const style = new __helpers.CSSHelp(document).getStyle(`.avatar.distorted`) || new __helpers.CSSHelp(document).getStyle(`.distorted.avatar`);
assert(style?.width === '200px');
```

Debe usar un selector de encadenamiento en la clase `avatar` y `distorted`.

```js
const style = new __helpers.CSSHelp(document).getStyle(`.avatar.distorted`) || new __helpers.CSSHelp(document).getStyle(`.distorted.avatar`);
assert(style);
```

Debe tener una `height` dos veces la anchura en la clase `avatar` y `distorted`.

```js
const style = new __helpers.CSSHelp(document).getStyle(`.avatar.distorted`) || new __helpers.CSSHelp(document).getStyle(`.distorted.avatar`);
assert(style?.height === '400px');
```

# --seed--

## --seed-contents--

```css

```

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Chaining Selectors</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <!-- Use the classes BELOW this line -->
    <div>
      <img class="avatar proportioned" src="https://cdn.freecodecamp.org/curriculum/odin-project/css-foundations/css-foundations-01.jpg" alt="Two cute kittens">
      <img class="avatar distorted" src="https://cdn.freecodecamp.org/curriculum/odin-project/css-foundations/css-foundations-02.jpg" alt="Three cute kittens">
    </div>
    <!-- Use the classes ABOVE this line -->
    <div>
      <img class="original proportioned" src="https://cdn.freecodecamp.org/curriculum/odin-project/css-foundations/css-foundations-01.jpg" alt="Two cute kittens">
      <img class="original distorted" src="https://cdn.freecodecamp.org/curriculum/odin-project/css-foundations/css-foundations-02.jpg" alt="Three cute kittens">
    </div>
  </body>
</html>
```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Chaining Selectors</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <!-- Use the classes BELOW this line -->
    <div>
      <img class="avatar proportioned" src="https://cdn.freecodecamp.org/curriculum/odin-project/css-foundations/css-foundations-01.jpg" alt="Two cute kittens">
      <img class="avatar distorted" src="https://cdn.freecodecamp.org/curriculum/odin-project/css-foundations/css-foundations-02.jpg" alt="Three cute kittens">
    </div>
    <!-- Use the classes ABOVE this line -->
    <div>
      <img class="avatar proportioned" src="https://cdn.freecodecamp.org/curriculum/odin-project/css-foundations/css-foundations-01.jpg" alt="Two cute kittens">
      <img class="avatar distorted" src="https://cdn.freecodecamp.org/curriculum/odin-project/css-foundations/css-foundations-02.jpg" alt="Three cute kittens">
  </body>
</html>
```

```css
.avatar.proportioned {
  height: auto;
  width: 300px;
}

.avatar.distorted {
  height: 400px;
  width: 200px;
}
```

