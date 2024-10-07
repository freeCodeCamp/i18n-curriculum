---
id: 587d7fa9367417b2b2512bcf
title: تغيير ديناميكي لارتفاع كل عمود
challengeType: 6
forumTopicId: 301486
dashedName: dynamically-change-the-height-of-each-bar
---

# --description--

The height of each bar can be set to the value of the data point in the array, similar to how the `x` value was set dynamically.

```js
selection.attr("property", (d, i) => {

})
```

هنا `d` سيكون قيمة نقطة البيانات، و `i` سيكون رَقَم ترتيب نقطة البيانات في القائمة.

# --instructions--

غير وظيفة إعادة التفعيل لسمة `height` لإرجاع 3 أضعاف قيمة البيانات.

**ملاحظة:** تذكر أن ضرب جميع نِقَاط البيانات بنفس الرَّقَم الثابت يؤدى إلى تغيير المقاييس (مثلا كتكبيرهم). ويساعد على رؤية الاختلافات بين قيم الأعمدة في هذا المثال.

# --hints--

يجب أن يحتوي أول `rect` على `height` بقيمة `36`.

```js
assert($('rect').eq(0).attr('height') == '36');
```

يجب أن يحتوي ثاني `rect` على `height` بقيمة `93`.

```js
assert($('rect').eq(1).attr('height') == '93');
```

يجب أن يحتوي ثالث `rect` على `height` بقيمة `66`.

```js
assert($('rect').eq(2).attr('height') == '66');
```

يجب أن يحتوي رابع `rect` على `height` بقيمة `51`.

```js
assert($('rect').eq(3).attr('height') == '51');
```

يجب أن يحتوي خامس `rect` على `height` بقيمة `75`.

```js
assert($('rect').eq(4).attr('height') == '75');
```

يجب أن يحتوي سادس `rect` على `height` بقيمة `54`.

```js
assert($('rect').eq(5).attr('height') == '54');
```

يجب أن يحتوي سابع `rect` على `height` بقيمة `87`.

```js
assert($('rect').eq(6).attr('height') == '87');
```

يجب أن يحتوي ثامن `rect` على `height` بقيمة `42`.

```js
assert($('rect').eq(7).attr('height') == '42');
```

يجب أن يحتوي تلسع `rect` على `height` بقيمة `27`.

```js
assert($('rect').eq(8).attr('height') == '27');
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
       .attr("y", 0)
       .attr("width", 25)
       .attr("height", (d, i) => {
         // Add your code below this line



         // Add your code above this line
       });
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
       .attr("y", 0)
       .attr("width", 25)
       .attr("height", (d, i) => {
         return d * 3
       });
  </script>
</body>
```
