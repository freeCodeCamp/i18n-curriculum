---
id: bad87fee1348bd9aec908848
title: Erstelle Bootstrap Wells
challengeType: 0
forumTopicId: 16825
dashedName: create-bootstrap-wells
---

# --description--

Bootstrap has a class called `well` that can create a visual sense of depth for your columns.

Verschachtle ein `div`-Element mit der Klasse `well` in jedem deiner `col-xs-6` `div`-Elemente.

# --hints--

Du solltest ein `div` Element mit der Klasse `well` in jedem deiner `div` Elemente mit der Klasse `col-xs-6` hinzufügen

```js
const wells = document.querySelectorAll('div.col-xs-6 > div.well');
assert.lengthOf( wells,2 ); 
```

Deine beiden `div`-Elemente der Klasse `col-xs-6` sollten in deinem `div`-Element der Klasse `row` eingebettet sein.

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

All deine `div`-Elemente sollen abschließende Tags enthalten.

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
