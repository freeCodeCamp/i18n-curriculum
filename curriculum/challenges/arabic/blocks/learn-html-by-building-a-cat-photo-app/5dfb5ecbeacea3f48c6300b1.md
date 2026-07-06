---
id: 5dfb5ecbeacea3f48c6300b1
title: الخطوة 23
challengeType: 0
dashedName: step-23
---

# --description--

يُستخدم العنصر `li` لإنشاء عنصر قائمة في قائمة مرتبة أو قائمة غير مرتبة.

إليك مثالًا على عناصر قائمة في قائمة غير مرتبة:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

داخل العنصر `ul`، قم بتسكين ثلاثة عناصر قائمة لعرض ثلاثة أشياء تحبها القطط:

`catnip`

`laser pointers`

`lasagna` 

# --hints--

يجب أن يكون لديك ثلاثة عناصر `li`. يجب أن يحتوي كل عنصر `li` على وسم افتتاح ووسم إغلاق خاص به.

```js
assert.lengthOf(document.querySelectorAll('li'),3)
assert.lengthOf(code.match(/<\/li\>/g),3);
```

يجب أن يكون لديك ثلاثة عناصر `li` تحتوي على النصوص `catnip` و`laser pointers` و`lasagna` بأي ترتيب. إما أنك حذفت بعض النصوص أو يوجد خطأ مطبعي.

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText.toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

يجب أن تقع عناصر `li` الثلاثة بين وسم الافتتاح ووسم الإغلاق للعنصر `ul`.

```js
assert(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ).length === 3
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
--fcc-editable-region--
        <ul>
          
        </ul>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```

