---
id: bad87fee1348bd9aedf08827
title: Crea una lista no ordenada
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cDKVPuv'
forumTopicId: 16814
dashedName: create-a-bulleted-unordered-list
---

# --description--

HTML tiene un elemento especial para crear <dfn>listas no ordenadas</dfn>, o listas con estilo de viñetas.

Las listas no ordenadas comienzan con un elemento `<ul>` de apertura, seguido de cualquier número de elementos `<li>`. Por último, las listas no ordenadas cierran con un `</ul>`.

Por ejemplo:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

crearía una lista con estilo de viñetas de `milk` y `cheese`.

# --instructions--

Elimina los últimos dos elementos `p` y crea una lista no ordenada con tres cosas que amen los gatos en la parte inferior de la página.

# --hints--

Crea un elemento `ul`.

```js
assert.isNotEmpty(document.querySelectorAll('ul'));
```

Debes tener tres elementos `li` dentro de tu elemento `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul li'),3);
```

Tu elemento `ul` debe tener una etiqueta de cierre.

```js
assert.match(code,/<\/ul>/gi);
assert.match(code,/<ul/gi);
assert.strictEqual(code.match(/<\/ul>/gi).length,code.match(/<ul/gi).length);
```

Tus elementos `li` deben tener etiquetas de cierre.

```js
assert.match(code,/<\/li>/gi);
assert.match(code,/<li[\s>]/gi);
assert.strictEqual(code.match(/<\/li>/gi).length,code.match(/<li[\s>]/gi).length);
```

Tus elementos `li` no deben contener una cadena vacía o solo espacios en blanco.

```js
assert.isEmpty([...document.querySelectorAll('ul li')].filter((item) => item.textContent.trim() === ""));
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <ul>
    <li>milk</li>
    <li>mice</li>
    <li>catnip</li>
  </ul>
</main>
```
