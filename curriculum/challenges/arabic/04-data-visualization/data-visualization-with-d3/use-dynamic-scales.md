---
id: 587d7fac367417b2b2512bdd
title: استخدام المقاييس الديناميكية
challengeType: 6
forumTopicId: 301495
dashedName: use-dynamic-scales
---

# --description--

The D3 `min()` and `max()` methods are useful to help set the scale.

وبالنظر إلى مجموعة بيانات معقدة، تتمثل إحدى الأولويات في وضع المقياس بحيث يناسب العرض المرئي لحاوية SVG وطولها. You want all the data plotted inside the SVG so it's visible on the web page.

المثال أدناه يحدد مقياس المحور X لبيانات مخطط مبعثر. طريقة `domain()` تنقل المعلومات إلى المقياس حول قيم البيانات الخام الخاصة بالمخطط. وتعطيه طريقة `range()` معلومات عن المساحة الفعلية على صفحة الويب من أجل التصور.

في المثال ، يتروَّح المجال من 0 إلى الحد الأقصى في المجموعة. تُستخدم طريقة `max()` مع وظيفة إعادة التفعيل استنادًا إلى القيم x في القوائم. The range uses the SVG's width (`w`), but it includes some padding, too. This puts space between the scatter plot dots and the edge of the SVG.

```js
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

const padding = 30;
const xScale = d3.scaleLinear()
  .domain([0, d3.max(dataset, (d) => d[0])])
  .range([padding, w - padding]);
```

قد تكون الحشوة مربكة في البداية. Picture the x-axis as a horizontal line from 0 to 500 (the width value for the SVG). ضم الحشوة في طريقة `range()` يجبر المخطط على البدء عند 30 على طول هذا الخط (بدلا من 0)، وينتهي عند 470 (بدلا من 500).

# --instructions--

غيّر المتغير `yScale` لإنشاء مقياس المحور الخطي y (linear scale). يجب أن يبدأ المجال عند الصفر وينتقل إلى الحد الأقصى من قيمة `y` في المجموعة. يجب أن يستخدم النطاق ارتفاع (`h`) من SVG ويشمل الحشو.

**ملاحظة:** تذكر أن المخطط عليه أن يكون معدول إلى فوق. عند تعيين النطاق للإحداثيات y ، تكون القيمة الأعلى (الارتفاع مطروحا منه الحشو) هي المعطى الأول، والقيمة الأدنى هي المعطى الثاني.

# --hints--

يجب أن يكون النص في `h2` بقيمة `30`.

```js
assert(output == 30 && $('h2').text() == '30');
```

يجب أن يكون `domain()` من yScale معادلا لهذا: `[0, 411]`.

```js
assert(JSON.stringify(yScale.domain()) == JSON.stringify([0, 411]));
```

يجب أن يكون `range()` من yScale معادلا لهذا: `[470, 30]`.

```js
assert(JSON.stringify(yScale.range()) == JSON.stringify([470, 30]));
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

    // Padding between the SVG boundary and the plot
    const padding = 30;

    // Create an x and y scale

    const xScale = d3.scaleLinear()
                    .domain([0, d3.max(dataset, (d) => d[0])])
                    .range([padding, w - padding]);

    // Add your code below this line

    const yScale = undefined;


    // Add your code above this line

    const output = yScale(411); // Returns 30
    d3.select("body")
      .append("h2")
      .text(output)
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


    const padding = 30;

    const xScale = d3.scaleLinear()
                    .domain([0, d3.max(dataset, (d) => d[0])])
                    .range([padding, w - padding]);


    const yScale = d3.scaleLinear()
                     .domain([0, d3.max(dataset, (d) => d[1])])
                     .range([h - padding, padding]);


    const output = yScale(411);
    d3.select("body")
      .append("h2")
      .text(output)
  </script>
</body>
```
