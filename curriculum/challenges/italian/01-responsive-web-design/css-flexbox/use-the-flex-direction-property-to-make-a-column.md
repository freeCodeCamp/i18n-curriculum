---
id: 587d78ac367417b2b2512af4
title: Usare la proprietà flex-direction per creare una colonna
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cZmWeA4'
forumTopicId: 301109
dashedName: use-the-flex-direction-property-to-make-a-column
---

# --description--

The last two challenges used the `flex-direction` property set to `row`. This property can also create a column by vertically stacking the children of a flex container.

# --instructions--

Aggiungi la proprietà CSS `flex-direction` all'elemento `#box-container` e dagli un valore di `column`.

# --hints--

L'elemento `#box-container` dovrebbe avere una proprietà `flex-direction` impostata su `column`.

```js
const boxContainer = document.querySelector('#box-container');
const flexDirection = window.getComputedStyle(boxContainer)['flex-direction'];
assert.strictEqual(flexDirection, 'column');
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
    width: 50%;
    height: 50%;
  }

  #box-2 {
    background-color: orangered;
    width: 50%;
    height: 50%;
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
    flex-direction: column;
  }
  #box-1 {
    background-color: dodgerblue;
    width: 50%;
    height: 50%;
  }

  #box-2 {
    background-color: orangered;
    width: 50%;
    height: 50%;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
