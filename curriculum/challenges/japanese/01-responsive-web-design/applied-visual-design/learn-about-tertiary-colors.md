---
id: 587d78a4367417b2b2512ad2
title: 三次色について学ぶ
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). You saw these colors in the Complementary Colors challenge. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

三次色は、ある原色と色相環上で隣合う二次色のどちらかを混合した結果です。 例えば、RGB カラーモデルでは、赤 (原色) と黄色 (二次色) でオレンジ (三次色) が作られます。 これでシンプルな色相環に更に 6 色を加え、12 色になります。

デザインに調和のとれた組み合わせをもたらす色を選択する方法は色々あります。 三次色を使用する一つの例は分裂補色配色 (スプリットコンプリメンタリー) と呼ばれます。 この方法はあるベースカラーから始まり、その補色と隣り合う 2 色とペアにします。 その三色はデザインに強い視覚的コントラストを与えますが、2 つの補色を使うよりも繊細になります。

こちらが分裂補色配色を使用して作成した三色です。

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

`orange`, `cyan`, `raspberry` クラスの `background-color` プロパティをそれぞれ対応した色に変更してください。 色の名前ではなく、16 進数コードを使用するようにしてください。

# --hints--

クラスが `orange` の `div` 要素の `background-color` はオレンジである必要があります。

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

クラスが `cyan` の `div` 要素の `background-color` はシアンである必要があります。

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

クラスが `raspberry` の `div` 要素の `background-color` はラズベリーである必要があります。

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

色を表すクラスの全ての `background-color` の値は、色の名前ではなく 16 進数コードである必要があります。

```js
assert.notMatch(code, /background-color:\s(orange|cyan|raspberry)/);
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .orange {
    background-color: #000000;
  }

  .cyan {
    background-color: #000000;
  }

  .raspberry {
    background-color: #000000;
  }

  div {
    height: 100px;
    width: 100px;
    margin-bottom: 5px;
  }
</style>

<div class="orange"></div>
<div class="cyan"></div>
<div class="raspberry"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .orange {
    background-color: #FF7F00;
  }

  .cyan {
    background-color: #00FFFF;
  }

  .raspberry {
    background-color: #FF007F;
  }

  div {
    height: 100px;
    width: 100px;
    margin-bottom: 5px;
  }
</style>
<div class="orange"></div>
<div class="cyan"></div>
<div class="raspberry"></div>
```
