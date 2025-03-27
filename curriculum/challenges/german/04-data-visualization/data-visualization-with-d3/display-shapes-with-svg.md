---
id: 587d7fa8367417b2b2512bcc
title: Formen mit SVG darstellen
challengeType: 6
forumTopicId: 301485
dashedName: display-shapes-with-svg
---

# --description--

The last challenge created an `svg` element with a given width and height, which was visible because it had a `background-color` applied to it in the `style` tag. The code made space for the given width and height.

Im nächsten Schritt erstellst du eine Form, die dem `svg`-Bereich hinzugefügt wird. SVG unterstützt verschiedene Formen, unter anderem Rechtecke und Kreise. Sie werden verwendet, um Daten anzuzeigen. Zum Beispiel könnte die SVG-Form eines Rechtecks (`<rect>`) einen Balken in einem Balkendiagramm darstellen.

Wenn du eine Form in den `svg`-Bereich einfügst, kannst du mithilfe der `x`- und `y`-Koordinaten angeben, wo diese Form platziert werden soll. Der Ursprung von (0, 0) befindet sich in der oberen linken Ecke. Positive `x`-Werte verschieben die Form nach rechts, positive `y`-Werte nach unten vom Ursprungspunkt.

Um eine Form in der Mitte der 500 (Breite) x 100 (Höhe) großen `svg` der letzten Aufgabe zu platzieren, wäre die `x`-Koordinate 250 und die `y` Koordinate 50.

Ein SVG-`rect` verfügt über vier Attribute. Es gibt die `x`- und `y`-Koordinaten, anhand welcher die Position im `svg`-Bereich festgelegt wird. Es gibt allerdings auch `height` und `width` zur Festlegung der Größe.

# --instructions--

Füge eine `rect`-Form der `svg` mithilfe von `append()` hinzu und gebe ihr ein `width`-Attribut von `25` und ein `height`-Attribut von `100`. Gebe dem `rect` zudem jeweils auf `0` gesetzte `x`- und `y`-Attribute.

# --hints--

Dein Dokument sollte 1 `rect`-Element beinhalten.

```js
assert.lengthOf(document.querySelectorAll('rect'), 1);
```

Das `rect`-Element sollte über ein auf `25` gesetztes `width`-Attribut verfügen.

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('width'), '25');
```

Das `rect`-Element sollte über ein auf `100` gesetztes `height`-Attribut verfügen.

```js
assert.strictEqual(
  document.querySelector('rect')?.getAttribute('height'),
  '100'
);
```

Das `rect`-Element sollte über ein auf `0` gesetztes `x`-Attribut verfügen.

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('x'), '0');
```

Das `rect`-Element sollte über ein auf `0` gesetztes `y`-Attribut verfügen.

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('y'), '0');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);
    // Add your code below this line



    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h)
      .append('rect')
      .attr('width', 25)
      .attr('height', 100)
      .attr('x', 0)
      .attr('y', 0);
  </script>
</body>
```
