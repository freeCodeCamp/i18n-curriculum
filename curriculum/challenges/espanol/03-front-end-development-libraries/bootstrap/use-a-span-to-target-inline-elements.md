---
id: bad87fee1348bd9aedf08845
title: Usa un span Para Apuntar a Elementos En Linea
challengeType: 0
forumTopicId: 18370
dashedName: use-a-span-to-target-inline-elements
---

# --description--

Puedes usar spans para crear elementos en linea. Recuerdas cuando usamos la clase `btn-block` para hacer que el botón ocupe la fila entera?

<button class='btn' style='background-color: rgb(0, 100, 0);  color: rgb(255, 255, 255);'>botón normal</button>

<button class='btn btn-block' style='background-color: rgb(0, 100, 0);  color: rgb(255, 255, 255);'>botón btn-block</button>

Eso ilustra la diferencia entre un elemento "inline" y un elemento "block".

Usando el elemento en linea `span`, pueden poner varios elementos en la misma linea, e incluso estilizar diferentes partes de la misma linea por separado.

Usando un elemento `span`, anida la palabra `love` dentro del elemento `p` que actualmente tiene el texto `Things cats love`. Luego dale a `span` la clase `text-danger` para cambiar el texto a rojo.

Así es como harías esto para el elemento `p` que tiene el texto `Top 3 things cats hate`:

```html
<p>Top 3 things cats <span class="text-danger">hate:</span></p>
```

# --hints--

Tu elemento `span` debe estar dentro de tu elemento `p`.

```js
assert.lengthOf(document.querySelectorAll('p span'),1);
```

Tu elemento `span` debe tener solo el texto `love`.

```js
assert.match(document.querySelector('p span')?.textContent,/love/i);
assert.notMatch(document.querySelector('p span')?.textContent, /Things cats/i);
```

Tu elemento `span` debe tener la clase `text-danger`.

```js
assert.isTrue(document.querySelector('span')?.classList?.contains('text-danger'));
```

Tu elemento `span` debe tener una etiqueta de cierre.

```js
assert.match(code,/<\/span>/g);
assert.match(code,/<span/g);
assert.equal(code.match(/<\/span>/g).length,code.match(/<span/g).length);
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

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Three kittens running towards the camera.">
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
  <p>Things cats love:</p>
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
  <h2 class="text-primary text-center">CatPhotoApp</h2>

  <a href="#"><img class="img-responsive thick-green-border" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg" class="img-responsive" alt="Three kittens running towards the camera.">
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
  <p>Things cats <span class="text-danger">love</span>:</p>
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
