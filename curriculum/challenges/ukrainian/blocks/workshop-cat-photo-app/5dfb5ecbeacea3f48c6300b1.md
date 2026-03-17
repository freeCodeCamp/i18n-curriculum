---
id: 5dfb5ecbeacea3f48c6300b1
title: Крок 23
challengeType: 0
dashedName: step-23
---

# --description--

Елемент `li` використовується для створення елемента списку у впорядкованому або невпорядкованому списку.

Ось приклад елементів списку у невпорядкованому списку:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

Всередині елемента `ul` вкладіть три елементи списку, щоб показати три речі, які люблять коти:

`catnip`

`laser pointers`

`lasagna` 

# --hints--

У вас має бути три елементи `li`. Кожен елемент `li` повинен мати власний відкриваючий і кінцевий тег.

```js
assert.lengthOf(document.querySelectorAll('li'), 3);
assert.lengthOf(code.match(/<\/li\>/g), 3);
```

У вас має бути три елементи `li` з текстом `catnip`, `laser pointers` і `lasagna` у будь-якому порядку. Ви або пропустили якийсь текст, або зробили помилку.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText?.trim().replace(/\s+/g, ' ').toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

Три елементи `li` мають знаходитися між відкриваючим і кінцевим тегами елемента `ul`.

```js
assert.lengthOf(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ), 3
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
--fcc-editable-region--
          
--fcc-editable-region--
        </ul>
      </section>
    </main>
  </body>
</html>
```
