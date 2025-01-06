---
id: 587d78ae367417b2b2512afd
title: Usar a propriedade flex-basis para definir o tamanho inicial de um flex item
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/c3d9nCa'
forumTopicId: 301108
dashedName: use-the-flex-basis-property-to-set-the-initial-size-of-an-item
---

# --description--

The `flex-basis` property specifies the initial size of the item before CSS makes adjustments with `flex-shrink` or `flex-grow`.

As unidades utilizadas pela propriedade `flex-basis` são as mesmas que outras propriedades de tamanho (`px`, `em`, `%`, etc.). O valor `auto` dimensiona os flex items baseado no conteúdo.

# --instructions--

Defina o tamanho inicial das caixas usando `flex-basis`. Adicione a propriedade CSS `flex-basis` aos elementos de id `#box-1` e `#box-2`. Dê para `#box-1` o valor de `10em` e `#box-2` o valor de `20em`.

# --hints--

O elemento de id `#box-1` deve ter a propriedade `flex-basis`.

```js
const boxOne = document.querySelector('#box-1');
const flexBasis = window.getComputedStyle(boxOne)['flex-basis'];
assert.notStrictEqual(flexBasis, 'auto');
```

O elemento de id `#box-1` deve ter a propriedade `flex-basis` com o valor de `10em`.

```js
assert.match(code, /#box-1\s*?{\s*?.*?\s*?.*?\s*?flex-basis:\s*?10em;/g);
```

O elemento de id `#box-2` deve ter a propriedade `flex-basis`.

```js
const boxTwo = document.querySelector('#box-2');
const flexBasis = window.getComputedStyle(boxTwo)['flex-basis'];
assert.notStrictEqual(flexBasis, 'auto');
```

O elemento de id `#box-2` deve ter a propriedade `flex-basis` com o valor de `20em`.

```js
assert.match(code, /#box-2\s*?{\s*?.*?\s*?.*?\s*?flex-basis:\s*?20em;/g);
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
    height: 200px;
    flex-basis: 10em;
  }

  #box-2 {
    background-color: orangered;
    height: 200px;
    flex-basis: 20em;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
