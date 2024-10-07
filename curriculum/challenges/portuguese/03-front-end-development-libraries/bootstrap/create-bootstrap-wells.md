---
id: bad87fee1348bd9aec908848
title: Criar poços do Bootstrap
challengeType: 0
forumTopicId: 16825
dashedName: create-bootstrap-wells
---

# --description--

Bootstrap has a class called `well` that can create a visual sense of depth for your columns.

Aninhe um elemento `div` com a classe `well` dentro de cada um de seus elementos `col-xs-6` `div`.

# --hints--

Você deve adicionar um elemento `div` com a classe `well` dentro de cada um dos elementos `div` com a classe `col-xs-6`

```js
const wells = document.querySelectorAll('div.col-xs-6 > div.well');
assert.lengthOf( wells,2 ); 
```

Ambos os elementos `div` com a classe `col-xs-6` devem estar aninhados dentro do elemento `div` com a classe `row`.

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

Todos os elementos `div` devem ter tags de fechamento.

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
