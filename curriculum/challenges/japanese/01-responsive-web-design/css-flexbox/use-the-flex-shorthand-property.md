---
id: 587d78ae367417b2b2512afe
title: flex の一括指定プロパティを使用する
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cbpW2tE'
forumTopicId: 301112
dashedName: use-the-flex-shorthand-property
---

# --description--

複数のフレックスプロパティを一度に設定するためのショートカットがあります。 `flex-grow`、`flex-shrink`、`flex-basis` プロパティは、`flex` プロパティを使用することで一括設定することが可能です。

例えば、アイテムに `flex: 1 0 10px;` と設定すると、これは `flex-grow: 1;`、`flex-shrink: 0;`、`flex-basis: 10px;` と同じ設定になります。

デフォルトのプロパティ設定は `flex: 0 1 auto;` です。

# --instructions--

CSS プロパティ `flex` を `#box-1` と `#box-2` の両方に追加します。 `#box-1` への値として `flex-grow` が `2`、 `flex-shrink` が `2`、そして `flex-basis` が `150px` となるよう設定してください。 `#box-2` への値として `flex-grow` が `1`、`flex-shrink` が `1`、そして `flex-basis` が `150px` となるよう設定してください。

これらの値を指定すると、コンテナーが 300px より大きい場合には `#box-1` が `#box-2` の 2 倍の比率で余分なスペースを埋めるように拡大し、コンテナーが 300px より小さい場合には `#box-2` の 2 倍の比率で縮小します。 300px は 2 つのボックスの `flex-basis` 値を足し合わせたサイズです。

# --hints--

`#box-1` 要素の `flex` プロパティを `2 2 150px` に設定してください。

```js
const boxOne = document.querySelector('#box-1');
const flexGrow = window.getComputedStyle(boxOne)['flex-grow'];
const flexShrink = window.getComputedStyle(boxOne)['flex-shrink'];
const flexBasis = window.getComputedStyle(boxOne)['flex-basis'];

assert.equal(flexGrow, '2');
assert.equal(flexShrink, '2');
assert.equal(flexBasis, '150px');
```

`#box-2` 要素の `flex` プロパティを `1 1 150px` に設定してください。

```js
const boxTwo = document.querySelector('#box-2');
const flexGrow = window.getComputedStyle(boxTwo)['flex-grow'];
const flexShrink = window.getComputedStyle(boxTwo)['flex-shrink'];
const flexBasis = window.getComputedStyle(boxTwo)['flex-basis'];

assert.equal(flexGrow, '1');
assert.equal(flexShrink, '1');
assert.equal(flexBasis, '150px');
```

コードは `#box-1` と `#box-2` の両方で `flex` プロパティを使用してください。

```js
assert.lengthOf(code.match(/flex:\s*?\d\s+?\d\s+?150px;/g), 2);
```

# --seed--

## --seed-contents--

```html
<style>
  #box-container {
    display: flex;
    height: 500px;
  }
  #box-1 {
    background-color: dodgerblue;

    height: 200px;
  }

  #box-2 {
    background-color: orangered;

    height: 200px;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```

# --solutions--

```html
<style>
  #box-container {
    display: flex;
    height: 500px;
  }
  #box-1 {
    background-color: dodgerblue;
    flex: 2 2 150px;
    height: 200px;
  }

  #box-2 {
    background-color: orangered;
    flex: 1 1 150px;
    height: 200px;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
