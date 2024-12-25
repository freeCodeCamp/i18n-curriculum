---
id: 5a90374338fddaf9a66b5d3a
title: Ein Element mit justify-self horizontal ausrichten
challengeType: 0
videoUrl: 'https://scrimba.com/p/pByETK/cJbpKHq'
forumTopicId: 301122
dashedName: align-an-item-horizontally-using-justify-self
---

# --description--

In CSS Grid, the content of each item is located in a box which is referred to as a <dfn>cell</dfn>. You can align the content's position within its cell horizontally using the `justify-self` property on a grid item. By default, this property has a value of `stretch`, which will make the content fill the whole width of the cell. This CSS Grid property accepts other values as well:

`start`: Richtet den Inhalt am linken Rand der Zelle aus,

`center`: Richtet den Inhalt in der Mitte der Zelle aus,

`end`: Richtet den Inhalt am rechten Rand der Zelle aus.

# --instructions--

Verwende die Eigenschaft `justify-self`, um das Element mit der Klasse `item2` zu zentrieren.

# --hints--

Die Klasse `item2` sollte eine Eigenschaft `justify-self` besitzen, die den Wert `center` enthält.

```js
assert.match(
  code,
  /.item2\s*?{[\s\S]*justify-self\s*?:\s*?center\s*?;[\s\S]*}/gi
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
    /* Only change code below this line */


    /* Only change code above this line */
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
  .item2 {
    justify-self: center;
  }
</style>
```
