---
id: 587d7fab367417b2b2512bd8
title: أضف سمات (Attributes) إلى عناصر Circle
challengeType: 6
forumTopicId: 301471
dashedName: add-attributes-to-the-circle-elements
---

# --description--

The last challenge created the `circle` elements for each point in the `dataset`, and appended them to the SVG. But D3 needs more information about the position and size of each `circle` to display them correctly.

لدي `circle` في SVG ثلاث سمات (attributes) رئيسية. تكون السمات (attributes) المسمى `cx` و `cy` إحداثيات. They tell D3 where to position the *center* of the shape on the SVG. تحدد سمة نصف قطر (radius) (وتكتب: `r`) حجم الدائرة (`circle`).

Just like the `rect` `y` coordinate, the `cy` attribute for a `circle` is measured from the top of the SVG, not from the bottom.

تستطيع جميع السمات (attributes) الثلاث باستخدام وظيفة لإعادة التفعيل (callback function) لتحديد قيمها بشكل ديناميكي. تذكر أن جميع الطرق (methods) المسلسلة بعد وظيفة `data(dataset)` تفعّل مرة واحدة لكل عنصر في `dataset`. يشير الوسيط `d` في وظيفة إعادة التفعيل إلى العنصر الحالي في `dataset`، وهو قائمة لكل نقطة. استخدم رمز الأقواس، مثل `d[0]`، للوصول إلى القيم في تلك القائمة.

# --instructions--

أضف السمات `cx` و `cy` و `r` إلى العناصر المسمى `circle`. قيمة `cx` يجب أن تكون أول رَقَم في القائمة لكل عنصر في `dataset`. قيمة `cy` يجب أن تستند إلى الرَّقَم الثاني في المصفوف، ولكن تأكَّد من إظهار الرسم البياني مستقيما وليس منعكسا. قيمة `r` يجب أن تكون `5` لجميع الدوائر.

# --hints--

يجب أن يحتوي كودك على 10 عناصر `circle`.

```js
assert($('circle').length == 10);
```

يجب أن يكون عنصر `circle` الأول له قيمة `cx` من `34` و `cy` قيمة `422`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(0).attr('cx') == '34' &&
    $('circle').eq(0).attr('cy') == '422' &&
    $('circle').eq(0).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الثاني له قيمة `cx` من `109` و `cy` قيمة `220`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(1).attr('cx') == '109' &&
    $('circle').eq(1).attr('cy') == '220' &&
    $('circle').eq(1).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الثالث له قيمة `cx` من `310` و `cy` قيمة `380`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(2).attr('cx') == '310' &&
    $('circle').eq(2).attr('cy') == '380' &&
    $('circle').eq(2).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الرابع له قيمة `cx` من `79` و `cy` قيمة `89`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(3).attr('cx') == '79' &&
    $('circle').eq(3).attr('cy') == '89' &&
    $('circle').eq(3).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الخامس له قيمة `cx` من `420` و `cy` قيمة `280`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(4).attr('cx') == '420' &&
    $('circle').eq(4).attr('cy') == '280' &&
    $('circle').eq(4).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` السادس له قيمة `cx` من `233` و `cy` قيمة `355`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(5).attr('cx') == '233' &&
    $('circle').eq(5).attr('cy') == '355' &&
    $('circle').eq(5).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` السابع له قيمة `cx` من `333` و `cy` قيمة `404`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(6).attr('cx') == '333' &&
    $('circle').eq(6).attr('cy') == '404' &&
    $('circle').eq(6).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الثامن له قيمة `cx` من `222` و `cy` قيمة `167`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(7).attr('cx') == '222' &&
    $('circle').eq(7).attr('cy') == '167' &&
    $('circle').eq(7).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` التاسع له قيمة `cx` من `78` و `cy` قيمة `180`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(8).attr('cx') == '78' &&
    $('circle').eq(8).attr('cy') == '180' &&
    $('circle').eq(8).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` العاشر له قيمة `cx` من `21` و `cy` قيمة `377`، و `r` قيمة `5`.

```js
assert(
  $('circle').eq(9).attr('cx') == '21' &&
    $('circle').eq(9).attr('cy') == '377' &&
    $('circle').eq(9).attr('r') == '5'
);
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [
                  [ 34,    78 ],
                  [ 109,   280 ],
                  [ 310,   120 ],
                  [ 79,    411 ],
                  [ 420,   220 ],
                  [ 233,   145 ],
                  [ 333,   96 ],
                  [ 222,   333 ],
                  [ 78,    320 ],
                  [ 21,    123 ]
                ];


    const w = 500;
    const h = 500;

    const svg = d3.select("body")
                  .append("svg")
                  .attr("width", w)
                  .attr("height", h);

    svg.selectAll("circle")
       .data(dataset)
       .enter()
       .append("circle")
       // Add your code below this line



       // Add your code above this line

  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [
                  [ 34,    78 ],
                  [ 109,   280 ],
                  [ 310,   120 ],
                  [ 79,    411 ],
                  [ 420,   220 ],
                  [ 233,   145 ],
                  [ 333,   96 ],
                  [ 222,   333 ],
                  [ 78,    320 ],
                  [ 21,    123 ]
                ];


    const w = 500;
    const h = 500;

    const svg = d3.select("body")
                  .append("svg")
                  .attr("width", w)
                  .attr("height", h);

    svg.selectAll("circle")
       .data(dataset)
       .enter()
       .append("circle")
       .attr("cx", (d) => d[0])
       .attr("cy", (d) => h - d[1])
       .attr("r", 5)

  </script>
</body>
```
