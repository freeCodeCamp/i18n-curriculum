---
id: bad87fee1348bd9aedf08828
title: Creare una lista ordinata
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cQ3B8TM'
forumTopicId: 16824
dashedName: create-an-ordered-list
---

# --description--

HTML has another special element for creating <dfn>ordered lists</dfn>, or numbered lists.

Le liste ordinate iniziano con un elemento di apertura `<ol>` , seguito da un numero qualsiasi di elementi `<li>`. Infine, le liste ordinate vengono chiuse con il tag `</ol>`.

Ad esempio:

```html
<ol>
  <li>Garfield</li>
  <li>Sylvester</li>
</ol>
```

creerebbe una lista numerata di `Garfield` e `Sylvester`.

# --instructions--

Crea una lista ordinata delle tre cose che i gatti odiano di più.

# --hints--

Dovresti avere una lista ordinata per `Top 3 things cats hate:`

```js
const previousElement = document.querySelector('ol').previousElementSibling; 
assert.match(previousElement.textContent,/Top 3 things cats hate:/i);
```

Dovresti avere una lista non ordinata per `Things cats love:`

```js
const previousElement = document.querySelector('ul').previousElementSibling; 
assert.match(previousElement.textContent,/Things cats love:/i);
```

Dovresti avere un solo elemento `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul'), 1);
```

Dovresti avere un solo elemento `ol`.

```js
assert.lengthOf(document.querySelectorAll('ol'), 1);
```

Dovresti avere tre elementi `li` all'interno del tuo elemento `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

Dovresti avere tre elementi `li` all'interno del tuo elemento `ol`.

```js
assert.lengthOf(document.querySelectorAll('ol li'), 3);
```

Il tuo elemento `ul` dovrebbe avere un tag di chiusura.

```js
assert.match(code,/<\/ul>/g);
assert.strictEqual(code.match(/<\/ul>/g).length ,code.match(/<ul>/g).length);
```

Il tuo elemento `ol` dovrebbe avere un tag di chiusura.

```js
assert.match(code,/<\/ol>/g);
assert.strictEqual(code.match(/<\/ol>/g).length ,code.match(/<ol>/g).length);
```

Il tuo elemento `li` dovrebbe avere un tag di chiusura.

```js
assert.match(code,/<\/li>/g);
assert.match(code,/<li>/g);
assert.strictEqual(code.match(/<\/li>/g).length ,code.match(/<li>/g).length);
```

Gli elementi `li` nella tua lista non ordinata non dovrebbero essere vuoti.

```js
[...document.querySelectorAll('ul li')].forEach((val) =>
  assert.isNotEmpty(__helpers.removeWhiteSpace(val.textContent))
);
```

Gli elementi `li` nella tua lista ordinata non dovrebbero essere vuoti.

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
