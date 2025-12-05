---
id: 5dfa30b9eacea3f48c6300ad
title: Paso 17
challengeType: 0
dashedName: step-17
---

# --description--

En pasos anteriores, usaste un elemento de anclaje para convertir texto en un enlace. Otros tipos de contenido también se pueden convertir en un enlace envolviéndolos en etiquetas anchor. 

Aquí hay un ejemplo de cómo convertir una imagen en un enlace:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Convierte la imagen en un enlace rodeándola con las etiquetas correctas. Utiliza `https://freecatphotoapp.com` como valor del atributo `href` del elemento archor.

# --hints--

Debes tener un elemento `img` con un valor `src` de `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Puede que lo hayas borrado accidentalmente.

```js
assert.equal(
  document.querySelector('img')?.getAttribute('src'),
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Tu elemento (`a`) debe tener una etiqueta de apertura. Las etiquetas de apertura tienen esta sintaxis: `<elementName>`.

```js
assert.isAtLeast(document.querySelectorAll('a').length, 3);
```

Te falta una etiqueta (`a`) de cierre después de la imagen.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Tu elemento anchor (`a`) debe tener una etiqueta de cierre. Las etiquetas de cierre tiene una `/` después del carácter `<`.

```js
assert.isAtLeast(code.match(/<\/a>/g)?.length, 3);
```

Solo debes añadir una etiqueta de cierre del elemento anchor (`a`). Elimina cualquier extra.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Tu elemento anchor (`a`) no tiene un atributo `href`. Comprueba que hay un espacio después del nombre de la etiqueta de apertura y/o que hay espacios antes de todos los nombres de los atributos.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Tu elemento anchor (`a`) te debe de llevar a `https://freecatphotoapp.com`. Probablemente no has añadido la URL o tienes un error tipográfico.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Tu elemento `img` debe estar anidado dentro del elemento anchor (`a`). Todo el elemento `img` debe estar entre las etiquetas de apertura y cierre del elemento anchor (`a`).

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
