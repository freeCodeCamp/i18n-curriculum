---
id: 587d7fab367417b2b2512bd9
title: 向散點圖的 Circles 添加標籤
challengeType: 6
forumTopicId: 301477
dashedName: add-labels-to-scatter-plot-circles
---

# --description--

You can add text to create labels for the points in a scatter plot.

目標是顯示 `dataset` 中每個對象的第一個（`x`）和第二個（`y`）字段中通過逗號分隔的值。

`text` 節點需要 `x` 和 `y` 屬性來指定放置在 SVG 中的位置。 在這個挑戰中，`y` 值（決定高度）可以用和 `circle` 的 `cy` 屬性相同的值， `x` 值可以比 `circle` 的 `cx` 值稍微大一些，這樣標籤纔可見， 並且被放置在散點的右邊。

# --instructions--

使用 `text` 元素標記散點圖上的每個點。 標籤的文本應該是用逗號和空格分隔的兩個值。 例如，第一個點的標籤是 `34, 78`。 設置 `x` 屬性，使其比 `circle` 上的 `cx` 屬性的值多 `5` 個單位。 設置 `y` 屬性的方式與 `circle` 上的 `cy` 值相同。

# --hints--

應該有 10 個 `text` 元素。

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

第一個標籤的文本應爲 `34, 78`， `x` 值應爲 `39`，`y` 應爲 `422`。

```js
const labelOne = document.querySelector('text');
assert.strictEqual(labelOne?.textContent, '34, 78');
assert.strictEqual(labelOne?.getAttribute('x'), '39');
assert.strictEqual(labelOne?.getAttribute('y'), '422');
```

第二個標籤的文本應爲 `109, 280`，`x` 值應爲`114`，`y` 值應爲 `220`。

```js
const labelTwo = document.querySelectorAll('text')[1];
assert.strictEqual(labelTwo?.textContent, '109, 280');
assert.strictEqual(labelTwo?.getAttribute('x'), '114');
assert.strictEqual(labelTwo?.getAttribute('y'), '220');
```

第三個標籤的文本應爲 `310, 120`，`x` 值應爲 `315`，`y` 值應爲 `380`。

```js
const labelThree = document.querySelectorAll('text')[2];
assert.strictEqual(labelThree?.textContent, '310, 120');
assert.strictEqual(labelThree?.getAttribute('x'), '315');
assert.strictEqual(labelThree?.getAttribute('y'), '380');
```

第四個標籤的文本應爲 `79, 411`，`x` 值應爲 `84`，`y` 值應爲 `89`。

```js
const labelFour = document.querySelectorAll('text')[3];
assert.strictEqual(labelFour?.textContent, '79, 411');
assert.strictEqual(labelFour?.getAttribute('x'), '84');
assert.strictEqual(labelFour?.getAttribute('y'), '89');
```

第五個標籤的文本應爲 `420, 220`，`x` 值應爲 `425`，`y` 值應爲 `280`。

```js
const labelFive = document.querySelectorAll('text')[4];
assert.strictEqual(labelFive?.textContent, '420, 220');
assert.strictEqual(labelFive?.getAttribute('x'), '425');
assert.strictEqual(labelFive?.getAttribute('y'), '280');
```

第六個標籤的文本應爲 `233, 145`，`x` 值應爲 `238`，`y` 值應爲 `355`。

```js
const labelSix = document.querySelectorAll('text')[5];
assert.strictEqual(labelSix?.textContent, '233, 145');
assert.strictEqual(labelSix?.getAttribute('x'), '238');
assert.strictEqual(labelSix?.getAttribute('y'), '355');
```

第七個標籤的文本應爲 `333, 96`，`x` 值應爲 `338`，`y` 值應爲 `404`。

```js
const labelSeven = document.querySelectorAll('text')[6];
assert.strictEqual(labelSeven?.textContent, '333, 96');
assert.strictEqual(labelSeven?.getAttribute('x'), '338');
assert.strictEqual(labelSeven?.getAttribute('y'), '404');
```

第八個標籤的文本應爲 `222, 333`，`x` 值應爲 `227`，`y` 值應爲 `167`。

```js
const labelEight = document.querySelectorAll('text')[7];
assert.strictEqual(labelEight?.textContent, '222, 333');
assert.strictEqual(labelEight?.getAttribute('x'), '227');
assert.strictEqual(labelEight?.getAttribute('y'), '167');
```

第九個標籤的文本應爲 `78, 320`，`x` 值應爲 `83`，`y` 值應爲 `180`。

```js
const labelNine = document.querySelectorAll('text')[8];
assert.strictEqual(labelNine?.textContent, '78, 320');
assert.strictEqual(labelNine?.getAttribute('x'), '83');
assert.strictEqual(labelNine?.getAttribute('y'), '180');
```

第十個標籤的文本應爲 `21, 123`，`x` 值應爲 `26`，`y` 值應爲 `377`。

```js
const labelTen = document.querySelectorAll('text')[9];
assert.strictEqual(labelTen?.textContent, '21, 123');
assert.strictEqual(labelTen?.getAttribute('x'), '26');
assert.strictEqual(labelTen?.getAttribute('y'), '377');
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

    svg
      .selectAll('circle')
      .data(dataset)
      .enter()
      .append('circle')
      .attr('cx', (d, i) => d[0])
      .attr('cy', (d, i) => h - d[1])
      .attr('r', 5);

    svg.selectAll('text').data(dataset).enter().append('text');
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
      .attr('cx', (d, i) => d[0])
      .attr('cy', (d, i) => h - d[1])
      .attr('r', 5);

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .attr('x', d => d[0] + 5)
      .attr('y', d => h - d[1])
      .text(d => d[0] + ', ' + d[1]);
  </script>
</body>
```
