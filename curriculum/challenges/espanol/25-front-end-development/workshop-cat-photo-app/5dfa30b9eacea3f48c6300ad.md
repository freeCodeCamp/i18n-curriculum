---
id: 5dfa30b9eacea3f48c6300ad
title: Paso 17
challengeType: 0
dashedName: step-17
---

# --description--

En pasos anteriores, usaste un elemento de anclaje para convertir texto en un enlace. Otros tipos de contenido también pueden convertirse en un enlace envolviéndolos en etiquetas de anclaje.

Aquí hay un ejemplo de cómo convertir una imagen en un enlace:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Convierte la imagen en un enlace rodeándola con las etiquetas de elemento necesarias. Usa `https://freecatphotoapp.com` como el valor del atributo `href` del anclaje.

# --hints--

Debes tener un elemento `img` con un valor `src` de `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Puede que lo hayas eliminado accidentalmente.

```js
assert.equal(
  document.querySelector('img')?.getAttribute('src'),
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Tu elemento de anclaje (`a`) debe tener una etiqueta de apertura. Las etiquetas de apertura tienen esta sintaxis: `<elementName>`.

```js
assert.isAtLeast(document.querySelectorAll('a').length, 3);
```

Te falta una etiqueta de cierre (`a`) después de la imagen.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Tu elemento de anclaje (`a`) debe tener una etiqueta de cierre. Las etiquetas de cierre tienen un `/` justo después del carácter `<`.

```js
assert.isAtLeast(code.match(/<\/a>/g)?.length, 3);
```

Solo debes añadir una etiqueta de cierre de anclaje (`a`). Por favor, elimina cualquier extra.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

A tu elemento de anclaje (`a`) le falta un atributo `href`. Revisa que haya un espacio después del nombre de la etiqueta de apertura y/o haya espacios antes de todos los nombres de atributos.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Tu elemento de anclaje (`a`) debería enlazar a `https://freecatphotoapp.com`. Has omitido la URL o hay un error tipográfico.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Tu elemento `img` debería estar anidado dentro del elemento de anclaje (`a`). Todo el elemento `img` debería estar dentro de las etiquetas de apertura y cierre del elemento de anclaje (`a`).

```js
assert.equal(document.querySelector('img')?.parentNode.nodeName, 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```
