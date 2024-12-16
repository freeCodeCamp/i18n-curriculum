---
id: bad87fee1348bd9aedf08746
title: Vererbung von Stilen aus dem Body-Element
challengeType: 0
videoUrl: 'https://scrimba.com/c/c9bmdtR'
forumTopicId: 18204
dashedName: inherit-styles-from-the-body-element
---

# --description--

Now we've proven that every HTML page has a `body` element, and that its `body` element can also be styled with CSS.

Denke daran, dass du dein `body`-Element wie jedes andere HTML-Element stylen kannst, und alle anderen Elemente die Stile deines `body`-Elements erben werden.

# --instructions--

First, create an `h1` element with the text `Hello World`.

Dann geben wir allen Elementen auf deiner Seite die Farbe `green` (grün), indem wir `color: green;` zur Style-Deklaration deines `body`-Elements hinzufügen.

Zum Schluss gibst du deinem `body`-Element die Schriftart `monospace`, indem du `font-family: monospace;` zur Style-Deklaration deines `body`-Elements hinzufügst.

# --hints--

Du solltest ein `h1`-Element erstellen.

```js
assert.isNotEmpty(document.querySelectorAll('h1'));
```

Dein `h1`-Element sollte den Text `Hello World` haben.

```js
assert.match(
  document.querySelector('h1').textContent,
  /hello world/i
);
```

Dein `h1`-Element sollte ein schließenden Tag haben.

```js
const commentlessCode = __helpers.removeHtmlComments(code);
assert.match(commentlessCode, /<\/h1>/g);
assert.match(commentlessCode, /<h1/g);
assert.lengthOf(commentlessCode.match(/<\/h1>/g), commentlessCode.match(/<h1/g).length);
```

Dein `body`-Element sollte den Wert `green` in der Eigenschaft `color` haben.

```js
const bodyElement = document.querySelector('body');
const color = window.getComputedStyle(bodyElement)['color']; 
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

Dein `body`-Element sollte den Wert `monospace` in der Eigenschaft `font-family` haben.

```js
const bodyElement = document.querySelector('body');
const fontFamily = window.getComputedStyle(bodyElement)['font-family'];
assert.include(fontFamily.toLowerCase(), "monospace");
```

Dein `h1`-Element sollte die Schriftart `monospace` von deinem `body`-Element erben.

```js
const h1Element = document.querySelector('h1');
const fontFamily = window.getComputedStyle(h1Element)['font-family'];
assert.include(fontFamily.toLowerCase(), "monospace");
```

Dein `h1`-Element sollte die Farbe `green` deines `body`-Elements übernehmen.

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
  }

</style>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }

</style>
<h1>Hello World!</h1>
```
