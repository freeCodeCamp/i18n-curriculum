---
id: 587d7fa7367417b2b2512bc7
title: データに基づいてスタイルを変更する
challengeType: 6
forumTopicId: 301479
dashedName: change-styles-based-on-data
---

# --description--

D3 は、データを可視化して適切に提示するためのものです。 データに基づいて要素のスタイルを変更したい場合があるでしょう。 例えば、値が 20 未満のデータポイントは青色に、そうでない場合は赤色にすることができます。 `style()` メソッドでコールバック関数を使用し、条件付きロジックを含めることができます。 コールバック関数は、次のように `d` パラメータを使用してデータポイントを表します。

```js
selection.style('color', d => {});
```

`style()` メソッドは `color` の設定に限定されるものではありません 。他の CSS プロパティでも使用できます。

# --instructions--

`style()` メソッドをエディタ内のコードに追加して、`h2` 要素の `color` を条件付きで設定してください。 データ値が 20 未満の場合は赤を返し、そうでない場合は緑を返すようなコールバック関数を記述してください。

**注:** if-else ロジックまたは三項演算子を使用できます。

# --hints--

最初の `h2` の `color` を赤にする必要があります。

```js
const headingTwoFirst = document.querySelector('h2');
assert.exists(headingTwoFirst); 
const color = window.getComputedStyle(headingTwoFirst)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

2 番目の `h2` の `color` を緑にする必要があります。

```js
const headingTwoSecond = document.querySelectorAll('h2')[1];
assert.exists(headingTwoSecond); 
const color = window.getComputedStyle(headingTwoSecond)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

3 番目の `h2` の `color` を緑にする必要があります。

```js
const headingTwoThird = document.querySelectorAll('h2')[2];
assert.exists(headingTwoThird); 
const color = window.getComputedStyle(headingTwoThird)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

4 番目の `h2` の `color` を赤にする必要があります。

```js
const headingTwoFourth = document.querySelectorAll('h2')[3];
assert.exists(headingTwoFourth); 
const color = window.getComputedStyle(headingTwoFourth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

5 番目の `h2` の `color` を緑にする必要があります。

```js
const headingTwoFifth = document.querySelectorAll('h2')[4];
assert.exists(headingTwoFifth); 
const color = window.getComputedStyle(headingTwoFifth)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

6 番目の `h2` の `color` を赤にする必要があります。

```js
const headingTwoSixth = document.querySelectorAll('h2')[5];
assert.exists(headingTwoSixth); 
const color = window.getComputedStyle(headingTwoSixth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

7 番目の `h2` の `color` を緑にする必要があります。

```js
const headingTwoSeventh = document.querySelectorAll('h2')[6];
assert.exists(headingTwoSeventh); 
const color = window.getComputedStyle(headingTwoSeventh)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

8 番目の `h2` の `color` を赤にする必要があります。

```js
const headingTwoEighth = document.querySelectorAll('h2')[7];
assert.exists(headingTwoEighth); 
const color = window.getComputedStyle(headingTwoEighth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

9 番目の `h2` の `color` を赤にする必要があります。

```js
const headingTwoNinth = document.querySelectorAll('h2')[8];
assert.exists(headingTwoNinth); 
const color = window.getComputedStyle(headingTwoNinth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      .text(d => d + ' USD');
    // Add your code below this line

    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      .text(d => d + ' USD')
      .style('color', d => (d < 20 ? 'red' : 'green'));
  </script>
</body>
```
