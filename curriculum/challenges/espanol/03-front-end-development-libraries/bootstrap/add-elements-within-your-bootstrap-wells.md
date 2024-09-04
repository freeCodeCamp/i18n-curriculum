---
id: bad87fee1348bd9aec908849
title: Agrega elementos dentro de tus recursos de Bootstrap
challengeType: 0
forumTopicId: 16636
dashedName: add-elements-within-your-bootstrap-wells
---

# --description--

Ahora estamos a varios elementos `div` de profundidad en cada columna de nuestra fila. Esto es lo más profundo que necesitaremos ir. Ahora podemos agregar nuestros elementos `button`.

Anida tres elementos `button` dentro de cada uno de los elementos `div` que posean una clase `well`.

# --hints--

Tres elementos `button` deben estar anidados dentro de cada uno de tus elementos `div` con la clase `well`.

```js
const buttonOne = document.querySelectorAll('div.well')?.[0];
const buttonOneChildren = buttonOne?.querySelectorAll(`:scope ${'button'}`);
assert.lengthOf(buttonOneChildren,3);

const buttonTwo = document.querySelectorAll('div.well')?.[1]
const buttonTwoChildren = buttonTwo?.querySelectorAll(`:scope ${'button'}`);
assert.lengthOf(buttonTwoChildren,3);
```

Debes tener un total de 6 elementos `button`.

```js
assert.lengthOf(document.querySelectorAll('button'), 6);
```

Todos tus elementos `button` deben tener etiquetas de cierre.

```js
assert.match(code,/<\/button>/g);
assert.match(code,/<button/g);
assert.equal(code.match(/<\/button>/g).length,code.match(/<button/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <div class="well">



      </div>
    </div>
    <div class="col-xs-6">
      <div class="well">



      </div>
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
      <div class="well">
        <button></button>
        <button></button>
        <button></button>
      </div>
    </div>
    <div class="col-xs-6">
      <div class="well">
        <button></button>
        <button></button>
        <button></button>
      </div>
    </div>
  </div>
</div>
```
