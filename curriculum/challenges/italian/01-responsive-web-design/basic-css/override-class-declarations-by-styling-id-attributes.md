---
id: bad87fee1348bd8aedf06756
title: Sovrascrivere le dichiarazioni di classe stilizzando gli attributi ID
challengeType: 0
videoUrl: 'https://scrimba.com/c/cRkpDhB'
forumTopicId: 18251
dashedName: override-class-declarations-by-styling-id-attributes
---

# --description--

We just proved that browsers read CSS from top to bottom in order of their declaration. That means that, in the event of a conflict, the browser will use whichever CSS declaration came last. Notice that if we even had put `blue-text` before `pink-text` in our `h1` element's classes, it would still look at the declaration order and not the order of their use!

Però non abbiamo ancora finito. Ci sono altri modi in cui puoi sovrascrivere il CSS. Ti ricordi gli attributi id?

Sovrascrivi le tue classi `pink-text` e `blue-text`, e rendi il tuo elemento `h1` arancione, dando all'elemento `h1` un id e poi stilizzando questo id.

# --instructions--

Dai al tuo elemento `h1` l'attributo `id` di `orange-text`. Ricorda, gli id di stile appaiono così:

```html
<h1 id="orange-text">
```

Lascia le classi `blue-text` e `pink-text` sul tuo elemento `h1`.

Crea una dichiarazione CSS per il tuo id `orange-text` nel tuo elemento`style`. Ecco un esempio di come questo appare:

```css
#brown-text {
  color: brown;
}
```

**Nota:** Non importa se dichiari questo CSS sopra o sotto la classe `pink-text`, dato che l'attributo `id` avrà sempre la priorità.

# --hints--

Il tuo elemento `h1` dovrebbe avere la classe `pink-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

L'elemento `h1` dovrebbe avere la classe `blue-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

Il tuo elemento `h1` dovrebbe avere l'id di `orange-text`.

```js
assert.strictEqual(document.querySelector('h1').getAttribute('id'),'orange-text');
```

Dovrebbe esserci un solo elemento `h1`.

```js
assert.lengthOf(document.querySelectorAll('h1'), 1);
```

Il tuo id `orange-text` dovrebbe avere una dichiarazione CSS.

```js
assert.match(__helpers.removeCssComments(code), /#orange-text\s*{/gi);
```

Il tuo tag `h1` non dovrebbe avere alcun attributo `style`.

```js
assert.notMatch(__helpers.removeHtmlComments(code), /<h1.*style.*>/gi);
```

Il tuo elemento `h1` dovrebbe essere arancione.

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color']; 
assert.strictEqual(color, 'rgb(255, 165, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
</style>
<h1 class="pink-text blue-text">Hello World!</h1>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
  #orange-text {
    color: orange;
  }  
</style>
<h1 id="orange-text"  class="pink-text blue-text">Hello World!</h1>
```
