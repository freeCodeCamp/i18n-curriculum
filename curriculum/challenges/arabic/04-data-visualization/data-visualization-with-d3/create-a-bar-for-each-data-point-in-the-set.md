---
id: 587d7fa8367417b2b2512bcd
title: إنشاء عمود لكل نقطة بيانات في المجموعة
challengeType: 6
forumTopicId: 301482
dashedName: create-a-bar-for-each-data-point-in-the-set
---

# --description--

The last challenge added only one rectangle to the `svg` element to represent a bar. Here, you'll combine what you've learned so far about `data()`, `enter()`, and SVG shapes to create and append a rectangle for each data point in `dataset`.

عرض أحد التحديات السابقة تنسيق كيفية إنشاء وإلحاق `div` لكل عنصر في `dataset`:

```js
d3.select("body").selectAll("div")
  .data(dataset)
  .enter()
  .append("div")
```

هناك بعض الاختلافات بين التعامل مع عناصر `rect` بدلا من عناصر `div`. يجب إلحاق عناصر `rect` بـعنصر `svg`، وليس مباشرة إلى `body`. وأيضا، تحتاج إلى إخبار D3 أين تضع كل `rect` داخل `svg`. وسيتم تغطية وضع الأعمدة في التحدي التالي.

# --instructions--

استخدم الطرق التالية: `data()` و `enter()` و `append()` لتنشئ و تلحق `rect` لكل عنصر في `dataset`. تعرض الأعمدة جميعها فوق بعضها البعض؛ وسيتم إصلاح هذا في التحدي التالي.

# --hints--

يجب أن تحتوي وثيقتك على 9 عناصر `rect`.

```js
assert($('rect').length == 9);
```

يجب أن يستخدم الكود الخاص بك طريقة `data()`.

```js
assert(code.match(/\.data/g));
```

يجب أن يستخدم الكود الخاص بك طريقة `enter()`.

```js
assert(code.match(/\.enter/g));
```

يجب أن يستخدم كودك طريقة `append()`.

```js
assert(code.match(/\.append/g));
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
       // Add your code below this line



       // Add your code above this line
       .attr("x", 0)
       .attr("y", 0)
       .attr("width", 25)
       .attr("height", 100);
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
       .attr("x", 0)
       .attr("y", 0)
       .attr("width", 25)
       .attr("height", 100);
  </script>
</body>
```
