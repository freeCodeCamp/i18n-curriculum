---
id: bad87fee1348bd9aedf08826
title: Usar a notação de sentido horário para especificar o preenchimento (padding) de um elemento
challengeType: 0
videoUrl: 'https://scrimba.com/c/cB7mBS9'
forumTopicId: 18346
dashedName: use-clockwise-notation-to-specify-the-padding-of-an-element
---

# --description--

Instead of specifying an element's `padding-top`, `padding-right`, `padding-bottom`, and `padding-left` properties individually, you can specify them all in one line, like this:

```css
padding: 10px 20px 10px 20px;
```

Esses quatro valores funcionam como em um relógio: acima, à direita, abaixo, à esquerda. Eles produzirão exatamente o mesmo resultado como quando usamos as propriedades específicas para cada preenchimento.

# --instructions--

Use a notação no sentido horário para dar à classe `.blue-box` um preenchimento (`padding`) de `40px` nos lados superior e esquerdo, mas apenas `20px` nos lados inferior e direito.

# --hints--

A classe `blue-box` deve dar `40px` de preenchimento (`padding`) no lado superior dos elementos.

```js
const blueBox = document.querySelector('.blue-box');
const paddingTop = window.getComputedStyle(blueBox)['padding-top'];
assert.strictEqual(paddingTop, '40px');
```

A classe `blue-box` deve dar `20px` de preenchimento (`padding`) no lado direito dos elementos.

```js
const blueBox = document.querySelector('.blue-box');
const paddingRight = window.getComputedStyle(blueBox)['padding-right'];
assert.strictEqual(paddingRight, '20px');
```

A classe `blue-box` deve dar `20px` de preenchimento (`padding`) no lado inferior dos elementos.

```js
const blueBox = document.querySelector('.blue-box');
const paddingBottom = window.getComputedStyle(blueBox)['padding-bottom'];
assert.strictEqual(paddingBottom, '20px');
```

A classe `blue-box` deve dar `40px` de preenchimento (`padding`) no lado esquerdo dos elementos.

```js
const blueBox = document.querySelector('.blue-box');
const paddingLeft = window.getComputedStyle(blueBox)['padding-left'];
assert.strictEqual(paddingLeft, '40px');
```

Você deve usar a notação no sentido horário para definir o padding dos elementos da classe `blue-box`.

```js
const css =  __helpers.removeCssComments(document.querySelector('style:not(.fcc-hide-header)').textContent);
assert.match(css, /\.blue-box\s*{[\s\S]*padding\s*:\s*\d+px\s+\d+px\s+\d+px\s+\d+px(;\s*[^}]+\s*}|;?\s*})/);
```

# --seed--

## --seed-contents--

```html
<style>
  .injected-text {
    margin-bottom: -25px;
    text-align: center;
  }

  .box {
    border-style: solid;
    border-color: black;
    border-width: 5px;
    text-align: center;
  }

  .yellow-box {
    background-color: yellow;
    padding: 20px 40px 20px 40px;
  }

  .red-box {
    background-color: crimson;
    color: #fff;
    padding: 20px 40px 20px 40px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```

# --solutions--

```html
<style>
  .injected-text {
    margin-bottom: -25px;
    text-align: center;
  }

  .box {
    border-style: solid;
    border-color: black;
    border-width: 5px;
    text-align: center;
  }

  .yellow-box {
    background-color: yellow;
    padding: 20px 40px 20px 40px;
  }

  .red-box {
    background-color: crimson;
    color: #fff;
    padding: 20px 40px 20px 40px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
    padding: 40px 20px 20px 40px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```
