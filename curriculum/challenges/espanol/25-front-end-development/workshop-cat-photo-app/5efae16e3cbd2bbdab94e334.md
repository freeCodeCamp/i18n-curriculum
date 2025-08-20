---
id: 5efae16e3cbd2bbdab94e334
title: Paso 33
challengeType: 0
dashedName: step-33
---

# --description--

Después del último elemento `img`, añade un elemento `figcaption` con el texto `Cats hate other cats.`

# --hints--

Tu elemento `figcaption` debe tener una etiqueta de apertura. Las etiquetas de apertura tienen la siguiente sintaxis: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figcaption'), 2);
```

Tu elemento `figcaption` debe tener una etiqueta de cierre. Las etiquetas de cierre tienen un `/` justo después del carácter `<`.

```js
assert.lengthOf(code.match(/<\/figcaption\>/g), 2);
```

Debe haber un elemento `figure` justo encima de la etiqueta de cierre del segundo elemento `section`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

El último elemento `img` debe estar anidado en el elemento `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Tu elemento `figure` debe tener una etiqueta de apertura. Las etiquetas de apertura tienen la siguiente sintaxis: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

Tu elemento `figure` debe tener una etiqueta de cierre. Las etiquetas de cierre tienen un `/` justo después del carácter `<`.

```js
assert.lengthOf(code.match(/<\/figure\>/g), 2);
```

El elemento `figcaption` debe estar anidado en el elemento `figure`.

```js
assert.lengthOf(document.querySelectorAll('figure > figcaption'), 2);
```

El elemento `figcaption` anidado en el elemento `figure` debe estar debajo del elemento `img`. Tienes el elemento `img` y el elemento `figcaption` en el orden incorrecto.

```js
assert.equal(
  document.querySelectorAll('figcaption')[1]?.previousElementSibling.nodeName,
    'IMG'
);
```

El elemento `figcaption` debe tener el texto `Cats hate other cats.` Se ha omitido una palabra o existe un error tipográfico.

```js
assert.match(
  document
    .querySelectorAll('figcaption')[1]
    ?.innerText?.trim().replace(/\s+/g, ' ').toLowerCase(),
    /^Cats hate other cats\.?$/i
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
      <section>
        <h2>Cat Lists</h2>
        <h3>Things cats love:</h3>
        <ul>
          <li>catnip</li>
          <li>laser pointers</li>
          <li>lasagna</li>
        </ul>
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
          <figcaption>Cats <em>love</em> lasagna.</figcaption>  
        </figure>
        <h3>Top 3 things cats hate:</h3>
        <ol>
          <li>flea treatment</li>
          <li>thunder</li>
          <li>other cats</li>
        </ol>
--fcc-editable-region--
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch.">

        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
