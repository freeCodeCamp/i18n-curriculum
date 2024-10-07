---
id: 587d7fa9367417b2b2512bd0
title: عكس عناصر SVG
challengeType: 6
forumTopicId: 301488
dashedName: invert-svg-elements
---

# --description--

You may have noticed the bar chart looked like it's upside-down, or inverted. This is because of how SVG uses (x, y) coordinates.

في SVG، نقطة المنشأ للإحداثيات هي في الزاوية اليسرى الأعلى. إحداثيات `x` من 0 تضع شكلا على الحافة اليسرى لمنطقة SVG. إحداثيات `y` من 0 تضع شكلا على الحافة العليا لمنطقة SVG. القيم الأعلى من `x` تدفع المستطيل إلى اليمين. القيم الأعلى من `y` تدفع المستطيل إلى الأسفل.

لتعديل اتجاه الأعمدة، تحتاج إلى تغيير الطريقة التي يتم بها حساب إحداثيات `y`. وهي بحاجة إلى أن تأخذ في الحسبان ارتفاع العمود والارتفاع الإجمالي لمنطقة SVG.

ويصل ارتفاع منطقة SVG إلى 100. إذا كان لديك نقطة بيانات قيمتها 0 في المجموعة. ستريد أن يبدأ العمود في أسفل منطقة SVG (وليس القمة). للقيام بذلك، اعطي إحداثيات `y` قيمة 100. إذا كانت قيمة نقطة البيانات 1، ستبدأ بإحداثيات `y` من 100 لتضع العمود في الأسفل. ثم تحتاج إلى حساب ارتفاع العمود1، لذا فإن قيمة الإحداثيات `y` ستكون 99 في النهاية.

الإحداثيات `y` التي هي `y = heightOfSVG - heightOfBar` ستضع الأعمدة إلى الاتجاه الصحيح.

# --instructions--

غير وظيفة إعادة التفعيل لسمة `y` لتعدِّل الأعمدة إلى الاتجاه الصحيح. تذكر أن `height` (طول العمود) هو 3 أضعاف قيمة البيانات `d`.

**ملاحظة:** بصفة عامة، العَلاقة هي `y = h - m * d`, حيث `m` هو الرَّقَم الثبات الذي يغير مقياس نُقَط البيانات.

# --hints--

يجب أن يحتوي أول `rect` على `y` بقيمة `64`.

```js
assert($('rect').eq(0).attr('y') == h - dataset[0] * 3);
```

يجب أن يحتوي ثاني `rect` على `y` بقيمة `7`.

```js
assert($('rect').eq(1).attr('y') == h - dataset[1] * 3);
```

يجب أن يحتوي ثالث `rect` على `y` بقيمة `34`.

```js
assert($('rect').eq(2).attr('y') == h - dataset[2] * 3);
```

يجب أن يحتوي رابع `rect` على `y` بقيمة `49`.

```js
assert($('rect').eq(3).attr('y') == h - dataset[3] * 3);
```

يجب أن يحتوي خامس `rect` على `y` بقيمة `25`.

```js
assert($('rect').eq(4).attr('y') == h - dataset[4] * 3);
```

يجب أن يحتوي سادس `rect` على `y` بقيمة `46`.

```js
assert($('rect').eq(5).attr('y') == h - dataset[5] * 3);
```

يجب أن يحتوي سابع `rect` على `y` بقيمة `13`.

```js
assert($('rect').eq(6).attr('y') == h - dataset[6] * 3);
```

يجب أن يحتوي ثامن `rect` على `y` بقيمة `58`.

```js
assert($('rect').eq(7).attr('y') == h - dataset[7] * 3);
```

يجب أن يحتوي تاسع `rect` على `y` بقيمة `73`.

```js
assert($('rect').eq(8).attr('y') == h - dataset[8] * 3);
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
       .attr("y", (d, i) => {
         // Add your code below this line



         // Add your code above this line
       })
       .attr("width", 25)
       .attr("height", (d, i) => 3 * d);
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
       .attr("height", (d, i) => 3 * d);
  </script>
</body>
```
