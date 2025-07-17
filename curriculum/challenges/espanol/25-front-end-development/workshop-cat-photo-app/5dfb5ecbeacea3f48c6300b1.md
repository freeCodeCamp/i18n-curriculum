---
id: 5dfb5ecbeacea3f48c6300b1
title: Paso 23
challengeType: 0
dashedName: step-23
---

# --description--

El elemento `li` se utiliza para crear un elemento de lista en una lista ordenada o desordenada.

Aquí hay un ejemplo de elementos de lista en una lista desordenada:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

Dentro del elemento `ul` anida tres elementos de lista para mostrar tres cosas que aman los gatos:

`catnip`

`laser pointers`

`lasagna`

# --hints--

Debes tener tres elementos `li`. Cada elemento `li` debe tener su propia etiqueta de apertura y cierre.

```js
assert.lengthOf(document.querySelectorAll('li'), 3);
assert.lengthOf(code.match(/<\/li\>/g), 3);
```

Debes tener tres elementos `li` con el texto `catnip`, `laser pointers` y `lasagna` en cualquier orden. Has omitido algún texto o tienes un error tipográfico.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText?.trim().replace(/\s+/g, ' ').toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

Los tres elementos `li` deben estar ubicados entre las etiquetas de apertura y cierre del elemento `ul`.

```js
assert.lengthOf(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ), 3
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
--fcc-editable-region--
        <ul>

        </ul>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
