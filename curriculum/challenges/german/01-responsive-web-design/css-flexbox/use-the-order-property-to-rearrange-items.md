---
id: 587d78ae367417b2b2512aff
title: Bestellungseigenschaft verwenden, um Artikel neu zu ordnen
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cMbvNAG'
forumTopicId: 301116
dashedName: use-the-order-property-to-rearrange-items
---

# --description--

The `order` property is used to tell CSS the order of how flex items appear in the flex container. By default, items will appear in the same order they come in the source HTML. The property takes numbers as values, and negative numbers can be used.

# --instructions--

Füge die CSS-Eigenschaft `order` sowohl zu `#box-1` als auch zu `#box-2` hinzu. Gib' `#box-1` den Wert `2` und `#box-2` den Wert `1`.

# --hints--

Das `#box-1` Element sollte eine `order` Eigenschaft mit einem Wert von `2` besitzen.

```js
const boxOne = document.querySelector('#box-1');
const order = window.getComputedStyle(boxOne)['order'];
assert.strictEqual(order, '2');
```

Das `#box-2`-Element sollte eine `order` Eigenschaft mit einem Wert von `1` besitzen.

```js
const boxTwo = document.querySelector('#box-2');
const order = window.getComputedStyle(boxTwo)['order'];
assert.strictEqual(order, '1');
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
    order: 2;
    height: 200px;
    width: 200px;
  }

  #box-2 {
    background-color: orangered;
    order: 1;
    height: 200px;
    width: 200px;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
