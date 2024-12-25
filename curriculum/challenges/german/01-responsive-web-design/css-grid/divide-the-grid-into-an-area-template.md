---
id: 5a94fe0569fb03452672e45c
title: Unterteile das Raster in eine Bereichsvorlage
challengeType: 0
forumTopicId: 301130
dashedName: divide-the-grid-into-an-area-template
---

# --description--

You can group cells of your grid together into an <dfn>area</dfn> and give the area a custom name. Do this by using `grid-template-areas` on the container like this:

```css
grid-template-areas:
  'header header header'
  'advert content content'
  'advert footer footer';
```

Der obige Code gruppiert die Zellen des Rasters in vier Bereiche: `header`, `advert`, `content` und `footer`. Jedes Wort steht für eine Zelle und jedes Paar Anführungszeichen für eine Zeile.

# --instructions--

Ändere die Vorlage (Template) so, dass sich der `footer`-Bereich über die gesamte untere Zeile erstreckt. Das Definieren der Bereiche hat jetzt noch keinen sichtbaren Effekt. Später wirst du ein Element erstellen, das einen Bereich verwendet, um zu sehen, wie es funktioniert.

# --hints--

Die `container`-Klasse sollte eine `grid-template-areas`-Eigenschaft besitzen, ähnlich wie im Beispiel, aber mit dem `footer`-Bereich, der sich über die gesamte untere Zeile erstreckt.

```js
assert.match(
  __helpers.removeCssComments(code),
  /.container\s*?{[\s\S]*grid-template-areas\s*?:\s*?["|']\s*?header\s*?header\s*?header\s*?["|']\s*?["|']\s*?advert\s*?content\s*?content\s*?["|']\s*?["|']\s*?footer\s*?footer\s*?footer\s*?["|']\s*?;[\s\S]*}/gi
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
    grid-template-areas:
    /* Only change code below this line */
      'header header header'
      'advert content content'
      'advert footer footer';
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

    grid-template-areas:
      'header header header'
      'advert content content'
      'footer footer footer';
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
