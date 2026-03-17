---
id: 6823c1a0bcada44f32bf0bdc
title: Passaggio 4
challengeType: 0
dashedName: step-4
---

# --description--

Un elemento `h1` è l'intestazione principale di una pagina web e dovresti usarne solo uno per pagina. Gli elementi `h2` rappresentano le sottointestazioni. Puoi averne molteplici per pagina e appaiono così:

```html
<h2>This is a subheading.</h2>
```

Trasforma il testo `Full-Stack Curriculum` in un elemento `h2` racchiudendolo con i tag di apertura e chiusura `h2`.

# --hints--

Il tuo elemento `h2` dovrebbe avere un tag di apertura `<h2>`.

```js
assert.exists(document.querySelector("h2"));
```

Il tuo elemento `h2` dovrebbe avere un tag di chiusura `</h2>`.

```js
assert.match(code, /<\/h2\s*\>/);
```

Il tuo elemento `h2` dovrebbe apparire così: `<h2>Full-Stack Curriculum</h2>`.

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full-Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full-Stack Curriculum
--fcc-editable-region--
```
