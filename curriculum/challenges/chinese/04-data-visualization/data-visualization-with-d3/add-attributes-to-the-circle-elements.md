---
id: 587d7fab367417b2b2512bd8
title: 给 Circle 元素添加属性
challengeType: 6
forumTopicId: 301471
dashedName: add-attributes-to-the-circle-elements
---

# --description--

The last challenge created the `circle` elements for each point in the `dataset`, and appended them to the SVG. But D3 needs more information about the position and size of each `circle` to display them correctly.

在 SVG 中 `circle` 有三个主要的属性。 `cx` 和 `cy` 属性是坐标。 They tell D3 where to position the _center_ of the shape on the SVG. 半径（ `r` 属性）给出 `circle` 的大小。

和 `rect` 的 `y` 坐标一样，`circle` 的 `cy` 属性是从 SVG 画布的顶端开始测量的，而不是从底端。

所有的属性都可以用回调函数来动态设值。 记住，所有串联在 `data(dataset)` 后面的方法会为 `dataset` 中的每个对象都运行一次。 回调函数中的 `d` 参数指在 `dataset` 中的当前对象，对每个点来说都是一个数组。 你可以使用方括号的方式，如 `d[0]`，来访问数组中的值。

# --instructions--

为 `circle` 元素添加 `cx`、`cy`、`r` 属性。 `cx` 的值应该是 `dataset` 中每个对象的数组的第一个数， `cy` 的值应该根据数组中的第二个值，但是要确保正向显示图表而不是倒转。 所有 circle 的 `r` 值应为 `5`。

# --hints--

应该有 10 个 `circle` 元素。

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

第一个 `circle` 元素的 `cx` 值应为 `34`，`cy` 值应为 `422`，`r` 值应为 `5`。

```js
const circle1 = document.querySelector('circle');
assert.strictEqual(circle1?.getAttribute('cx'), '34');
assert.strictEqual(circle1?.getAttribute('cy'), '422');
assert.strictEqual(circle1?.getAttribute('r'), '5');
```

第二个 `circle` 元素的 `cx` 值应为 `109`，`cy` 值应为 `220`，`r` 值应为 `5`。

```js
const circle2 = document.querySelectorAll('circle')[1];
assert.strictEqual(circle2?.getAttribute('cx'), '109');
assert.strictEqual(circle2?.getAttribute('cy'), '220');
assert.strictEqual(circle2?.getAttribute('r'), '5');
```

第三个 `circle` 元素的 `cx` 值应为 `310`，`cy` 值应为 `380`， `r` 值应为 `5`。

```js
const circle3 = document.querySelectorAll('circle')[2];
assert.strictEqual(circle3?.getAttribute('cx'), '310');
assert.strictEqual(circle3?.getAttribute('cy'), '380');
assert.strictEqual(circle3?.getAttribute('r'), '5');
```

第四个 `circle` 元素的 `cx` 值应为 `79`，`cy` 值应为 `89`，`r` 值应为 `5`。

```js
const circle4 = document.querySelectorAll('circle')[3];
assert.strictEqual(circle4?.getAttribute('cx'), '79');
assert.strictEqual(circle4?.getAttribute('cy'), '89');
assert.strictEqual(circle4?.getAttribute('r'), '5');
```

第五个 `circle` 元素的 `cx` 值应为 `420`，`cy` 值应为 `280`，`r` 值应为 `5`。

```js
const circle5 = document.querySelectorAll('circle')[4];
assert.strictEqual(circle5?.getAttribute('cx'), '420');
assert.strictEqual(circle5?.getAttribute('cy'), '280');
assert.strictEqual(circle5?.getAttribute('r'), '5');
```

第六个 `circle` 元素的 `cx` 值应为 `233`，`cy` 值应为 `355`，`r` 值应为 `5`。

```js
const circle6 = document.querySelectorAll('circle')[5];
assert.strictEqual(circle6?.getAttribute('cx'), '233');
assert.strictEqual(circle6?.getAttribute('cy'), '355');
assert.strictEqual(circle6?.getAttribute('r'), '5');
```

第七个 `circle` 元素的 `cx` 值应为 `333`，`cy` 值应为 `404`，`r` 值应为 `5`。

```js
const circle7 = document.querySelectorAll('circle')[6];
assert.strictEqual(circle7?.getAttribute('cx'), '333');
assert.strictEqual(circle7?.getAttribute('cy'), '404');
assert.strictEqual(circle7?.getAttribute('r'), '5');
```

第八个 `circle` 元素的 `cx` 值应为 `222`，`cy` 值应为 `167`， `r` 值应为 `5`。

```js
const circle8 = document.querySelectorAll('circle')[7];
assert.strictEqual(circle8?.getAttribute('cx'), '222');
assert.strictEqual(circle8?.getAttribute('cy'), '167');
assert.strictEqual(circle8?.getAttribute('r'), '5');
```

第九个 `circle` 元素的 `cx` 值应为 `78`，`cy` 值应为 `180`，`r` 值应为 `5`。

```js
const circle9 = document.querySelectorAll('circle')[8];
assert.strictEqual(circle9?.getAttribute('cx'), '78');
assert.strictEqual(circle9?.getAttribute('cy'), '180');
assert.strictEqual(circle9?.getAttribute('r'), '5');
```

第十个 `circle` 元素的 `cx` 值应为 `21`，`cy` 值应为 `377`，`r` 值应为 `5`。

```js
const circle10 = document.querySelectorAll('circle')[9];
assert.strictEqual(circle10?.getAttribute('cx'), '21');
assert.strictEqual(circle10?.getAttribute('cy'), '377');
assert.strictEqual(circle10?.getAttribute('r'), '5');
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

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg.selectAll('circle').data(dataset).enter().append('circle');
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
      .attr('cx', d => d[0])
      .attr('cy', d => h - d[1])
      .attr('r', 5);
  </script>
</body>
```
