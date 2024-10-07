---
id: 587d7fac367417b2b2512bde
title: استخدام مقياس محدد مسبقاً لوضع العناصر
challengeType: 6
forumTopicId: 301494
dashedName: use-a-pre-defined-scale-to-place-elements
---

# --description--

With the scales set up, it's time to map the scatter plot again. The scales are like processing functions that turn the `x` and `y` raw data into values that fit and render correctly on the SVG. They keep the data within the screen's plotting area.

يمكنك تعيين قيم سمة الإحداثيات لشكل SVG مع وظيفة المقياس. هذا يشمل سمات `x` و `y` للعناصر `rect` أو `text`, أو `cx` و `cy` للدوائر `circles`. وهذا مثال على ذلك:

```js
shape
  .attr("x", (d) => xScale(d[0]))
```

Scales set shape coordinate attributes to place the data points onto the SVG. لا تحتاج إلى تطبيق المقاييس عندما تعرض قيم البيانات الفعلية، على سبيل المثال، في طريقة `text()` لوضع تلميح أو تسمية.

# --instructions--

Use `xScale` and `yScale` to position both the `circle` and `text` shapes onto the SVG. بالنسبة للدوائر `circles`، قم بتطبيق المقاييس لتعيين سمات `cx` و `cy`. أعطيهم نصف قطر بقيمة `5` وحدات، أيضًا.

بالنسبة لعناصر `text`، قم بتطبيق المقاييس لتعيين سمات `x` و `y`. وينبغي أن تعوض التسميات عن يمين النقاط. للقيام بذلك، أضف `10` وحدات إلى قيمة `x` قبل تمريرها إلى `xScale`.

# --hints--

يجب أن يحتوي كودك على 10 عناصر `circle`.

```js
assert($('circle').length == 10);
```

يجب أن يكون عنصر `circle` الأول له `cx` قيمتها تقريبًا `91` و `cy` قيمتها تقريبًا `368` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(0).attr('cx')) == '91' &&
    Math.round($('circle').eq(0).attr('cy')) == '368' &&
    $('circle').eq(0).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الثاني له `cx` قيمتها تقريبًا `159` و `cy` قيمتها تقريبًا `181` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(1).attr('cx')) == '159' &&
    Math.round($('circle').eq(1).attr('cy')) == '181' &&
    $('circle').eq(1).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الثالث له `cx` قيمتها تقريبًا `340` و `cy` قيمتها تقريبًا `329` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(2).attr('cx')) == '340' &&
    Math.round($('circle').eq(2).attr('cy')) == '329' &&
    $('circle').eq(2).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الرابع له `cx` قيمتها تقريبًا `131` و `cy` قيمتها تقريبًا `60` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(3).attr('cx')) == '131' &&
    Math.round($('circle').eq(3).attr('cy')) == '60' &&
    $('circle').eq(3).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الخامس له `cx` قيمتها تقريبًا `440` و `cy` قيمتها تقريبًا `237` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(4).attr('cx')) == '440' &&
    Math.round($('circle').eq(4).attr('cy')) == '237' &&
    $('circle').eq(4).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` السادس له `cx` قيمتها تقريبًا `271` و `cy` قيمتها تقريبًا `306` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(5).attr('cx')) == '271' &&
    Math.round($('circle').eq(5).attr('cy')) == '306' &&
    $('circle').eq(5).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` السابع له `cx` قيمتها تقريبًا `361` و `cy` قيمتها تقريبًا `351` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(6).attr('cx')) == '361' &&
    Math.round($('circle').eq(6).attr('cy')) == '351' &&
    $('circle').eq(6).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` الثامن له `cx` قيمتها تقريبًا `261` و `cy` قيمتها تقريبًا `132` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(7).attr('cx')) == '261' &&
    Math.round($('circle').eq(7).attr('cy')) == '132' &&
    $('circle').eq(7).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` التاسع له `cx` قيمتها تقريبًا `131` و `cy` قيمتها تقريبًا `144` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(8).attr('cx')) == '131' &&
    Math.round($('circle').eq(8).attr('cy')) == '144' &&
    $('circle').eq(8).attr('r') == '5'
);
```

يجب أن يكون عنصر `circle` العاشر له `cx` قيمتها تقريبًا `79` و `cy` قيمتها تقريبًا `326` بعد تطبيق المقاييس. كما ينبغي أن يكون له `r` بقيمة `5`.

```js
assert(
  Math.round($('circle').eq(9).attr('cx')) == '79' &&
    Math.round($('circle').eq(9).attr('cy')) == '326' &&
    $('circle').eq(9).attr('r') == '5'
);
```

يجب أن يحتوي كودك على 10 عناصر `text`.

```js
assert($('text').length == 10);
```

يجب أن يكون التسمية الأولى لها `x` قيمتها تقريبًا `100` و `y` قيمتها تقريبًا `368` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(0).attr('x')) == '100' &&
    Math.round($('text').eq(0).attr('y')) == '368'
);
```

يجب أن يكون التسمية الثانية لها `x` قيمتها تقريبًا `168` و `y` قيمتها تقريبًا `181` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(1).attr('x')) == '168' &&
    Math.round($('text').eq(1).attr('y')) == '181'
);
```

يجب أن يكون التسمية الثالثة لها `x` قيمتها تقريبًا `350` و `y` قيمتها تقريبًا `329` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(2).attr('x')) == '350' &&
    Math.round($('text').eq(2).attr('y')) == '329'
);
```

يجب أن يكون التسمية الرابعة لها `x` قيمتها تقريبًا `141` و `y` قيمتها تقريبًا `60` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(3).attr('x')) == '141' &&
    Math.round($('text').eq(3).attr('y')) == '60'
);
```

يجب أن يكون التسمية الخامسة لها `x` قيمتها تقريبًا `449` و `y` قيمتها تقريبًا `237` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(4).attr('x')) == '449' &&
    Math.round($('text').eq(4).attr('y')) == '237'
);
```

يجب أن يكون التسمية السادسة لها `x` قيمتها تقريبًا `280` و `y` قيمتها تقريبًا `306` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(5).attr('x')) == '280' &&
    Math.round($('text').eq(5).attr('y')) == '306'
);
```

يجب أن يكون التسمية السابعة لها `x` قيمتها تقريبًا `370` و `y` قيمتها تقريبًا `351` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(6).attr('x')) == '370' &&
    Math.round($('text').eq(6).attr('y')) == '351'
);
```

يجب أن يكون التسمية الثامنة لها `x` قيمتها تقريبًا `270` و `y` قيمتها تقريبًا `132` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(7).attr('x')) == '270' &&
    Math.round($('text').eq(7).attr('y')) == '132'
);
```

يجب أن يكون التسمية التاسعة لها `x` قيمتها تقريبًا `140` و `y` قيمتها تقريبًا `144` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(8).attr('x')) == '140' &&
    Math.round($('text').eq(8).attr('y')) == '144'
);
```

يجب أن يكون التسمية العاشرة لها `x` قيمتها تقريبًا `88` و `y` قيمتها تقريبًا `326` بعد تطبيق المقاييس.

```js
assert(
  Math.round($('text').eq(9).attr('x')) == '88' &&
    Math.round($('text').eq(9).attr('y')) == '326'
);
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [
                  [ 34,     78 ],
                  [ 109,   280 ],
                  [ 310,   120 ],
                  [ 79,   411 ],
                  [ 420,   220 ],
                  [ 233,   145 ],
                  [ 333,   96 ],
                  [ 222,    333 ],
                  [ 78,    320 ],
                  [ 21,   123 ]
                ];

    const w = 500;
    const h = 500;
    const padding = 60;

    const xScale = d3.scaleLinear()
                     .domain([0, d3.max(dataset, (d) => d[0])])
                     .range([padding, w - padding]);

    const yScale = d3.scaleLinear()
                     .domain([0, d3.max(dataset, (d) => d[1])])
                     .range([h - padding, padding]);

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

    svg.selectAll("text")
       .data(dataset)
       .enter()
       .append("text")
       .text((d) =>  (d[0] + ", "
 + d[1]))
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
                  [ 34,     78 ],
                  [ 109,   280 ],
                  [ 310,   120 ],
                  [ 79,   411 ],
                  [ 420,   220 ],
                  [ 233,   145 ],
                  [ 333,   96 ],
                  [ 222,    333 ],
                  [ 78,    320 ],
                  [ 21,   123 ]
                ];

    const w = 500;
    const h = 500;
    const padding = 60;

    const xScale = d3.scaleLinear()
                     .domain([0, d3.max(dataset, (d) => d[0])])
                     .range([padding, w - padding]);

    const yScale = d3.scaleLinear()
                     .domain([0, d3.max(dataset, (d) => d[1])])
                     .range([h - padding, padding]);

    const svg = d3.select("body")
                  .append("svg")
                  .attr("width", w)
                  .attr("height", h);

    svg.selectAll("circle")
       .data(dataset)
       .enter()
       .append("circle")
       .attr("cx", (d) => xScale(d[0]))
       .attr("cy", (d) => yScale(d[1]))
       .attr("r", 5)

    svg.selectAll("text")
       .data(dataset)
       .enter()
       .append("text")
       .text((d) =>  (d[0] + ", "
 + d[1]))
       .attr("x", (d) => xScale(d[0] + 10))
       .attr("y", (d) => yScale(d[1]))
  </script>
</body>
```
