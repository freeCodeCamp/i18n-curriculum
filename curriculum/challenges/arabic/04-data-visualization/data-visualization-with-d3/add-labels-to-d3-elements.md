---
id: 587d7faa367417b2b2512bd2
title: إضافة تسميات إلى عناصر D3
challengeType: 6
forumTopicId: 301476
dashedName: add-labels-to-d3-elements
---

# --description--

D3 lets you label a graph element, such as a bar, using the SVG `text` element.

Like the `rect` element, a `text` element needs to have `x` and `y` attributes, to place it on the SVG. كما يحتاج إلى الوصول إلى البيانات لعرض تلك القيم.

D3 يمنحك درجة عالية من التحكم في كيفية تسمية الأعمدة.

# --instructions--

الكود الموجود في المحرر بالفعل ربط البيانات بكل عنصر `text` جديد. أولا، الحق nodes `text` بـ `svg`. بعد ذلك، أضف سمات للإحداثيات `x` و `y`. يجب أن تحسب بنفس الطريقة التي حسبت بها السمات في `rect`، ولكن قيمة `y` في `text` يجب أن يظهر التسمية 3 وحدات أعلى من العمود. أخيرا، استخدم طريقة `text()` في D3 لتعيين التسمية مساوية لقيمة نقطة البيانات.

**ملاحظة:** لكي تجلس التسمية أعلى من العمود، قرر ما إذا كانت قيمة `y` للنص `text` يجب أن تكون 3 أكبر أو 3 أقل من قيمة `y` للعمود.

# --hints--

يجب أن يحتوي أول عنصر `text` على تسمية `12` و على `y` بقيمة `61`.

```js
assert($('text').eq(0).text() == '12' && $('text').eq(0).attr('y') == '61');
```

يجب أن يحتوي ثاني عنصر `text` على تسمية `31` و على `y` بقيمة `4`.

```js
assert($('text').eq(1).text() == '31' && $('text').eq(1).attr('y') == '4');
```

يجب أن يحتوي ثالث عنصر `text` على تسمية `22` و على `y` بقيمة `31`.

```js
assert($('text').eq(2).text() == '22' && $('text').eq(2).attr('y') == '31');
```

يجب أن يحتوي رابع عنصر `text` على تسمية `17` و على `y` بقيمة `46`.

```js
assert($('text').eq(3).text() == '17' && $('text').eq(3).attr('y') == '46');
```

يجب أن يحتوي خامس عنصر `text` على تسمية `25` و على `y` بقيمة `22`.

```js
assert($('text').eq(4).text() == '25' && $('text').eq(4).attr('y') == '22');
```

يجب أن يحتوي سادس عنصر `text` على تسمية `18` و على `y` بقيمة `43`.

```js
assert($('text').eq(5).text() == '18' && $('text').eq(5).attr('y') == '43');
```

يجب أن يحتوي سابع عنصر `text` على تسمية `29` و على `y` بقيمة `10`.

```js
assert($('text').eq(6).text() == '29' && $('text').eq(6).attr('y') == '10');
```

يجب أن يحتوي ثامن عنصر `text` على تسمية `14` و على `y` بقيمة `55`.

```js
assert($('text').eq(7).text() == '14' && $('text').eq(7).attr('y') == '55');
```

يجب أن يحتوي تاسع عنصر `text` على تسمية `9` و على `y` بقيمة `70`.

```js
assert($('text').eq(8).text() == '9' && $('text').eq(8).attr('y') == '70');
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
       .attr("fill", "navy");

    svg.selectAll("text")
       .data(dataset)
       .enter()
       // Add your code below this line




       // Add your code above this line
  </script>
<body>
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

    svg.selectAll("text")
       .data(dataset)
       .enter()
       .append("text")
       .attr("x", (d, i) => i * 30)
       .attr("y", (d, i) => h - (3 * d) - 3)
       .text((d) => d)
  </script>
<body>
```
