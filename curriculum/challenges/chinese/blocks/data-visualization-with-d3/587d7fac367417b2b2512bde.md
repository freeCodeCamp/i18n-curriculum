---
id: 587d7fac367417b2b2512bde
title: 使用预定义的比例尺放置元素
challengeType: 6
forumTopicId: 301494
dashedName: use-a-pre-defined-scale-to-place-elements
---

# --description--

With the scales set up, it's time to map the scatter plot again. The scales are like processing functions that turn the `x` and `y` raw data into values that fit and render correctly on the SVG. They keep the data within the screen's plotting area.

用比例尺函数为 SVG 图形设置坐标属性值。 这包括 `rect` 或者 `text` 元素的 `x` 和 `y` 属性，或者 `circles` 的 `cx` 和 `cy`。 这是一个示例：

```js
shape.attr('x', d => xScale(d[0]));
```

比例尺设置图形坐标属性来将数据点放置在 SVG 上。 当你显示实际数据值时，不用使用比例尺，例如，在提示框或标签中的 `text()` 方法。

# --instructions--

使用 `xScale` 和 `yScale` 将 `circle` 和 `text` 图形放置在 SVG 上。 对于 `circles`，使用比例尺设置 `cx` 和 `cy` 属性， 半径为 `5` 个单位。

对于 `text` 元素，使用比例尺设置 `x` 和 `y` 属性。 标签应该标注在点的右边， 为此，在将 `x` 数据值传递给 `xScale` 之前，要给它加上 `10` 个单位。

# --hints--

应该有 10 个 `circle` 元素。

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

在使用比例尺后，第一个 `circle` 元素的 `cx` 值应该大约为 `91`，`cy` 值应该大约为 `368`。 它的 `r` 值应为 `5`。

```js
const firstCircle = document.querySelectorAll('circle')[0];
assert.strictEqual(Math.round(firstCircle?.getAttribute('cx')), 91);
assert.strictEqual(Math.round(firstCircle?.getAttribute('cy')), 368);
assert.strictEqual(Math.round(firstCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第二个 `circle` 元素的 `cx` 值应该大约为 `159`，`cy` 值应该大约为 `181`。 它的 `r` 值应为 `5`。

```js
const secondCircle = document.querySelectorAll('circle')[1];
assert.strictEqual(Math.round(secondCircle?.getAttribute('cx')), 159);
assert.strictEqual(Math.round(secondCircle?.getAttribute('cy')), 181);
assert.strictEqual(Math.round(secondCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第三个 `circle` 元素的 `cx` 值应该大约为 `340`，`cy` 值应该大约为 `329`。 它的 `r` 值应为 `5`。

```js
const thirdCircle = document.querySelectorAll('circle')[2];
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cx')), 340);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cy')), 329);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第四个 `circle` 元素的 `cx` 值应该大约为 `131`，`cy` 值应该大约为 `60`。 它的 `r` 值应为 `5`。

```js
const fourthCircle = document.querySelectorAll('circle')[3];
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cy')), 60);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第五个 `circle` 元素的 `cx` 值应该大约为 `440`，`cy` 值应该大约为 `237`。 它的 `r` 值应为 `5`。

```js
const fifthCircle = document.querySelectorAll('circle')[4];
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cx')), 440);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cy')), 237);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第六个 `circle` 元素的 `cx` 值应该大约为 `271`，`cy` 值应该大约为 `306`。 它的 `r` 值应为 `5`。

```js
const sixthCircle = document.querySelectorAll('circle')[5];
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cx')), 271);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cy')), 306);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第七个 `circle` 元素的 `cx` 值应该大约为 `361`，`cy` 值应该大约为 `351`。 它的 `r` 值应为 `5`。

```js
const seventhCircle = document.querySelectorAll('circle')[6];
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cx')), 361);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cy')), 351);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第八个 `circle` 元素的 `cx` 值应该大约为 `261`，`cy` 值应该大约为 `132`。 它的 `r` 值应为 `5`。

```js
const eighthCircle = document.querySelectorAll('circle')[7];
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cx')), 261);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cy')), 132);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第九个 `circle` 元素的 `cx` 值应该大约为 `131`，`cy` 值应该大约为 `144`。 它的 `r` 值应为 `5`。

```js
const ninthCircle = document.querySelectorAll('circle')[8];
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cy')), 144);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('r')), 5);
```

在使用比例尺后，第十个 `circle` 元素的 `cx` 值应该大约为 `79`，`cy` 值应该大约为 `326`。 它的 `r` 值应为 `5`。

```js
const tenthCircle = document.querySelectorAll('circle')[9];
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cx')), 79);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cy')), 326);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('r')), 5);
```

应该有 10 个 `text` 元素。

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

在使用比例尺后，第一个标签的 `x` 值应该大约为 `100`，`y` 值应该大约为 `368`。

```js
const firstLabel = document.querySelectorAll('text')[0];
assert.strictEqual(Math.round(firstLabel?.getAttribute('x')), 100);
assert.strictEqual(Math.round(firstLabel?.getAttribute('y')), 368);
```

在使用比例尺后，第二个标签的 `x` 值应该大约为 `168`，`y` 值应该大约为 `181`。

```js
const secondLabel = document.querySelectorAll('text')[1];
assert.strictEqual(Math.round(secondLabel?.getAttribute('x')), 168);
assert.strictEqual(Math.round(secondLabel?.getAttribute('y')), 181);
```

在使用比例尺后，第三个标签的 `x` 值应该大约为 `350`，`y` 值应该大约为 `329`。

```js
const thirdLabel = document.querySelectorAll('text')[2];
assert.strictEqual(Math.round(thirdLabel?.getAttribute('x')), 350);
assert.strictEqual(Math.round(thirdLabel?.getAttribute('y')), 329);
```

在使用比例尺后，第四个标签的 `x` 值应该大约为 `141`，`y` 值应该大约为 `60`。

```js
const fourthLabel = document.querySelectorAll('text')[3];
assert.strictEqual(Math.round(fourthLabel?.getAttribute('x')), 141);
assert.strictEqual(Math.round(fourthLabel?.getAttribute('y')), 60);
```

在使用比例尺后，第五个标签的 `x` 值应该大约为 `449`，`y` 值应该大约为 `237`。

```js
const fifthLabel = document.querySelectorAll('text')[4];
assert.strictEqual(Math.round(fifthLabel?.getAttribute('x')), 449);
assert.strictEqual(Math.round(fifthLabel?.getAttribute('y')), 237);
```

在使用比例尺后，第六个标签的 `x` 值应该大约为 `280`，`y` 值应该大约为 `306`。

```js
const sixthLabel = document.querySelectorAll('text')[5];
assert.strictEqual(Math.round(sixthLabel?.getAttribute('x')), 280);
assert.strictEqual(Math.round(sixthLabel?.getAttribute('y')), 306);
```

在使用比例尺后，第七个标签的 `x` 值应该大约为 `370`，`y` 值应该大约为 `351`。

```js
const seventhLabel = document.querySelectorAll('text')[6];
assert.strictEqual(Math.round(seventhLabel?.getAttribute('x')), 370);
assert.strictEqual(Math.round(seventhLabel?.getAttribute('y')), 351);
```

在使用比例尺后，第八个标签的 `x` 值应该大约为 `270`，`y` 值应该大约为 `132`。

```js
const eighthLabel = document.querySelectorAll('text')[7];
assert.strictEqual(Math.round(eighthLabel?.getAttribute('x')), 270);
assert.strictEqual(Math.round(eighthLabel?.getAttribute('y')), 132);
```

在使用比例尺后，第九个标签的 `x` 值应该大约为 `140`，`y` 值应该大约为 `144`。

```js
const ninthLabel = document.querySelectorAll('text')[8];
assert.strictEqual(Math.round(ninthLabel?.getAttribute('x')), 140);
assert.strictEqual(Math.round(ninthLabel?.getAttribute('y')), 144);
```

在使用比例尺后，第十个标签的 `x` 值应该大约为 `88`，`y` 值应该大约为 `326`。

```js
const tenthLabel = document.querySelectorAll('text')[9];
assert.strictEqual(Math.round(tenthLabel?.getAttribute('x')), 88);
assert.strictEqual(Math.round(tenthLabel?.getAttribute('y')), 326);
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [
      [34, 78],
      [109, 280],
      [310, 120],
      [79, 411],
      [420, 220],
      [233, 145],
      [333, 96],
      [222, 333],
      [78, 320],
      [21, 123]
    ];

    const w = 500;
    const h = 500;
    const padding = 60;

    const xScale = d3
      .scaleLinear()
      .domain([0, d3.max(dataset, d => d[0])])
      .range([padding, w - padding]);

    const yScale = d3
      .scaleLinear()
      .domain([0, d3.max(dataset, d => d[1])])
      .range([h - padding, padding]);

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg.selectAll('circle').data(dataset).enter().append('circle');
    // Add your code below this line



    // Add your code above this line

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .text(d => d[0] + ', ' + d[1]);
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
      [34, 78],
      [109, 280],
      [310, 120],
      [79, 411],
      [420, 220],
      [233, 145],
      [333, 96],
      [222, 333],
      [78, 320],
      [21, 123]
    ];

    const w = 500;
    const h = 500;
    const padding = 60;

    const xScale = d3
      .scaleLinear()
      .domain([0, d3.max(dataset, d => d[0])])
      .range([padding, w - padding]);

    const yScale = d3
      .scaleLinear()
      .domain([0, d3.max(dataset, d => d[1])])
      .range([h - padding, padding]);

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('circle')
      .data(dataset)
      .enter()
      .append('circle')
      .attr('cx', d => xScale(d[0]))
      .attr('cy', d => yScale(d[1]))
      .attr('r', 5);

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .text(d => d[0] + ', ' + d[1])
      .attr('x', d => xScale(d[0] + 10))
      .attr('y', d => yScale(d[1]));
  </script>
</body>
```
