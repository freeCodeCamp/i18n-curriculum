---
id: 5efae16e3cbd2bbdab94e334
title: الخطوة 33
challengeType: 0
dashedName: step-33
---

# --description--

بعد آخر عنصر `img`، أضف عنصر `figcaption` مع النص `Cats hate other cats.`

# --hints--

يجب أن يحتوي عنصر `figcaption` على وسم بداية. وسم البداية له الصيغة النحوية التالية: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figcaption'), 2);
```

يجب أن يحتوي عنصر `figcaption` على وسم إغلاق. وسم الإغلاق يحتوي على `/` مباشرة بعد حرف `<`.

```js
assert.lengthOf(code.match(/<\/figcaption\>/g), 2);
```

يجب أن يكون هناك عنصر `figure` مباشرة فوق وسم الإغلاق للعنصر الثاني `section`.

```js
assert.equal(document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName, 'FIGURE');
```

يجب أن يكون آخر عنصر `img` مسكنًا داخل عنصر `figure`.

```js
const catsImg = document.querySelectorAll('figure > img')[1];
assert.equal(
    catsImg?.getAttribute('src')?.toLowerCase(), 'https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg'
);
```

يجب أن يحتوي عنصر `figure` على وسم بداية. وسم البداية له الصيغة النحوية التالية: `<elementName>`.

```js
assert.lengthOf(document.querySelectorAll('figure'), 2);
```

يجب أن يحتوي عنصر `figure` على وسم إغلاق. وسم الإغلاق يحتوي على `/` مباشرة بعد حرف `<`.

```js
assert.lengthOf(code.match(/<\/figure\>/g), 2);
```

يجب أن يكون عنصر `figcaption` مسكنًا داخل عنصر `figure`.

```js
assert.lengthOf(document.querySelectorAll('figure > figcaption'), 2);
```

يجب أن يكون عنصر `figcaption` المسكن داخل عنصر `figure` أسفل عنصر `img`. ترتيب عنصر `img` و`figcaption` خاطئ لديك.

```js
assert.equal(
  document.querySelectorAll('figcaption')[1]?.previousElementSibling.nodeName,
    'IMG'
);
```

يجب أن يحتوي عنصر `figcaption` على النص `Cats hate other cats.` لقد حذفت كلمة أو هناك خطأ مطبعي.

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
