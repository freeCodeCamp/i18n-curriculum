---
id: bad82fee1322bd9aedf08721
title: Diferenciar entre unidades absolutas e relativas
challengeType: 0
videoUrl: 'https://scrimba.com/c/cN66JSL'
forumTopicId: 301089
dashedName: understand-absolute-versus-relative-units
---

# --description--

The last several challenges all set an element's margin or padding with pixels (`px`). Pixels are a type of length unit, which is what tells the browser how to size or space an item. In addition to `px`, CSS has a number of different length unit options that you can use.

Os dois principais tipos de unidades de comprimento são: absoluto e relativo. As unidades absolutas estão vinculadas às unidades físicas de comprimento. Por exemplo, `in` e `mm` referem-se a polegadas e milímetros, respectivamente. As unidades de comprimento absoluto aproximam-se da medida real em uma tela, mas existem algumas diferenças dependendo da resolução da tela.

Unidades relativas, como `em` ou `rem`, são relativas a outro valor de comprimento. Por exemplo, `em` é baseado no tamanho da tipografia de um elemento. Se você usá-la para definir o valor da propriedade `font-size`, esse valor será relativo a propriedade `font-size` do elemento pai.

**Observação:** existem diversas unidades do tipo relativo que são vinculadas ao tamanho da janela do navegador (viewport). Elas serão abordadas na seção Princípios de Web Design Responsivo.

# --instructions--

No elemento que possui a classe `red-box`, adicione a propriedade `padding` com o valor `1.5em`.

# --hints--

A classe `red-box` deve ter a propriedade `padding`.

```js
const redBox =document.querySelector('.red-box'); 
const style = window.getComputedStyle(redBox); 

assert.notEqual(style['padding-top'], '0px');
assert.notEqual(style['padding-right'], '0px');
assert.notEqual(style['padding-bottom'], '0px');
assert.notEqual(style['padding-left'], '0px');
```

A classe `red-box` deve dar aos elementos 1.5em de `padding`.

```js
assert.match(__helpers.removeCssComments(code), /\.red-box\s*?{[\s\S]*padding\s*:\s*?1\.5em/gi);
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
    background-color: red;
    margin: 20px 40px 20px 40px;

  }

  .green-box {
    background-color: green;
    margin: 20px 40px 20px 40px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box green-box">padding</h5>
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
    background-color: red;
    margin: 20px 40px 20px 40px;
    padding: 1.5em;
  }

  .green-box {
    background-color: green;
    margin: 20px 40px 20px 40px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box green-box">padding</h5>
</div>
```
