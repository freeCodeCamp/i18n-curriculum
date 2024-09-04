---
id: bad87fee1348bd9aec908848
title: Creare degli elementi incassati con Bootstrap
challengeType: 0
forumTopicId: 16825
dashedName: create-bootstrap-wells
---

# --description--

Bootstrap ha una classe chiamata `well` che può creare un effetto di profondità per le tue colonne.

Nidifica un elemento `div` con la classe `well` dentro a ognuno dei tuoi elementi `div` di classe `col-xs-6`.

# --hints--

Dovresti aggiungere un elemento `div` di classe `well` all'interno di ciascuno dei tuoi elementi `div` di classe `col-xs-6`

```js
const wells = document.querySelectorAll('div.col-xs-6 > div.well');
assert.lengthOf( wells,2 ); 
```

Entrambi i tuoi elementi `div` di classe `col-xs-6` dovrebbero essere annidati nel tuo elemento `div` di classe `row`.

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

Tutti i tuoi elementi `div` dovrebbero avere un tag di chiusura.

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
