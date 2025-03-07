---
id: 5efae16e3cbd2bbdab94e334
title: Крок 33
challengeType: 0
dashedName: step-33
---

# --description--

Після останнього елемента `img` додайте елемент `figcaption` з текстом `Cats hate other cats.`

# --hints--

Елемент `figcaption` повинен мати початковий тег. Початкові теги мають такий синтаксис: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figcaption'), 2);
```

Елемент `figcaption` повинен мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.lengthOf(code.match(/<\/figcaption\>/g), 2);
```

Одразу над кінцевим тегом другого елемента `section` має бути елемент `figure`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

Останній елемент `img` має бути вкладеним в елементі `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Елемент `figure` повинен мати початковий тег. Початкові теги мають такий синтаксис: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

Елемент `figure` повинен мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.lengthOf(code.match(/<\/figure\>/g), 2);
```

Елемент `figcaption` має бути вкладеним в елементі `figure`.

```js
assert.lengthOf(document.querySelectorAll('figure > figcaption'), 2);
```

Елемент `figcaption`, вкладений в елемент `figure`, має бути під елементом `img`. Елементи `img` та `figcaption` розташовані в неправильному порядку.

```js
assert.equal(
  document.querySelectorAll('figcaption')[1]?.previousElementSibling.nodeName,
    'IMG'
);
```

Елемент `figcaption` повинен мати текст `Cats hate other cats.` Ви пропустили слово або допустили друкарську помилку.

```js
assert.match(
  document
    .querySelectorAll('figcaption')[1]
    ?.innerText.toLowerCase(),
    /Cats hate other cats\.?$/i
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
        <h3>Things cats love:</h3>
        <ul>
          <li>catnip</li>
          <li>laser pointers</li>
          <li>lasagna</li>
        </ul>
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg" alt="A slice of lasagna on a plate.">
          <figcaption>Cats <em>love</em> lasagna.</figcaption>  
        </figure>
        <h3>Top 3 things cats hate:</h3>
        <ol>
          <li>flea treatment</li>
          <li>thunder</li>
          <li>other cats</li>
        </ol>
--fcc-editable-region--
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Five cats looking around a field.">

        </figure>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
