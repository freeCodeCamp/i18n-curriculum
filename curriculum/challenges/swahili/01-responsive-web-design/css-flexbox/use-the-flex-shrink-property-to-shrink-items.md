---
id: 587d78ad367417b2b2512afb
title: Tumia Sifa ya flex-shrink ili Kupunguza Vipengee
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cd3PBfr'
forumTopicId: 301113
dashedName: use-the-flex-shrink-property-to-shrink-items
---

# --description--

So far, all the properties in the challenges apply to the flex container (the parent of the flex items). However, there are several useful properties for the flex items.

Ya kwanza ni `flex-shrink` mali. Inapotumiwa, huruhusu kipengee kupungua ikiwa chombo cha kukunja ni kidogo sana. Vipengee husinyaa wakati upana wa kontena kuu ni mdogo kuliko upana uliounganishwa wa vipengee vyote vinavyopinda ndani yake.

Kipengele cha `flex-shrink` huchukua nambari kama thamani. Nambari ya juu, itapungua zaidi ikilinganishwa na vitu vingine kwenye chombo. Kwa mfano, ikiwa bidhaa moja ina `flex-shrink` thamani ya `1` na nyingine ina `flex-shrink` thamani ya `3< /code>, ile yenye thamani ya <code>3` itapungua mara tatu kuliko nyingine.

# --instructions--

Add the CSS property `flex-shrink` to both `#box-1` and `#box-2`. Give `#box-1` a value of `1` and `#box-2` a value of `2`.

# --hints--

The `#box-1` element should have the `flex-shrink` property set to a value of `1`.

```js
const boxOne = document.querySelector('#box-1');
const flexShrink = window.getComputedStyle(boxOne)['flex-shrink'];
assert.equal(flexShrink, '1');
```

The `#box-2` element should have the `flex-shrink` property set to a value of `2`.

```js
const boxTwo = document.querySelector('#box-2');
const flexShrink = window.getComputedStyle(boxTwo)['flex-shrink'];
assert.equal(flexShrink, '2');
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
    width: 100%;
    height: 200px;

  }

  #box-2 {
    background-color: orangered;
    width: 100%;
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
    width: 100%;
    height: 200px;
    flex-shrink: 1;
  }

  #box-2 {
    background-color: orangered;
    width: 100%;
    height: 200px;
    flex-shrink: 2;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
