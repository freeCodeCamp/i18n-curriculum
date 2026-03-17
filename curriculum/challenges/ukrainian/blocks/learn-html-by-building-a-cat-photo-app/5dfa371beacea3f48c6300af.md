---
id: 5dfa371beacea3f48c6300af
title: Крок 21
challengeType: 0
dashedName: step-21
---

# --description--

Коли ви додаєте заголовок нижчого рівня на сторінку, це означає, що ви починаєте новий підрозділ.

Після останнього `h2` елемента другого `section` елемента додайте `h3` елемент з таким текстом:

`Things cats love:`

# --hints--

Другий `section` елемент, здається, відсутній або не має і відкриваючого, і кінцевого тегів.

```js
assert(
  document.querySelectorAll('main > section')[1] &&
    code.match(/\<\/section>/g).length == 2
);
```

Потрібно, щоб над кінцевим тегом другого `h3` елемента був `section` елемент.

```js
assert(
  document.querySelectorAll('main > section')[1].lastElementChild.nodeName ===
    'H3'
);
```

Ваш `h3` елемент повинен мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

`h3` елемент над кінцевим тегом другого `section` елемента повинен містити текст `Things cats love:`. Переконайтеся, що в кінці тексту є двокрапка.

```js
assert(
  document
    .querySelectorAll('main > section')[1]
    .lastElementChild.innerText.toLowerCase()
    .replace(/\s+/g, ' ') === 'things cats love:'
);
```

Потрібно, щоб над останнім `h2` елементом, який вкладений у останній `Cat Lists` елемент, був `h3` елемент з текстом `section`. Можливо, ви випадково видалили `h2` елемент.

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  .lastElementChild;
assert(
  secondSectionLastElemNode.nodeName === 'H3' &&
    secondSectionLastElemNode.previousElementSibling.innerText
      .toLowerCase()
      .replace(/\s+/g, ' ') === 'cat lists'
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
