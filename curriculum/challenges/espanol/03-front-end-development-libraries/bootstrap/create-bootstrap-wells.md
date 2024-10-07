---
id: bad87fee1348bd9aec908848
title: Crea Bootstrap Wells
challengeType: 0
forumTopicId: 16825
dashedName: create-bootstrap-wells
---

# --description--

Bootstrap has a class called `well` that can create a visual sense of depth for your columns.

Anida un elemento `div` con la clase `well` dentro de cada uno de tus elementos `col-xs-6` `div`.

# --hints--

Debes añadir un elemento `div` con la clase `well` dentro de cada uno de tus elementos `div` con la clase `col-xs-6`

```js
const wells = document.querySelectorAll('div.col-xs-6 > div.well');
assert.lengthOf( wells,2 ); 
```

Ambos de tus elementos `div` con la clase `col-xs-6` deben estar anidados dentro de tu elemento `div` con la clase `row`.

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

Todos tus elementos `div` deben tener etiquetas de cierre.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g)?.length , code.match(/<div/g)?.length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">

    </div>
    <div class="col-xs-6">

    </div>
  </div>
</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <div class="well"></div>
    </div>
    <div class="col-xs-6">
      <div class="well"></div>
    </div>
  </div>
</div>
```
