---
id: bad87fee1348bd9aedf08828
title: Crea una lista ordenada
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cQ3B8TM'
forumTopicId: 16824
dashedName: create-an-ordered-list
---

# --description--

HTML tiene otro elemento especial para crear <dfn>listas ordenadas</dfn>, o listas numeradas.

Las listas ordenadas comienzan con un elemento de apertura `<ol>`, seguido de cualquier número de elementos `<li>`. Por último, las listas ordenadas se cierran con la etiqueta `</ol>`.

Por ejemplo:

```html
<ol>
  <li>Garfield</li>
  <li>Sylvester</li>
</ol>
```

crearía una lista numerada de `Garfield` y `Sylvester`.

# --instructions--

Crea una lista ordenada de las 3 cosas que los gatos odian (Top 3 things cats hate) más.

# --hints--

Debes tener una lista ordenada para `Top 3 things cats hate:`

```js
const previousElement = document.querySelector('ol').previousElementSibling; 
assert.match(previousElement.textContent,/Top 3 things cats hate:/i);
```

Debes tener una lista no ordenada para `Things cats love:`

```js
const previousElement = document.querySelector('ul').previousElementSibling; 
assert.match(previousElement.textContent,/Things cats love:/i);
```

Solo debes tener un elemento `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul'), 1);
```

Solo debes tener un elemento `ol`.

```js
assert.lengthOf(document.querySelectorAll('ol'), 1);
```

Debes tener tres elementos `li` dentro de tu elemento `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

Debes tener tres elementos `li` dentro de tu elemento `ol`.

```js
assert.lengthOf(document.querySelectorAll('ol li'), 3);
```

Tu elemento `ul` debe tener una etiqueta de cierre.

```js
assert.match(code,/<\/ul>/g);
assert.strictEqual(code.match(/<\/ul>/g).length ,code.match(/<ul>/g).length);
```

Tu elemento `ol` debe tener una etiqueta de cierre.

```js
assert.match(code,/<\/ol>/g);
assert.strictEqual(code.match(/<\/ol>/g).length ,code.match(/<ol>/g).length);
```

Tu elemento `li` debe tener una etiqueta de cierre.

```js
assert.match(code,/<\/li>/g);
assert.match(code,/<li>/g);
assert.strictEqual(code.match(/<\/li>/g).length ,code.match(/<li>/g).length);
```

Los elementos `li` de tu lista no ordenada no deben estar vacíos.

```js
[...document.querySelectorAll('ul li')].forEach((val) =>
  assert.isNotEmpty(__helpers.removeWhiteSpace(val.textContent))
);
```

Los elementos `li` de tu lista ordenada no deben estar vacíos.

```js
[...document.querySelectorAll('ol li')].forEach((val) =>
  assert.isNotEmpty(__helpers.removeWhiteSpace(val.textContent))
);
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>

</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>hate 1</li>
    <li>hate 2</li>
    <li>hate 3</li>
  </ol>
</main>
```
