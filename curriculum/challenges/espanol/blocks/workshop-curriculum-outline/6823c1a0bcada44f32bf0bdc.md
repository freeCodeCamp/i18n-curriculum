---
id: 6823c1a0bcada44f32bf0bdc
title: Paso 4
challengeType: 0
dashedName: step-4
---

# --description--

Un elemento `h1` es el encabezado principal de una página web y solo debes usar uno por página. Los elementos `h2` representan subencabezados. Puedes tener varios por página y se ven así:

```html
<h2>This is a subheading.</h2>
```

Transforme el texto `Full Stack Curriculum` en un elemento `h2` rodeándolo con etiquetas de apertura y cierre `h2`.

# --hints--

Tu elemento `h2` debe tener una etiqueta de apertura `<h2>`.

```js
assert.exists(document.querySelector("h2"));
```

Tu elemento `h2` debe tener una etiqueta de cierre `</h2>`.

```js
assert.match(code, /<\/h2\s*\>/);
```

Tu elemento `h2` debería verse así: `<h2>Full Stack Curriculum</h2>`.

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full\s*Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full Stack Curriculum
--fcc-editable-region--
```
