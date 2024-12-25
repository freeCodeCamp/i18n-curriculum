---
id: 5a94fdf869fb03452672e45b
title: Alle Elemente horizontal ausrichten mit align-items
challengeType: 0
videoUrl: 'https://scrimba.com/p/pByETK/ckzPeUv'
forumTopicId: 301121
dashedName: align-all-items-vertically-using-align-items
---

# --description--

Using the `align-items` property on a grid container will set the vertical alignment for all the items in our grid.

# --instructions--

Verwende sie jetzt, um alle Gegenstände an das Ende jeder Zelle zu verschieben.

# --hints--

Die Klasse `container` sollte eine Eigenschaft `align-items` besitzen, die den Wert `end` hat.

```js
assert.match(
  code,
  /.container\s*?{[\s\S]*align-items\s*?:\s*?end\s*?;[\s\S]*}/gi
);
```

# --seed--

## --seed-contents--

```html
<style>
  .item1 {
    background: LightSkyBlue;
  }
  .item2 {
    background: LightSalmon;
  }
  .item3 {
    background: PaleTurquoise;
  }
  .item4 {
    background: LightPink;
  }
  .item5 {
    background: PaleGreen;
  }

  .container {
    font-size: 40px;
    min-height: 300px;
    width: 100%;
    background: LightGray;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: 1fr 1fr 1fr;
    grid-gap: 10px;
    /* Only change code below this line */


    /* Only change code above this line */
  }
</style>

<div class="container">
  <div class="item1">1</div>
  <div class="item2">2</div>
  <div class="item3">3</div>
  <div class="item4">4</div>
  <div class="item5">5</div>
</div>
```

# --solutions--

```html
<style>
  .container {
    align-items: end;
  }
</style>
```
