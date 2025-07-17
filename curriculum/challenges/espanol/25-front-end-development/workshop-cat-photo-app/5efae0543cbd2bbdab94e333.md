---
id: 5efae0543cbd2bbdab94e333
title: Paso 32
challengeType: 0
dashedName: step-32
---

# --description--

Para mejorar la accesibilidad de la imagen que agregaste, añade un atributo `alt` con el texto:

`Five cats looking around a field.`

# --hints--

El elemento `figure` debe tener una etiqueta de apertura. Las etiquetas de apertura tienen esta sintaxis: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

El elemento `figure` debe tener una etiqueta de cierre. Las etiquetas de cierre tienen un `/` justo después del carácter `<`.

```js
assert.lengthOf(code.match(/<\/figure>/g), 2);
```

Debe haber un elemento `figure` justo encima de la última etiqueta de cierre del elemento `section`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

El elemento `img` de Cats debe estar anidado en el elemento `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.exists(catsImg);
```

La tercera imagen debe tener un atributo `src` establecido en `https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.strictEqual(
  catsImg?.src?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

El elemento `img` de Cats debe tener un atributo `alt` con el valor `Five cats looking around a field.`

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.match(
  catsImg
    ?.getAttribute('alt')
    ?.replace(/\s+/g, ' '),
    /^Five cats looking around a field\.?$/i
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
        <figure>
--fcc-editable-region--
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg">
--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
