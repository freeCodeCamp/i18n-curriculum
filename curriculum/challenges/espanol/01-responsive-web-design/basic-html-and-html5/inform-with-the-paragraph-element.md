---
id: bad87fee1348bd9aedf08801
title: Informa con el elemento párrafo
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/ceZ7DtN'
forumTopicId: 18202
dashedName: inform-with-the-paragraph-element
---

# --description--

The `p` element is the preferred element for paragraph text on websites. `p` is short for "paragraph".

Puedes crear un elemento párrafo de esta manera:

```html
<p>I'm a p tag!</p>
```

# --instructions--

Crea un elemento `p` debajo de tu elemento `h2` y dale como texto `Hello Paragraph`.

**Nota:** Por convención, todas las etiquetas HTML son escritas en minúsculas, por ejemplo `<p></p>` y no `<P></P>`.

# --hints--

Tu código debe tener un elemento `p` válido.

```js
assert($('p').length > 0);
```

Tu elemento `p` debe contener el texto `Hello Paragraph`.

```js
assert.isTrue(/hello(\s)+paragraph/gi.test($('p').text()));
```

Tu elemento `p` debe tener una etiqueta de cierre.

```js
assert(
  code.match(/<\/p>/g) &&
    code.match(/<\/p>/g).length === code.match(/<p/g).length
);
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
