---
id: 5dfa371beacea3f48c6300af
title: الخطوة 21
challengeType: 0
dashedName: step-21
---

# --description--

عندما تضيف عنصر عنوان من مرتبة أدنى إلى الصفحة، فهذا يعني أنك تبدأ قسمًا فرعيًا جديدًا.

بعد آخر عنصر `h2` في العنصر الثاني `section`، أضف عنصر `h3` بالنص التالي:

`Things cats love:`

# --hints--

يبدو أن العنصر الثاني `section` مفقود أو لا يحتوي على وسم افتتاحي ووسم إغلاق معًا.

```js
assert.exists(document.querySelectorAll('main > section')[1]);
assert.lengthOf(code.match(/\<\/section>/g), 2);
```

يجب أن يكون هناك عنصر `h3` مباشرة فوق وسم الإغلاق للعنصر الثاني `section`.

```js
assert.equal(
  document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName,
    'H3'
);
```

يجب أن يحتوي عنصر `h3` على وسم إغلاق. وسم الإغلاق يحتوي على `/` مباشرة بعد الحرف `<`.

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

يجب أن يحتوي عنصر `h3` الموجود مباشرة فوق وسم الإغلاق للعنصر الثاني `section` على النص `Things cats love:`. تأكد من تضمين النقطتين في نهاية النص.

```js
assert.equal(
  document
    .querySelectorAll('main > section')[1]
    ?.lastElementChild.innerText?.trim().toLowerCase()
    .replace(/\s+/g, ' '), 'things cats love:'
);
```

يجب أن يكون هناك عنصر `h2` يحتوي على النص `Cat Lists` فوق آخر عنصر `h3` مسكن في آخر عنصر `section`. قد تكون حذفت عنصر `h2` عن طريق الخطأ.

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
