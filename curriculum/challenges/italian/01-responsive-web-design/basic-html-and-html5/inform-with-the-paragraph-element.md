---
id: bad87fee1348bd9aedf08801
title: Informare con l'elemento Paragrafo
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/ceZ7DtN'
forumTopicId: 18202
dashedName: inform-with-the-paragraph-element
---

# --description--

The `p` element is the preferred element for paragraph text on websites. `p` is short for "paragraph".

Puoi creare un elemento paragrafo in questo modo:

```html
<p>I'm a p tag!</p>
```

# --instructions--

Crea un elemento `p` sotto il tuo elemento `h2`, e dagli il testo `Hello Paragraph`.

**Nota:** Come convenzione, tutti i tag HTML sono scritti in minuscolo, ad esempio `<p></p>` e non `<P></P>`.

# --hints--

Il tuo codice dovrebbe avere un elemento `p` valido.

```js
assert.lengthOf(document.querySelectorAll('p'),1);
```

Il tuo elemento `p` dovrebbe contenere il testo `Hello Paragraph`.

```js
assert.match(document.querySelector('p').textContent,/hello(\s)+paragraph/gi);
```

Il tuo elemento `p` dovrebbe avere un tag di chiusura.

```js
assert.match(code,/<\/p>/g);
assert.strictEqual(code.match(/<\/p>/g).length,code.match(/<p/g).length);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
<p>Hello Paragraph</p>
```
