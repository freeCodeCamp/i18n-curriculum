---
id: 587d78ae367417b2b2512afe
title: Usare le scorciatoie flex
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cbpW2tE'
forumTopicId: 301112
dashedName: use-the-flex-shorthand-property
---

# --description--

There is a shortcut available to set several flex properties at once. The `flex-grow`, `flex-shrink`, and `flex-basis` properties can all be set together by using the `flex` property.

Ad esempio, `flex: 1 0 10px;` imposterà l'elemento con `flex-grow: 1;`, `flex-shrink: 0;`, e `flex-basis: 10px;`.

Le impostazioni delle proprietà predefinite sono `flex: 0 1 auto;`.

# --instructions--

Aggiungi la proprietà CSS `flex` sia a `#box-1` che a `#box-2`. Imposta `#box-1` in modo che il suo `flex-grow` sia `2`, il suo `flex-shrink` sia `2`e la sua `flex-basis` sia `150px`. Imposta `#box-2` in modo che il suo `flex-grow` sia `1`, il suo `flex-shrink` sia `1`e la sua `flex-basis` sia `150px`.

Questi valori faranno crescere `#box-1` facendogli riempire lo spazio aggiuntivo al doppio della velocità di `#box-2` quando il contenitore è superiore a 300px e riducendolo al doppio della velocità di `#box-2` quando il contenitore è inferiore a 300px. 300px è la dimensione combinata dei valori `flex-basis` delle due caselle.

# --hints--

L'elemento `#box-1` dovrebbe avere la proprietà `flex` impostata su un valore di `2 2 150px`.

```js
const boxOne = document.querySelector('#box-1');
const flexGrow = window.getComputedStyle(boxOne)['flex-grow'];
const flexShrink = window.getComputedStyle(boxOne)['flex-shrink'];
const flexBasis = window.getComputedStyle(boxOne)['flex-basis'];

assert.equal(flexGrow, '2');
assert.equal(flexShrink, '2');
assert.equal(flexBasis, '150px');
```

L'elemento `#box-2` dovrebbe avere la proprietà `flex` impostata su un valore di `1 1 150px`.

```js
const boxTwo = document.querySelector('#box-2');
const flexGrow = window.getComputedStyle(boxTwo)['flex-grow'];
const flexShrink = window.getComputedStyle(boxTwo)['flex-shrink'];
const flexBasis = window.getComputedStyle(boxTwo)['flex-basis'];

assert.equal(flexGrow, '1');
assert.equal(flexShrink, '1');
assert.equal(flexBasis, '150px');
```

Il tuo codice dovrebbe utilizzare la proprietà `flex` per `#box-1` e `#box-2`.

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
