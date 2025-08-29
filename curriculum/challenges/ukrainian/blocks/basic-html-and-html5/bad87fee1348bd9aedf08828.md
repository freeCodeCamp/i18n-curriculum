---
id: bad87fee1348bd9aedf08828
title: Створити впорядкований список
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cQ3B8TM'
forumTopicId: 16824
dashedName: create-an-ordered-list
---

# --description--

HTML has another special element for creating <dfn>ordered lists</dfn>, or numbered lists.

Впорядковані списки починаються з елементу `<ol>`, за яким йде будь-яка кількість елементів `<li>`. Нарешті, впорядковані списки закриваються тегом `</ol>`.

Наприклад:

```html
<ol>
  <li>Garfield</li>
  <li>Sylvester</li>
</ol>
```

створить пронумерований список `Garfield` та `Sylvester`.

# --instructions--

Створіть впорядкований список з трьох речей, які найбільше ненавидить кіт.

# --hints--

Ви повинні мати впорядкований список для `Top 3 things cats hate:` (3 речі, які коти ненавидять найбільше)

```js
const previousElement = document.querySelector('ol').previousElementSibling; 
assert.match(previousElement.textContent,/Top 3 things cats hate:/i);
```

Ви повинні мати невпорядкований список `Things cats love:` (Те, що люблять коти)

```js
const previousElement = document.querySelector('ul').previousElementSibling; 
assert.match(previousElement.textContent,/Things cats love:/i);
```

Ви повинні мати тільки один елемент `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul'), 1);
```

Ви повинні мати тільки один елемент `ol`.

```js
assert.lengthOf(document.querySelectorAll('ol'), 1);
```

У вас має бути три елементи `li` всередині вашого елементу `ul`.

```js
assert.lengthOf(document.querySelectorAll('ul li'), 3);
```

Ви повинні мати три елементи `li` всередині елементу `ol`.

```js
assert.lengthOf(document.querySelectorAll('ol li'), 3);
```

Елемент `ul` повинен мати кінцевий тег.

```js
assert.match(code,/<\/ul>/g);
assert.strictEqual(code.match(/<\/ul>/g).length ,code.match(/<ul>/g).length);
```

Елемент `ol` повинен мати кінцевий тег.

```js
assert.match(code,/<\/ol>/g);
assert.strictEqual(code.match(/<\/ol>/g).length ,code.match(/<ol>/g).length);
```

Елемент `li` повинен мати кінцевий тег.

```js
assert.match(code,/<\/li>/g);
assert.match(code,/<li>/g);
assert.strictEqual(code.match(/<\/li>/g).length ,code.match(/<li>/g).length);
```

Елементи `li` у вашому невпорядкованому списку не повинні бути порожніми.

```js
[...document.querySelectorAll('ul li')].forEach((val) =>
  assert.isNotEmpty(__helpers.removeWhiteSpace(val.textContent))
);
```

Елементи `li` у вашому впорядкованому списку не повинні бути порожніми.

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
