---
id: bad87fee1348bd9aedf08830
title: إضافة نص توضيحي إلى حقل نصي
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cKdJDhg'
forumTopicId: 16647
dashedName: add-placeholder-text-to-a-text-field
---

# --description--

Placeholder text is what is displayed in your `input` element before your user has inputted anything.

يمكنك إنشاء نص توضيحي مثل هذا:

```html
<input type="text" placeholder="this is placeholder text">
```

**ملاحظة:** تذكر أن عناصر `input` مغلقة ذاتيا.

# --instructions--

عين قيمة `placeholder` للحقل النصي `input` إلى "cat photo URL".

# --hints--

يجب إضافة الصفة `placeholder` إلى عنصر `input` النصي الموجود.

```js
assert($('input[placeholder]').length > 0);
```

يجب عليك تعيين قيمةالصفة `placeholder` إلى `cat photo URL`.

```js
assert(
  $('input') &&
    $('input').attr('placeholder') &&
    $('input')
      .attr('placeholder')
      .match(/cat\s+photo\s+URL/gi)
);
```

لا يجب أن ينتهي عنصر `input` -المكتمل- بعلامة إغلاق.

```js
assert(!code.match(/<input.*\/?>.*<\/input>/gi));
```

بناء عنصر `input` -المكتمل- يجب أن يكون صحيح.

```js
assert($('input[type=text]').length > 0);
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <input type="text">
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Things cats love:</p>
  <ul>
    <li>catnip</li>
    <li>laser pointers</li>
    <li>lasagna</li>
  </ul>
  <p>Top 3 things cats hate:</p>
  <ol>
    <li>flea treatment</li>
    <li>thunder</li>
    <li>other cats</li>
  </ol>
  <input type="text" placeholder="cat photo URL">
</main>
```
