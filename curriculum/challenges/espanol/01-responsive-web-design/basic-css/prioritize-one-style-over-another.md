---
id: bad87fee1348bd9aedf08756
title: Prioriza un estilo por sobre otro
challengeType: 0
videoUrl: 'https://scrimba.com/c/cZ8wnHv'
forumTopicId: 18258
dashedName: prioritize-one-style-over-another
---

# --description--

A veces los elementos HTML reciben múltiples estilos que entran en conflicto entre sí.

Por ejemplo, tu elemento `h1` no puede ser verde y rosado al mismo tiempo.

Veamos qué ocurre cuando creamos una clase que hace que el texto sea rosado ("pink"), y luego se la aplicamos a un elemento. ¿*Sobreescribirá* nuestra clase la prioridad CSS `color: green;` del elemento `body`?

# --instructions--

Crea una clase CSS adicional llamada `pink-text` que asigne a un elemento el color rosado ("pink").

Asigna a tu elemento `h1` la clase `pink-text`.

# --hints--

Tu elemento `h1` debe incluir la clase `pink-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

Tu `<style>` debería tener una clase CSS `pink-text` que cambie su `color`.

```js
assert.match(__helpers.removeCssComments(code), /\.pink-text\s*\{\s*color\s*:\s*.+\s*;?\s*\}/g);
```

Tu elemento `h1` debe ser de color rosado ("pink").

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color']; 
assert.strictEqual(color, 'rgb(255, 192, 203)');
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
</style>
<h1>Hello World!</h1>
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
</style>
<h1 class="pink-text">Hello World!</h1>
```
