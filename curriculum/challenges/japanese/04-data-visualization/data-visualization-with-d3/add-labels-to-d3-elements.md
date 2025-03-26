---
id: 587d7faa367417b2b2512bd2
title: D3 の要素にラベルを追加する
challengeType: 6
forumTopicId: 301476
dashedName: add-labels-to-d3-elements
---

# --description--

D3 では、SVG `text` 要素を使用して、バーなどのグラフ要素にラベルを付けることができます。

SVG 上の配置を調整するため、`rect` 要素の場合と同様に `text` 要素にも `x` および `y` 属性が必要です。 これらの値を表示するにはデータへのアクセスも必要です。

D3 では、バーにラベルを付ける方法を高度にコントロールできます。

# --instructions--

エディタ内のコードは、新しい `text` 要素のそれぞれにデータをバインド済みです。 まず、`text` ノードを `svg` に追加してください。 次に、`x` 座標と `y` 座標の属性を追加してください。 これらは `rect` 要素と同じ方法で計算される必要がありますが、例外として、`text` の `y` 値は、ラベルがバーよりも 3 単位高くなるように設定する必要があります。 最後に、D3 `text()` メソッドを使用して、ラベルがデータポイント値と等しくなるように設定してください。

**注:** ラベルをバーよりも高くするために、`text` の `y` 値をバーの `y` 値より 3 単位大きくすべきか、3 単位小さくすべきかを決定します。

# --hints--

最初の `text` 要素はラベルが `12`、`y` 値が `61` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[0]?.textContent, '12');
assert.strictEqual(
  document.querySelectorAll('text')[0]?.getAttribute('y'),
  '61'
);
```

2 番目の `text` 要素は ラベルが `31`、`y` 値が `4` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[1]?.textContent, '31');
assert.strictEqual(
  document.querySelectorAll('text')[1]?.getAttribute('y'),
  '4'
);
```

3 番目の `text` 要素はラベルが `22`、`y` 値が `31` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[2]?.textContent, '22');
assert.strictEqual(
  document.querySelectorAll('text')[2]?.getAttribute('y'),
  '31'
);
```

4 番目の `text` 要素は ラベルが `17`、`y` 値が `46` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[3]?.textContent, '17');
assert.strictEqual(
  document.querySelectorAll('text')[3]?.getAttribute('y'),
  '46'
);
```

5 番目の `text` 要素はラベルが `25`、`y` 値が `22` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[4]?.textContent, '25');
assert.strictEqual(
  document.querySelectorAll('text')[4]?.getAttribute('y'),
  '22'
);
```

6 番目の `text` 要素はラベルが `18`、`y` 値が `43` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[5]?.textContent, '18');
assert.strictEqual(
  document.querySelectorAll('text')[5]?.getAttribute('y'),
  '43'
);
```

7 番目の `text` 要素はラベルが `29`、`y` 値が `10` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[6]?.textContent, '29');
assert.strictEqual(
  document.querySelectorAll('text')[6]?.getAttribute('y'),
  '10'
);
```

8 番目の `text` 要素はラベルが `14`、`y` 値が `55` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[7]?.textContent, '14');
assert.strictEqual(
  document.querySelectorAll('text')[7]?.getAttribute('y'),
  '55'
);
```

9 番目の `text` 要素は ラベルが `9`、`y` 値が `70` であることが必要です。

```js
assert.strictEqual(document.querySelectorAll('text')[8]?.textContent, '9');
assert.strictEqual(
  document.querySelectorAll('text')[8]?.getAttribute('y'),
  '70'
);
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('rect')
      .data(dataset)
      .enter()
      .append('rect')
      .attr('x', (d, i) => i * 30)
      .attr('y', (d, i) => h - 3 * d)
      .attr('width', 25)
      .attr('height', (d, i) => 3 * d)
      .attr('fill', 'navy');

    svg.selectAll('text').data(dataset).enter();
    // Add your code below this line




    // Add your code above this line
  </script>
  <body></body>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('rect')
      .data(dataset)
      .enter()
      .append('rect')
      .attr('x', (d, i) => i * 30)
      .attr('y', (d, i) => h - 3 * d)
      .attr('width', 25)
      .attr('height', (d, i) => 3 * d)
      .attr('fill', 'navy');

    svg
      .selectAll('text')
      .data(dataset)
      .enter()
      .append('text')
      .attr('x', (d, i) => i * 30)
      .attr('y', (d, i) => h - 3 * d - 3)
      .text(d => d);
  </script>
  <body></body>
</body>
```
