---
id: 587d78af367417b2b2512b00
title: Usar a propriedade align-self
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cMbvzfv'
forumTopicId: 301107
dashedName: use-the-align-self-property
---

# --description--

The final property for flex items is `align-self`. This property allows you to adjust each item's alignment individually, instead of setting them all at once. This is useful since other common adjustment techniques using the CSS properties `float`, `clear`, and `vertical-align` do not work on flex items.

`align-self` aceita os mesmos valores que `align-items`, com a diferença que vai substituir qualquer valor anteriormente definido pela propriedade `align-items`.

# --instructions--

Adicione a propriedade CSS `align-self` aos elementos com id de `#box-1` e `#box-2`. Dê para `#box-1` o valor de `center` e para `#box-2` o valor de `flex-end`.

# --hints--

O elemento de id `#box-1` deve ter a propriedade `align-self` com o valor de `center`.

```js
const boxOne = document.querySelector('#box-1');
const alignment = window.getComputedStyle(boxOne)['align-self'];
assert.strictEqual(alignment, 'center');
```

O elemento de id `#box-2` deve ter a propriedade `align-self` com o valor de `flex-end`.

```js
const boxTwo = document.querySelector('#box-2');
const alignment = window.getComputedStyle(boxTwo)['align-self'];
assert.strictEqual(alignment, 'flex-end');
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
    width: 200px;
  }

  #box-2 {
    background-color: orangered;

    height: 200px;
    width: 200px;
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
    align-self: center;
    height: 200px;
    width: 200px;
  }

  #box-2 {
    background-color: orangered;
    align-self: flex-end;
    height: 200px;
    width: 200px;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
