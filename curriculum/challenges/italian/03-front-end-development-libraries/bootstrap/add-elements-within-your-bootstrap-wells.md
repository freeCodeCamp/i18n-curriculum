---
id: bad87fee1348bd9aec908849
title: Aggiungere elementi in un contenitore well
challengeType: 0
forumTopicId: 16636
dashedName: add-elements-within-your-bootstrap-wells
---

# --description--

Ora siamo a diversi elementi `div` di profondità su ogni colonna della nostra riga. Questa è la profondità a cui dovremo andare. Ora possiamo aggiungere i nostri elementi `button`.

Annida tre elementi `button` all'interno di ciascuno dei tuoi elementi `div` di classe `well`.

# --hints--

Tre elementi `button` dovrebbero essere annidati all'interno di ciascuno dei tuoi elementi `div` di classe `well`.

```js
const buttonOne = document.querySelectorAll('div.well')?.[0];
const buttonOneChildren = buttonOne?.querySelectorAll(`:scope ${'button'}`);
assert.lengthOf(buttonOneChildren,3);

const buttonTwo = document.querySelectorAll('div.well')?.[1]
const buttonTwoChildren = buttonTwo?.querySelectorAll(`:scope ${'button'}`);
assert.lengthOf(buttonTwoChildren,3);
```

Dovresti avere un totale di 6 elementi `button`.

```js
assert.lengthOf(document.querySelectorAll('button'), 6);
```

Tutti i tuoi elementi `button` dovrebbero avere tag di chiusura.

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
