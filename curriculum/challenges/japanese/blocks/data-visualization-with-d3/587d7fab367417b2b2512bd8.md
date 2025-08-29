---
id: 587d7fab367417b2b2512bd8
title: 円要素に属性を追加する
challengeType: 6
forumTopicId: 301471
dashedName: add-attributes-to-the-circle-elements
---

# --description--

前回のチャレンジでは、`dataset` 内の各点に `circle` 要素を作成し、それらを SVG に追加しました。 しかし D3 でこれらを正しく表示するには、各 `circle` の位置とサイズに関する詳細情報が必要です。

SVG の `circle` には主要な 3 つの属性があります。 `cx` と `cy` 属性は座標です。 They tell D3 where to position the _center_ of the shape on the SVG. 半径 (`r` 属性) は、`circle` の大きさを指定します。

`rect` `y` 座標と同様に、`circle` の `cy` 属性は SVG の最下部からではなく最上部から測定します。

3 つの属性はすべてコールバック関数を使用して動的に値を設定できます。 留意点として、`data(dataset)` の後にチェーンされたすべてのメソッドは、`dataset` 内のアイテムごとに 1 回実行されます。 コールバック関数の `d` パラメータは、それぞれの点の配列である `dataset` 内の現在のアイテムを参照します。 `d[0]` のような角括弧表記を使用して、配列内の値にアクセスします。

# --instructions--

`cx`、`cy`、および `r` 属性を `circle` 要素に追加してください。 `cx` の値は、`dataset` 内の各アイテムに対する配列の最初の数でなければなりません。 `cy` の値は配列の 2 番目の数値を基にする必要がありますが、チャートを逆さではなく正しい方向で表示してください。 すべての円の `r` の値を `5` にする必要があります。

# --hints--

コードには10個の `circle` 要素が必要です。

```js
assert.lengthOf(document.querySelectorAll('circle'), 10);
```

最初の `circle` 要素には `cx` 値 `34`、`cy` 値 `422`、`r` 値 `5` が必要です。

```js
const circle1 = document.querySelector('circle');
assert.strictEqual(circle1?.getAttribute('cx'), '34');
assert.strictEqual(circle1?.getAttribute('cy'), '422');
assert.strictEqual(circle1?.getAttribute('r'), '5');
```

2 番目の `circle` 要素には `cx` 値 `109`、`cy` 値 `220`、`r` 値 `5` が必要です。

```js
const circle2 = document.querySelectorAll('circle')[1];
assert.strictEqual(circle2?.getAttribute('cx'), '109');
assert.strictEqual(circle2?.getAttribute('cy'), '220');
assert.strictEqual(circle2?.getAttribute('r'), '5');
```

3 番目の `circle` 要素には `cx` 値 `310`、`cy` 値 `380`、`r` 値 `5` が必要です。

```js
const circle3 = document.querySelectorAll('circle')[2];
assert.strictEqual(circle3?.getAttribute('cx'), '310');
assert.strictEqual(circle3?.getAttribute('cy'), '380');
assert.strictEqual(circle3?.getAttribute('r'), '5');
```

4 番目の `circle` 要素には `cx` 値 `79`、`cy` 値 `89`、`r` 値 `5` が必要です。

```js
const circle4 = document.querySelectorAll('circle')[3];
assert.strictEqual(circle4?.getAttribute('cx'), '79');
assert.strictEqual(circle4?.getAttribute('cy'), '89');
assert.strictEqual(circle4?.getAttribute('r'), '5');
```

5 番目の `circle` 要素には `cx` 値 `420`、`cy` 値 `280`、`r` 値 `5` が必要です。

```js
const circle5 = document.querySelectorAll('circle')[4];
assert.strictEqual(circle5?.getAttribute('cx'), '420');
assert.strictEqual(circle5?.getAttribute('cy'), '280');
assert.strictEqual(circle5?.getAttribute('r'), '5');
```

6 番目の `circle` 要素には `cx` 値 `233`、`cy` 値 `355`、`r` 値 `5` が必要です。

```js
const circle6 = document.querySelectorAll('circle')[5];
assert.strictEqual(circle6?.getAttribute('cx'), '233');
assert.strictEqual(circle6?.getAttribute('cy'), '355');
assert.strictEqual(circle6?.getAttribute('r'), '5');
```

7 番目の `circle` 要素には `cx` 値 `333`、`cy` 値 `404`、`r` 値 `5` が必要です。

```js
const circle7 = document.querySelectorAll('circle')[6];
assert.strictEqual(circle7?.getAttribute('cx'), '333');
assert.strictEqual(circle7?.getAttribute('cy'), '404');
assert.strictEqual(circle7?.getAttribute('r'), '5');
```

8 番目の `circle` 要素には `cx` 値 `222`、`cy` 値 `167`、`r` 値 `5` が必要です。

```js
const circle8 = document.querySelectorAll('circle')[7];
assert.strictEqual(circle8?.getAttribute('cx'), '222');
assert.strictEqual(circle8?.getAttribute('cy'), '167');
assert.strictEqual(circle8?.getAttribute('r'), '5');
```

9 番目の `circle` 要素には `cx` 値 `78`、`cy` 値 `180`、`r` 値 `5` が必要です。

```js
const circle9 = document.querySelectorAll('circle')[8];
assert.strictEqual(circle9?.getAttribute('cx'), '78');
assert.strictEqual(circle9?.getAttribute('cy'), '180');
assert.strictEqual(circle9?.getAttribute('r'), '5');
```

10 番目の `circle` 要素には `cx` 値 `21`、`cy` 値 `377`、`r` 値 `5` が必要です。

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
