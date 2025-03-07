---
id: 5efae0543cbd2bbdab94e333
title: Крок 32
challengeType: 0
dashedName: step-32
---

# --description--

Щоб покращити доступність доданого зображення, додайте атрибут `alt` з таким текстом:

`Five cats looking around a field.`

# --hints--

Елемент `figure` повинен мати початковий тег. Початкові теги мають такий синтаксис: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

Елемент `figure` повинен мати кінцевий тег. Кінцеві теги мають `/` одразу після символу `<`.

```js
assert.lengthOf(code.match(/<\/figure>/g), 2);
```

Одразу над кінцевим тегом останнього елемента `section` має бути елемент `figure`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

Елемент `img` «cats» має бути вкладеним в елементі `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

Елемент `img` «cats» повинен мати атрибут `alt` зі значенням `Five cats looking around a field.`

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.match(
  catsImg
    ?.getAttribute('alt')
    ?.replace(/\s+/g, ' '),
    /^Five cats looking around a field\.?$/i
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
--fcc-editable-region--
          <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg">
--fcc-editable-region--
        </figure>
      </section>
    </main>
  </body>
</html>
```
