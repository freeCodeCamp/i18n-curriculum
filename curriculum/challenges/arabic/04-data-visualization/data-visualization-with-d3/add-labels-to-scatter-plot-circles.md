---
id: 587d7fab367417b2b2512bd9
title: إضافة تسميات إلى دوائر المخطط المبعثر
challengeType: 6
forumTopicId: 301477
dashedName: add-labels-to-scatter-plot-circles
---

# --description--

You can add text to create labels for the points in a scatter plot.

الهدف هو عرض القيم المفصولة بفواصل للحقول الأولى (`x` والحقول الثانية (`y`) لكل عنصر في `dataset`.

The `text` nodes need `x` and `y` attributes to position it on the SVG. وفي هذا التحدي، يمكن أن تستخدم القيمة `y` (التي تحدد الطول) نفس القيمة التي تستخدمها `circle` لسمتها `cy`. تستطيع أن تكون القيمة `x` أكبر بقليل من قيمة `cx` للدائرة `circle`، لتكون التسمية مرئية. سيؤدي هذا إلى دفع التسمية إلى يمين النقطة المخططة.

# --instructions--

ضف تسمية لكل نقطة على مخطط التشتت باستخدام العناصر `text`. يجب أن يتكوَّن نص التسمية من القيمتين المنفصلتين بفاصلة ومساحة. على سبيل المثال، التسمية للنقطة الأولى هي `34, 78`. عيّن قيمة لسمة `x` لتكون `5` وحدات أكثر من القيمة التي استخدمتها لسمة `cx` في `circle`. عيّن قيمة لسمة `y` بنفس قيمة `cy` التي استخدمت على `circle`.

# --hints--

يجب أن يحتوي كودك على 10 عناصر `text`.

```js
assert($('text').length == 10);
```

يجب أن تحتوي التسمية الأولى على نص من `34, 78` و تكون قيمة `x` هي `39`، وقيمة `y` هي `422`.

```js
assert(
  $('text').eq(0).text() == '34, 78' &&
    $('text').eq(0).attr('x') == '39' &&
    $('text').eq(0).attr('y') == '422'
);
```

يجب أن تحتوي التسمية الثانية على نص من `109, 280` و تكون قيمة `x` هي `114`، وقيمة `y` هي `220`.

```js
assert(
  $('text').eq(1).text() == '109, 280' &&
    $('text').eq(1).attr('x') == '114' &&
    $('text').eq(1).attr('y') == '220'
);
```

يجب أن تحتوي التسمية الثالثة على نص من `310, 120` و تكون قيمة `x` هي `315`، وقيمة `y` هي `380`.

```js
assert(
  $('text').eq(2).text() == '310, 120' &&
    $('text').eq(2).attr('x') == '315' &&
    $('text').eq(2).attr('y') == '380'
);
```

يجب أن تحتوي التسمية الرابعة على نص من `79, 411` و تكون قيمة `x` هي `84`، وقيمة `y` هي `89`.

```js
assert(
  $('text').eq(3).text() == '79, 411' &&
    $('text').eq(3).attr('x') == '84' &&
    $('text').eq(3).attr('y') == '89'
);
```

يجب أن تحتوي التسمية الخامسة على نص من `420, 220` و تكون قيمة `x` هي `425`، وقيمة `y` هي `280`.

```js
assert(
  $('text').eq(4).text() == '420, 220' &&
    $('text').eq(4).attr('x') == '425' &&
    $('text').eq(4).attr('y') == '280'
);
```

يجب أن تحتوي التسمية السادسة على نص من `233, 145` و تكون قيمة `x` هي `238`، وقيمة `y` هي `355`.

```js
assert(
  $('text').eq(5).text() == '233, 145' &&
    $('text').eq(5).attr('x') == '238' &&
    $('text').eq(5).attr('y') == '355'
);
```

يجب أن تحتوي التسمية السابعة على نص من `333, 96` و تكون قيمة `x` هي `338`، وقيمة `y` هي `404`.

```js
assert(
  $('text').eq(6).text() == '333, 96' &&
    $('text').eq(6).attr('x') == '338' &&
    $('text').eq(6).attr('y') == '404'
);
```

يجب أن تحتوي التسمية الثامنة على نص من `222, 333` و تكون قيمة `x` هي `227`، وقيمة `y` هي `167`.

```js
assert(
  $('text').eq(7).text() == '222, 333' &&
    $('text').eq(7).attr('x') == '227' &&
    $('text').eq(7).attr('y') == '167'
);
```

يجب أن تحتوي التسمية التاسعة على نص من `78, 320` و تكون قيمة `x` هي `83`، وقيمة `y` هي `180`.

```js
assert(
  $('text').eq(8).text() == '78, 320' &&
    $('text').eq(8).attr('x') == '83' &&
    $('text').eq(8).attr('y') == '180'
);
```

يجب أن تحتوي التسمية العاشرة على نص من `21, 123` و تكون قيمة `x` هي `26`، وقيمة `y` هي `377`.

```js
assert(
  $('text').eq(9).text() == '21, 123' &&
    $('text').eq(9).attr('x') == '26' &&
    $('text').eq(9).attr('y') == '377'
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
       .attr("cx", (d, i) => d[0])
       .attr("cy", (d, i) => h - d[1])
       .attr("r", 5);

    svg.selectAll("text")
       .data(dataset)
       .enter()
       .append("text")
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
       .attr("cx", (d, i) => d[0])
       .attr("cy", (d, i) => h - d[1])
       .attr("r", 5);

    svg.selectAll("text")
       .data(dataset)
       .enter()
       .append("text")
       .attr("x", (d) => d[0] + 5)
       .attr("y", (d) => h - d[1])
       .text((d) => (d[0] + ", " + d[1]))

  </script>
</body>
```
