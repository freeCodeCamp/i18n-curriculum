---
id: 5dfa371beacea3f48c6300af
title: Крок 21
challengeType: 0
dashedName: step-21
---

# --description--

Якщо ви додаєте заголовок нижчої важливості, значить ви розпочинаєте новий підрозділ.

Після останнього елемента `h2` другого елемента `section` додайте елемент `h3` з таким текстом:

`Things cats love:`

# --hints--

Здається, другий елемент `section` не має початкового та кінцевого тегів.

```js
assert.exists(document.querySelectorAll('main > section')[1]);
assert.lengthOf(code.match(/\<\/section>/g), 2);
```

Одразу над кінцевим тегом другого елемента `section` має бути елемент `h3`.

```js
assert.equal(
  document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName,
    'H3'
);
```

Елемент `h3` повинен мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

Елемент `h3` над кінцевим тегом другого елемента `section` повинен мати текст `Things cats love:`. Переконайтеся, що поставили двокрапку в кінці тексту.

```js
assert.equal(
  document
    .querySelectorAll('main > section')[1]
    ?.lastElementChild.innerText?.trim().toLowerCase()
    .replace(/\s+/g, ' '), 'things cats love:'
);
```

Над останнім елементом `h3`, вкладеним в останній елемент `section`, має бути елемент `h2` з текстом `Cat Lists`. Можливо, ви випадково видалили елемент `h2`.

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  ?.lastElementChild;
assert.equal( secondSectionLastElemNode?.nodeName, 'H3');
assert.equal(
 secondSectionLastElemNode?.previousElementSibling.innerText?.trim()
      .toLowerCase()
      .replace(/\s+/g, ' '), 'cat lists'
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
--fcc-editable-region--
      <section>
        <h2>Cat Lists</h2>

      </section>
--fcc-editable-region--
    </main>
  </body>
</html>
```
