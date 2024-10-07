---
id: bad87fee1348bd9aec908847
title: Teile dein Bootstrap-Zeile
challengeType: 0
forumTopicId: 18306
dashedName: split-your-bootstrap-row
---

# --description--

Now that we have a Bootstrap Row, let's split it into two columns to house our elements.

Erstelle innerhalb deiner Zeile zwei `div`-Elemente, beide mit der Klasse `col-xs-6`.

# --hints--

Zwei `div class="col-xs-6"`-Elemente sollten in deinem `div class="row"`-Element verschachtelt sein.

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

All deine `div`-Elemente sollten abschließende Tags haben.

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
