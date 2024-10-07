---
id: 587d7fa9367417b2b2512bd1
title: تغيير لون عنصر في SVG
challengeType: 6
forumTopicId: 301480
dashedName: change-the-color-of-an-svg-element
---

# --description--

The bars are in the right position, but they are all the same black color. SVG has a way to change the color of the bars.

يتم تلوين شكل `rect` في SVG بواسطة سمة `fill`. وهو يدعم رموز hex وأسماء الألوان، وقيم rgb، بالإضافة إلى خيارات أكثر تعقيداً مثل معاملات التدرج (gradients) والشفافية (transparency).

# --instructions--

أضف طريقة `attr()` لتحديد `fill` لجميع الأعمدة إلى اللون navy.

# --hints--

يجب أن يكون لكل الأعمدة `fill` لون navy.

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
