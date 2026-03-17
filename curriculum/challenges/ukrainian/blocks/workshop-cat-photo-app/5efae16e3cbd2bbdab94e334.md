---
id: 5efae16e3cbd2bbdab94e334
title: Крок 33
challengeType: 0
dashedName: step-33
---

# --description--

Після останнього елемента `img` додайте елемент `figcaption` з текстом `Cats hate other cats.`

# --hints--

Ваш елемент `figcaption` має мати початковий тег. Початкові теги мають такий синтаксис: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figcaption'), 2);
```

Ваш елемент `figcaption` має мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.lengthOf(code.match(/<\/figcaption\>/g), 2);
```

Повинен бути елемент `figure` безпосередньо над кінцевим тегом другого елемента `section`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

Останній елемент `img` має бути вкладений у елемент `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Ваш елемент `figure` має мати початковий тег. Початкові теги мають такий синтаксис: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

Ваш елемент `figure` має мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.lengthOf(code.match(/<\/figure\>/g), 2);
```

Елемент `figcaption` має бути вкладений у елемент `figure`.

```js
assert.lengthOf(document.querySelectorAll('figure > figcaption'), 2);
```

Елемент `figcaption`, вкладений у елемент `figure`, має бути нижче за елемент `img`. Ви помилилися в порядку елементів `img` та `figcaption`.

```js
assert.equal(
  document.querySelectorAll('figcaption')[1]?.previousElementSibling.nodeName,
    'IMG'
);
```

Елемент `figcaption` має містити текст `Cats hate other cats.`. Ви пропустили слово або зробили помилку.

```js
assert.match(
  document
    .querySelectorAll('figcaption')[1]
    ?.innerText?.trim().replace(/\s+/g, ' ').toLowerCase(),
    /^Cats hate other cats\.?$/i
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
        <figure>
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch.">
--fcc-editable-region--
          
--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
