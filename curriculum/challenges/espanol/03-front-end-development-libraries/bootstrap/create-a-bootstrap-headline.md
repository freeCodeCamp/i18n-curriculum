---
id: bad87fee1348bd9aec908846
title: Crea un encabezado de Bootstrap
challengeType: 0
forumTopicId: 16812
dashedName: create-a-bootstrap-headline
---

# --description--

Now let's build something from scratch to practice our HTML, CSS and Bootstrap skills.

Vamos a construir una zona de juegos de jQuery, que pronto vamos a utilizar en nuestros desafíos de jQuery.

Para empezar, crea un elemento `h3`, con el texto `jQuery Playground`.

Colorea tu elemento `h3` con la clase `text-primary` y céntralo con la clase `text-center`.

# --hints--

Debes añadir un elemento `h3` a tu pagina.

```js
assert.lengthOf(document.querySelectorAll('h3'),1);
```

Tu elemento `h3` debe tener una etiqueta de cierre.

```js
assert.match(code,/<\/h3>/g);
assert.match(code,/<h3/g);
assert.equal( code.match(/<\/h3>/g).length , code.match(/<h3/g).length);
```

Tu elemento `h3` debe ser coloreado aplicando la clase `text-primary`

```js
assert.isTrue(document.querySelector('h3')?.classList?.contains('text-primary'));
```

Tu elemento `h3` debe ser centrado aplicando la clase `text-center`

```js
assert.isTrue(document.querySelector('h3')?.classList?.contains('text-center'));
```

Tu elemento `h3` debe tener el texto `jQuery Playground`.

```js
assert.match(document.querySelector('h3')?.textContent, /jquery(\s)+playground/gi);
```

# --seed--

## --seed-contents--

```html

```

# --solutions--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```
