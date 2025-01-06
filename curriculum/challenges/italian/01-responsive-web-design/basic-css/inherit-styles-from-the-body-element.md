---
id: bad87fee1348bd9aedf08746
title: Ereditare gli stili dall'elemento Body
challengeType: 0
videoUrl: 'https://scrimba.com/c/c9bmdtR'
forumTopicId: 18204
dashedName: inherit-styles-from-the-body-element
---

# --description--

Now we've proven that every HTML page has a `body` element, and that its `body` element can also be styled with CSS.

Ricorda, puoi stilizzare il tuo elemento `body` proprio come qualsiasi altro elemento HTML, e tutti gli altri elementi erediteranno gli stili dell'elemento `body`.

# --instructions--

First, create an `h1` element with the text `Hello World`.

Quindi, dai a tutti gli elementi sulla tua pagina il colore `green` aggiungendo `color: green;` alla tua dichiarazione di stile dell'elemento `body`.

Infine, dai al tuo elemento `body` la font-family di `monospace` aggiungendo `font-family: monospace;` alla tua dichiarazione di stile per l'elemento `body`.

# --hints--

Dovresti creare un elemento `h1`.

```js
assert.isNotEmpty(document.querySelectorAll('h1'));
```

Il tuo elemento `h1` dovrebbe contenere il testo `Hello World`.

```js
assert.match(
  document.querySelector('h1').textContent,
  /hello world/i
);
```

Il tuo elemento `h1` dovrebbe avere un tag di chiusura.

```js
const commentlessCode = __helpers.removeHtmlComments(code);
assert.match(commentlessCode, /<\/h1>/g);
assert.match(commentlessCode, /<h1/g);
assert.lengthOf(commentlessCode.match(/<\/h1>/g), commentlessCode.match(/<h1/g).length);
```

Il tuo elemento `body` dovrebbe avere la proprietà `color` di `green`.

```js
const bodyElement = document.querySelector('body');
const color = window.getComputedStyle(bodyElement)['color']; 
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

Il tuo elemento `body` dovrebbe avere la proprietà `font-family` di `monospace`.

```js
const bodyElement = document.querySelector('body');
const fontFamily = window.getComputedStyle(bodyElement)['font-family'];
assert.include(fontFamily.toLowerCase(), "monospace");
```

Il tuo elemento `h1` dovrebbe ereditare il font `monospace` dal tuo elemento `body`.

```js
const h1Element = document.querySelector('h1');
const fontFamily = window.getComputedStyle(h1Element)['font-family'];
assert.include(fontFamily.toLowerCase(), "monospace");
```

Il tuo elemento `h1` dovrebbe ereditare il colore `green` dal tuo elemento `body`.

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
