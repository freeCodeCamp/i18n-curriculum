---
id: bad87fee1348bd9aec908854
title: Beschrifte Bootstrap Wells
challengeType: 0
forumTopicId: 18223
dashedName: label-bootstrap-wells
---

# --description--

For the sake of clarity, let's label both of our wells with their ids.

Above your left-well, inside its `col-xs-6` `div` element, add an `h4` element with the text `#left-well`.

Above your right-well, inside its `col-xs-6` `div` element, add an `h4` element with the text `#right-well`.

# --hints--

Du solltest ein `h4`-Element zu jedem deiner `<div class="col-xs-6">`-Elemente hinzufügen.

```js
const columnSixes = document.querySelectorAll('.col-xs-6');
const columnSixOneChildren = columnSixes?.[0]?.querySelectorAll(`:scope ${'h4'}`);
assert.lengthOf(columnSixOneChildren,1); 

const columnSixTwoChildren = columnSixes?.[1]?.querySelectorAll(`:scope ${'h4'}`);
assert.lengthOf(columnSixTwoChildren,1); 
```

Dein `h4`-Element sollte den Text `#left-well` beinhalten.

```js
const firstH4 = document.querySelectorAll('h4')?.[0]; 
assert.match(firstH4?.textContent,/#left-well/gi); 
```

Ein `h4`-Element sollte den Text `#right-well` beinhalten.

```js
const secondH4 = document.querySelectorAll('h4')?.[1]; 
assert.match(secondH4?.textContent,/#right-well/gi); 
```

Alle deine `h4`-Elemente sollten abschließende Tags haben.

```js
assert.match(code,/<\/h4>/g);
assert.match(code,/<h4/g);
assert.equal(code.match(/<\/h4>/g).length , code.match(/<h4/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">

      <div class="well" id="left-well">
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
      </div>
    </div>
    <div class="col-xs-6">

      <div class="well" id="right-well">
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
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
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
      </div>
    </div>
  </div>
</div>
```
