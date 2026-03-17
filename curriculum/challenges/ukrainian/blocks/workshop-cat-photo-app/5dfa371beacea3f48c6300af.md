---
id: 5dfa371beacea3f48c6300af
title: Крок 21
challengeType: 0
dashedName: step-21
---

# --description--

Коли ви додаєте заголовок нижчого рівня на сторінку, це означає, що ви починаєте новий підрозділ.

Після останнього `h2` елемента другого `section` елемента додайте `h3` елемент із таким текстом:

`Things cats love:`

# --hints--

Другий `section` елемент, здається, відсутній або не має обох — відкриваючого та кінцевого тегів.

```js
assert.exists(document.querySelectorAll('main > section')[1]);
assert.lengthOf(code.match(/\<\/section>/g), 2);
```

Потрібно, щоб над кінцевим тегом другого `h3` елемента був `section` елемент.

```js
assert.equal(
  document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName,
    'H3'
);
```

Ваш `h3` елемент має мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

`h3` елемент над кінцевим тегом другого `section` елемента має містити текст `Things cats love:`. Переконайтеся, що в кінці тексту є двокрапка.

```js
assert.equal(
  document
    .querySelectorAll('main > section')[1]
    ?.lastElementChild.innerText?.trim().toLowerCase()
    .replace(/\s+/g, ' '), 'things cats love:'
);
```

Потрібно, щоб над останнім `h2` елементом, вкладеним у останній `Cat Lists` елемент, був `h3` елемент із текстом `section`. Можливо, ви випадково видалили `h2` елемент.

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
      <section>
        <h2>Cat Lists</h2>
--fcc-editable-region--
        
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
