---
id: 587d7fa9367417b2b2512bd1
title: Ändere die Farbe eines SVG-Elements
challengeType: 6
forumTopicId: 301480
dashedName: change-the-color-of-an-svg-element
---

# --description--

The bars are in the right position, but they are all the same black color. SVG has a way to change the color of the bars.

In SVG ist eine `rect`-Form mit dem `fill`-Attribut gefärbt. Es unterstützt Hex-Codes, Farbnamen und Rgb-Werte sowie komplexere Optionen wie Farbverläufe und Transparenz.

# --instructions--

Füge eine `attr()`-Methode hinzu und setze das `fill`-Attribut aller Balken auf die Farbe Marineblau (navy).

# --hints--

Die Balken sollten alle die `fill`-Farbe marineblau (navy) haben.

```js
assert($('rect').css('fill') == 'rgb(0, 0, 128)');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3.select("body")
                  .append("svg")
                  .attr("width", w)
                  .attr("height", h);

    svg.selectAll("rect")
       .data(dataset)
       .enter()
       .append("rect")
       .attr("x", (d, i) => i * 30)
       .attr("y", (d, i) => h - 3 * d)
       .attr("width", 25)
       .attr("height", (d, i) => 3 * d)
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

    const svg = d3.select("body")
                  .append("svg")
                  .attr("width", w)
                  .attr("height", h);

    svg.selectAll("rect")
       .data(dataset)
       .enter()
       .append("rect")
       .attr("x", (d, i) => i * 30)
       .attr("y", (d, i) => h - 3 * d)
       .attr("width", 25)
       .attr("height", (d, i) => 3 * d)
       .attr("fill", "navy");

  </script>
</body>
```
