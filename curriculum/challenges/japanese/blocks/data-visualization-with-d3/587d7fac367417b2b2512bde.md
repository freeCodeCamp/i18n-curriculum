---
id: 587d7fac367417b2b2512bde
title: 事前定義スケールを使用して要素を配置する
challengeType: 6
forumTopicId: 301494
dashedName: use-a-pre-defined-scale-to-place-elements
---

# --description--

スケールの設定ができたので、散布図を再びマッピングしましょう。 スケールとは、`x` と `y` の生データを、SVG 上に正しく収めて表示するための値に変換する処理関数のようなものです。 スケールにより、データが常に画面のプロット領域内に収められます。

スケーリング関数を使用して、SVG 図形の座標属性値を設定します。 これには `rect` 要素か `text` 要素の `x` 属性と `y` 属性、または、`circles` 要素の `cx` 属性と `cy` 属性が含まれます。 以下が例です:

```js
shape.attr('x', d => xScale(d[0]));
```

スケールで図形座標属性を設定して、データポイントを SVG 上に配置します。 ツールチップやラベルの `text()` メソッド内などで、実際のデータ値を表示するときにスケールを適用する必要はありません。

# --instructions--

`xScale` と `yScale` を使用して、`circle` 図形と `text` 図形の両方を SVG に配置してください。 `circles` については、スケールを適用して `cx` 属性と `cy` 属性を設定します。 また、これらに `5` 単位の半径を指定します。

`text` 要素については、スケールを適用して `x` 属性と `y` 属性を設定します。 ラベルはドットの右側にオフセットされている必要があります。 これを行うには、`x` のデータ値に `10` 単位を追加してからデータ値を `xScale` に渡します。

# --hints--

コードには10個の `circle` 要素が必要です。

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

最初の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `91`、`cy` 値がおよそ `368` である必要があります。 `r` 値は `5` である必要があります。

```js
const firstCircle = document.querySelectorAll('circle')[0];
assert.strictEqual(Math.round(firstCircle?.getAttribute('cx')), 91);
assert.strictEqual(Math.round(firstCircle?.getAttribute('cy')), 368);
assert.strictEqual(Math.round(firstCircle?.getAttribute('r')), 5);
```

2 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `159` 、 `cy` 値がおよそ `181` である必要があります。 `r` 値は `5` である必要があります。

```js
const secondCircle = document.querySelectorAll('circle')[1];
assert.strictEqual(Math.round(secondCircle?.getAttribute('cx')), 159);
assert.strictEqual(Math.round(secondCircle?.getAttribute('cy')), 181);
assert.strictEqual(Math.round(secondCircle?.getAttribute('r')), 5);
```

3 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `340`、 `cy` 値がおよそ `329` である必要があります。 `r` 値は `5` である必要があります。

```js
const thirdCircle = document.querySelectorAll('circle')[2];
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cx')), 340);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('cy')), 329);
assert.strictEqual(Math.round(thirdCircle?.getAttribute('r')), 5);
```

4 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `131`、 `cy` 値がおよそ `60` である必要があります。 `r` 値は `5` である必要があります。

```js
const fourthCircle = document.querySelectorAll('circle')[3];
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('cy')), 60);
assert.strictEqual(Math.round(fourthCircle?.getAttribute('r')), 5);
```

5 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `440`、 `cy` 値がおよそ `237` である必要があります。 `r` 値は `5` である必要があります。

```js
const fifthCircle = document.querySelectorAll('circle')[4];
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cx')), 440);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('cy')), 237);
assert.strictEqual(Math.round(fifthCircle?.getAttribute('r')), 5);
```

6 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `271`、 `cy` 値がおよそ `306` である必要があります。 `r` 値は `5` である必要があります。

```js
const sixthCircle = document.querySelectorAll('circle')[5];
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cx')), 271);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('cy')), 306);
assert.strictEqual(Math.round(sixthCircle?.getAttribute('r')), 5);
```

7 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `361`、 `cy` 値がおよそ `351` である必要があります。 `r` 値は `5` である必要があります。

```js
const seventhCircle = document.querySelectorAll('circle')[6];
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cx')), 361);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('cy')), 351);
assert.strictEqual(Math.round(seventhCircle?.getAttribute('r')), 5);
```

8 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `261`、 `cy` 値がおよそ `132` である必要があります。 `r` 値は `5` である必要があります。

```js
const eighthCircle = document.querySelectorAll('circle')[7];
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cx')), 261);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('cy')), 132);
assert.strictEqual(Math.round(eighthCircle?.getAttribute('r')), 5);
```

9 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `131`、 `cy` 値がおよそ `144` である必要があります。 `r` 値は `5` である必要があります。

```js
const ninthCircle = document.querySelectorAll('circle')[8];
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cx')), 131);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('cy')), 144);
assert.strictEqual(Math.round(ninthCircle?.getAttribute('r')), 5);
```

10 番目の `circle` 要素は、スケールを適用した後の `cx` 値がおよそ `79` 、 `cy` 値がおよそ `326` である必要があります。 `r` 値は `5` である必要があります。

```js
const tenthCircle = document.querySelectorAll('circle')[9];
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cx')), 79);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('cy')), 326);
assert.strictEqual(Math.round(tenthCircle?.getAttribute('r')), 5);
```

10 個の `text` 要素が必要です。

```js
assert.lengthOf(document.querySelectorAll('text'), 10);
```

最初のラベルは、スケールを適用した後の `x` 値がおよそ `100`、`y` 値がおよそ `368` である必要があります。

```js
const firstLabel = document.querySelectorAll('text')[0];
assert.strictEqual(Math.round(firstLabel?.getAttribute('x')), 100);
assert.strictEqual(Math.round(firstLabel?.getAttribute('y')), 368);
```

2 番目のラベルは、スケールを適用した後の `x` 値がおよそ `168`、`y` 値がおよそ `181` である必要があります。

```js
const secondLabel = document.querySelectorAll('text')[1];
assert.strictEqual(Math.round(secondLabel?.getAttribute('x')), 168);
assert.strictEqual(Math.round(secondLabel?.getAttribute('y')), 181);
```

3 番目のラベルは、スケールを適用した後の `x` 値がおよそ `350`、`y` 値がおよそ `329` である必要があります。

```js
const thirdLabel = document.querySelectorAll('text')[2];
assert.strictEqual(Math.round(thirdLabel?.getAttribute('x')), 350);
assert.strictEqual(Math.round(thirdLabel?.getAttribute('y')), 329);
```

4 番目のラベルは、スケールを適用した後の `x` 値がおよそ `141`、`y` 値がおよそ `60` である必要があります。

```js
const fourthLabel = document.querySelectorAll('text')[3];
assert.strictEqual(Math.round(fourthLabel?.getAttribute('x')), 141);
assert.strictEqual(Math.round(fourthLabel?.getAttribute('y')), 60);
```

5 番目のラベルは、スケールを適用した後の `x` 値がおよそ `449`、`y` 値がおよそ `237` である必要があります。

```js
const fifthLabel = document.querySelectorAll('text')[4];
assert.strictEqual(Math.round(fifthLabel?.getAttribute('x')), 449);
assert.strictEqual(Math.round(fifthLabel?.getAttribute('y')), 237);
```

6 番目のラベルは、スケールを適用した後の `x` 値がおよそ `280`、`y` 値がおよそ `306` である必要があります。

```js
const sixthLabel = document.querySelectorAll('text')[5];
assert.strictEqual(Math.round(sixthLabel?.getAttribute('x')), 280);
assert.strictEqual(Math.round(sixthLabel?.getAttribute('y')), 306);
```

7 番目のラベルは、スケールを適用した後の `x` 値がおよそ `370`、`y` 値がおよそ `351` である必要があります。

```js
const seventhLabel = document.querySelectorAll('text')[6];
assert.strictEqual(Math.round(seventhLabel?.getAttribute('x')), 370);
assert.strictEqual(Math.round(seventhLabel?.getAttribute('y')), 351);
```

8 番目のラベルは、スケールを適用した後の `x` 値がおよそ `270`、`y` 値がおよそ `132` である必要があります。

```js
const eighthLabel = document.querySelectorAll('text')[7];
assert.strictEqual(Math.round(eighthLabel?.getAttribute('x')), 270);
assert.strictEqual(Math.round(eighthLabel?.getAttribute('y')), 132);
```

9 番目のラベルは、スケールを適用した後の `x` 値がおよそ `140`、`y` 値がおよそ `144` である必要があります。

```js
const ninthLabel = document.querySelectorAll('text')[8];
assert.strictEqual(Math.round(ninthLabel?.getAttribute('x')), 140);
assert.strictEqual(Math.round(ninthLabel?.getAttribute('y')), 144);
```

10 番目のラベルは、スケールを適用した後の `x` 値がおよそ `88`、`y` 値がおよそ `326` である必要があります。

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
