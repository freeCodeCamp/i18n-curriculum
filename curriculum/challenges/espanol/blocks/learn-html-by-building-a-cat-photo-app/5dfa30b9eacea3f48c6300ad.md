---
id: 5dfa30b9eacea3f48c6300ad
title: Paso 17
challengeType: 0
dashedName: step-17
---

# --description--

En los pasos anteriores usaste un elemento anchor para convertir un texto a un enlace. Otros tipos de contenido también pueden convertirse en un enlace envolviéndolos en etiquetas de anclaje.

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
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Tu elemento de anclaje (`a`) debe tener una etiqueta de apertura. Las etiquetas de apertura tienen esta sintaxis: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

Te falta una etiqueta de cierre (`a`) después de la imagen.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Tu elemento de anclaje (`a`) debe tener una etiqueta de cierre. Las etiquetas de cierre tienen un `/` justo después del carácter `<`.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Solo debes añadir una etiqueta de cierre de anclaje (`a`). Por favor, elimina cualquier extra.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

A tu elemento de anclaje (`a`) le falta un atributo `href`. Revisa que haya un espacio después del nombre de la etiqueta de apertura y/o haya espacios antes de todos los nombres de atributos.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

Tu elemento de anclaje (`a`) debería enlazar a `https://freecatphotoapp.com`. Has omitido la URL o hay un error tipográfico.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

Tu elemento anchor (`a`) no tiene un atributo `href`. Compruebe que hay un espacio después del nombre de la etiqueta de apertura y/o que hay espacios antes de todos los nombres de atributos.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Tu elemento anchor (`a`) debe de enlazar a `https://freecatphotoapp.com`. Ha omitido la URL o tiene un error tipográfico.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Your `img` element should be nested within the anchor (`a`) element. The entire `img` element should be inside the opening and closing tags of the anchor (`a`) element.

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
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

