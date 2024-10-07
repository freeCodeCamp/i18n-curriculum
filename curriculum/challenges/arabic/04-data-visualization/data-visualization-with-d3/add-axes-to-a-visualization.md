---
id: 587d7fad367417b2b2512bdf
title: إضافة محاور (Axes) إلى تصور (Visualization)
challengeType: 6
forumTopicId: 301472
dashedName: add-axes-to-a-visualization
---

# --description--

Another way to improve the scatter plot is to add an x-axis and a y-axis.

D3 لديه طريقتان، `axisLeft()` و `axisBottom()`، لتقديم المحور y والمحور x، على التوالي. إليك مثال لإنشاء المحور الأفقي استنادا إلى `xScale` في التحديات السابقة:

```js
const xAxis = d3.axisBottom(xScale);
```

The next step is to render the axis on the SVG. لتفعل ذلك، يمكنك استخدام مكون SVG العام، عنصر `g`. يرمز `g` لكلمة group. على خلاف `rect` و `circle` و `text`، المحور هو مجرد خط مستقيم عند رسمه. لأنه شكل بسيط، `g` تنفع لذلك. The last step is to apply a `transform` attribute to position the axis on the SVG in the right place. Otherwise, the line would render along the border of the SVG and wouldn't be visible. SVG يدعم أنواعا مختلفة من `transforms`، ولكن تحديد موقع المحور يحتاج إلى `translate`. عندما يتم تطبيقه على عنصر `g`، فإنه ينقل المجموعة بأكملها إلى اليمين و للأسفل بالمبالغ المحددة. إليك مثال:

```js
const xAxis = d3.axisBottom(xScale);

svg.append("g")
   .attr("transform", "translate(0, " + (h - padding) + ")")
   .call(xAxis);
```

The above code places the x-axis at the bottom of the SVG. ثم تم تمريره كمعطى إلى طريقة `call()`. يعمل المحور العمودي بنفس الطريقة، ولكن المعطى لطريقة `translate` في شكل `(x, 0)`. لأن `translate` هي نص مقطعي في `attr()` أعلاه، يمكنك استخدام concatenation لإدراج القيم المتغيرة للمعطيات الخاصة بها.

# --instructions--

مخطط التبعثر لديه الآن محور أفقي. إنشاء محور عمودي في متغير يسمى `yAxis` باستخدام طريقة `axisLeft()`. ثم أرسم المحور باستخدام عنصر `g`. تأكد من استخدام `transform` لترجمة المحور بمقدار وحدات الحشوة إلى اليمين و `0` وحدات لأسفل. تذكر أن `call()` المحور.

# --hints--

يجب أن تستخدم طريقة `axisLeft()` مع المعطى `yScale`.

```js
assert(code.match(/\.axisLeft\(yScale\)/g));
```

يجب أن يحتوي عنصر المحور `g` على سمة `transform` لتنقل (translate) المحور بقيمة `(60, 0)`.

```js
assert(
  $('g')
    .eq(10)
    .attr('transform')
    .match(/translate\(60\s*?,\s*?0\)/g)
);
```

يجب أن يفعل كودك وظيفة `yAxis`.

```js
assert(code.match(/\.call\(\s*yAxis\s*\)/g));
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
       .attr("cx", (d) => xScale(d[0]))
       .attr("cy",(d) => yScale(d[1]))
       .attr("r", (d) => 5);

    svg.selectAll("text")
       .data(dataset)
       .enter()
       .append("text")
       .text((d) =>  (d[0] + "," + d[1]))
       .attr("x", (d) => xScale(d[0] + 10))
       .attr("y", (d) => yScale(d[1]))

    const xAxis = d3.axisBottom(xScale);
    // Add your code below this line
    const yAxis = undefined;
    // Add your code above this line

    svg.append("g")
       .attr("transform", "translate(0," + (h - padding) + ")")
       .call(xAxis);

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
       .attr("cy",(d) => yScale(d[1]))
       .attr("r", (d) => 5);

    svg.selectAll("text")
       .data(dataset)
       .enter()
       .append("text")
       .text((d) =>  (d[0] + "," + d[1]))
       .attr("x", (d) => xScale(d[0] + 10))
       .attr("y", (d) => yScale(d[1]))

    const xAxis = d3.axisBottom(xScale);

    const yAxis = d3.axisLeft(yScale);


    svg.append("g")
       .attr("transform", "translate(0," + (h - padding) + ")")
       .call(xAxis);

    svg.append("g")
       .attr("transform", "translate(" + padding + ",0)")
       .call(yAxis)

  </script>
</body>
```
