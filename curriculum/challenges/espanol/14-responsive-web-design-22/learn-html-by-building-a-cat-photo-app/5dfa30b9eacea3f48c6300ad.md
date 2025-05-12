---
id: 5dfa30b9eacea3f48c6300ad
title: Paso 17
challengeType: 0
dashedName: step-17
---

# --description--

En los pasos anteriores usaste un elemento anchor para convertir un texto a un enlace. Otros tipos de contenido también se pueden convertir en un enlace envolviéndolos en etiquetas anchor.

Este es un ejemplo de cómo convertir una imagen en un enlace:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Convierte la imagen a un enlace rodeándola con las etiquetas correctas. Utiliza `https://freecatphotoapp.com` como el valor del atributo `href` del elemento anchor.

# --hints--

Debes tener un elemento `img` con un valor `src` de `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Puede que lo hayas borrado accidentalmente.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Tu elemento anchor (`a`) debe tener una etiqueta de apertura. Las etiquetas de apertura tienen esta sintaxis: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

Te falta una etiqueta (`a`) de cierre después de la imagen.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Tu elemento anchor (`a`) debe tener una etiqueta de cierre. Las etiquetas de cierre tiene una `/` después del carácter `<`.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Solo debes añadir una etiqueta anchor (`a`) de cierre. Elimina cualquier extra.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Tu elemento anchor (`a`) no tiene atributo `href`. Comprueba que hay un espacio después del nombre de la etiqueta de apertura y/o que hay espacios antes de los nombres de los atributos.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

Tu elemento anchor (`a`) te debe de llevar a `https://freecatphotoapp.com`. Probablemente no has añadido la URL o tienes un error tipográfico.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

Your anchor (`a`) element does not have an `href` attribute. Check that there is a space after the opening tag's name and/or there are spaces before all attribute names.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Your anchor (`a`) element should link to `https://freecatphotoapp.com`. You have either omitted the URL or have a typo.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Tu elemento `img` debe estar anidado dentro del elemento anchor (`a`). Todo el elemento `img` debe estar entre las etiquetas de apertura y cierre del elemento anchor (`a`).

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

