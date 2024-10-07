---
id: 587d7fa8367417b2b2512bcc
title: عرض الأشكال مع SVG
challengeType: 6
forumTopicId: 301485
dashedName: display-shapes-with-svg
---

# --description--

The last challenge created an `svg` element with a given width and height, which was visible because it had a `background-color` applied to it in the `style` tag. The code made space for the given width and height.

الخطوة التالية هي إنشاء شكل لوضعه في منطقة `svg`. وهناك عدد من الأشكال المدعومة في SVG، مثل المستطيلات والدوائر. وهي تستخدم لعرض البيانات. على سبيل المثال، شكل المستطيل (`<rect>`) في SVG يمكن أن ينشئ عمود في مخطط أعمدة.

عندما تضع شكلا في منطقة `svg` ، يمكنك تحديد أين يذهب بواسطة الإحداثيات `x` و `y`. النقطة الأصلية (0، 0) هي في الزاوية اليسرى العليا. تدفع القيمة الإيجابية `x` الشكل إلى اليمين والقيمة الإيجابية `y` تدفع الشكل إلى الأسفل من نقطة المنشأ (origin).

لوضع شكل في منتصف 500 (عرض) x 100(طول) `svg` من التحدي الأخير، إحداثيات `x` ستكون 250 و `y` ستكون 50.

في SVG، الشكل `rect` له أربع سمات. تعطى إحداثيات `x` و `y` من لتحديد الموقع في منطقة `svg`. كما أنه يعطى `height` و `width` لتحديد الحجم.

# --instructions--

إضافة شكل `rect` إلى `svg` باستخدام `append()`، وقم بإعطائه سمة `width` بقيمة `25` و سمة `height` بقيمة `100`. أيضًا ، أعط `rect` سمات `x` و `y` كلاهن بقيمة`0`.

# --hints--

يجب أن تحتوي وثيقتك على 1 عناصر `rect`.

```js
assert($('rect').length == 1);
```

يجب أن يكون لعنصر `rect` سمة `width` بقيمة `25`.

```js
assert($('rect').attr('width') == '25');
```

يجب أن يكون لعنصر `rect` سمة `height` بقيمة `100`.

```js
assert($('rect').attr('height') == '100');
```

يجب أن يكون لعنصر `rect` سمة `x` بقيمة `0`.

```js
assert($('rect').attr('x') == '0');
```

يجب أن يكون لعنصر `rect` سمة `y` بقيمة `0`.

```js
assert($('rect').attr('y') == '0');
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
                  .attr("height", h)
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
                  .attr("height", h)
                  .append("rect")
                  .attr("width", 25)
                  .attr("height", 100)
                  .attr("x", 0)
                  .attr("y", 0);
  </script>
</body>
```
