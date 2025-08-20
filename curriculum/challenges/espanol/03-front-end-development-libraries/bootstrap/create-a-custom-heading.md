---
id: bad87fee1348bd9aede08845
title: Crea un Encabezado Personalizado
challengeType: 0
forumTopicId: 16816
dashedName: create-a-custom-heading
---

# --description--

Haremos un encabezado simple para nuestro 'Cat Photo App' colocando el título y la imagen del gato relajándose en la misma fila.

Recuerda que Bootstrap utiliza un sistema de cuadrícula adaptable, el cual hace más fácil poner elementos en filas y especificar el ancho relativo de cada elemento. La mayoría de las clases de Bootstrap pueden ser aplicadas a un elemento `div`.

Coloca tu primera imagen y tu elemento `h2` dentro de un solo elemento `<div class="row">`. Anida tu elemento `h2` dentro de `<div class="col-xs-8">` y tu imagen en un `<div class="col-xs-4">` para que estén en la misma línea.

¿Observas cómo la imagen ahora tiene el tamaño adecuado para ajustarse al texto?

# --hints--

Tu elemento `h2` y el elemento superior `img` deben estar juntos dentro de un elemento `div` con la clase `row`.

```js
const row = document.querySelector('div.row');
const h2 = row?.querySelectorAll(`:scope ${'h2'}`)
const image = row?.querySelectorAll(`:scope ${'img'}`)
assert.lengthOf(h2,1);
assert.lengthOf(image ,1);
```

Tu elemento superior `img` debe estar dentro de un `div` con la clase `col-xs-4`.

```js
const column = document.querySelector('div.col-xs-4');
const div = column?.querySelectorAll(`:scope ${'div'}`);
const img = column?.querySelectorAll(`:scope ${'img'}`)
assert.isEmpty(div);
assert.lengthOf(img,1)
```

Tu elemento `h2` debe estar dentro de un `div` con la clase `col-xs-8`.

```js
const column = document.querySelector('div.col-xs-8');
const div = column?.querySelectorAll(`:scope ${'div'}`);
const h2 = column?.querySelectorAll(`:scope ${'h2'}`)

assert.isEmpty(div);
assert.lengthOf(h2, 1);
```

Todos tus elementos `div` deben tener etiquetas de cierre.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length,code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">

<style>
  h2 {
    font-family: Lobster, Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }
</style>

<div class="container-fluid">
  <h2 class="text-primary text-center">CatPhotoApp</h2>

  <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Tuxedo cats running on dirt ground.">
  <div class="row">
    <div class="col-xs-4">
      <button class="btn btn-block btn-primary">Like</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-info">Info</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-danger">Delete</button>
    </div>
  </div>
  <p>Things cats <span class="text-danger">love:</span></p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor"> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
    <label><input type="checkbox" name="personality"> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Crazy</label>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</div>
```

# --solutions--

```html
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">

<style>
  h2 {
    font-family: Lobster, Monospace;
  }

  .thick-green-border {
    border-color: green;
    border-width: 10px;
    border-style: solid;
    border-radius: 50%;
  }
</style>

<div class="container-fluid">
  <div class="row">
    <div class="col-xs-8">
      <h2 class="text-primary  text-center">CatPhotoApp</h2>
    </div>
    <div class="col-xs-4">
        <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
    </div>
  </div>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Tuxedo cats running on dirt ground.">
  <div class="row">
    <div class="col-xs-4">
      <button class="btn btn-block btn-primary">Like</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-info">Info</button>
    </div>
    <div class="col-xs-4">
      <button class="btn btn-block btn-danger">Delete</button>
    </div>
  </div>
  <p>Things cats <span class="text-danger">love:</span></p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor"> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label>
    <label><input type="checkbox" name="personality"> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Crazy</label>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</div>
```
