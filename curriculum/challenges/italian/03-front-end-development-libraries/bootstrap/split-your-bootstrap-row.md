---
id: bad87fee1348bd9aec908847
title: Dividere la riga di Bootrtrap
challengeType: 0
forumTopicId: 18306
dashedName: split-your-bootstrap-row
---

# --description--

Now that we have a Bootstrap Row, let's split it into two columns to house our elements.

Crea due elementi `div` all'interno della tua riga, entrambi di classe `col-xs-6`.

# --hints--

Due elementi `div class="col-xs-6"` dovrebbero essere annidati all'interno dell'elemento `div class="row"`.

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

Tutti i tuoi elementi `div` dovrebbero avere un tag di chiusura.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length , code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">


  </div>
</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6"></div>
    <div class="col-xs-6"></div>
  </div>
</div>
```
