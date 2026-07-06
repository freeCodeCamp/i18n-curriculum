---
id: 5dfa30b9eacea3f48c6300ad
title: الخطوة 17
challengeType: 0
dashedName: step-17
---

# --description--

في الخطوات السابقة استخدمت عنصر وسم الرابط لتحويل النص إلى رابط. يمكن أيضًا تحويل أنواع أخرى من المحتوى إلى رابط عن طريق تغليفه بوسوم وسم الرابط.

إليك مثالًا على تحويل صورة إلى رابط:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

حوّل الصورة إلى رابط بتغليفها بالوسوم اللازمة للعنصر. استخدم `https://freecatphotoapp.com` كقيمة الخاصية `href` لوسم الرابط.

# --hints--

يجب أن يكون لديك عنصر `img` بقيمة `src` تساوي `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. ربما حذفته عن طريق الخطأ.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

يجب أن يحتوي عنصر وسم الرابط (`a`) على وسم بداية. وسم البداية له هذه الصيغة النحوية: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

تفتقد وسم الإغلاق (`a`) بعد الصورة.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

يجب أن يحتوي عنصر وسم الرابط (`a`) على وسم إغلاق. وسم الإغلاق يحتوي على `/` مباشرة بعد حرف `<`.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

يجب إضافة وسم إغلاق واحد فقط لوسم الرابط (`a`). يرجى حذف أي أوسمة إضافية.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

عنصر وسم الرابط (`a`) لا يحتوي على خاصية `href`. تحقق من وجود مسافة بعد اسم وسم البداية و/أو وجود مسافات قبل أسماء جميع الخصائص.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

يجب أن يربط عنصر وسم الرابط (`a`) بـ `https://freecatphotoapp.com`. إما أنك حذفت عنوان URL أو هناك خطأ مطبعي.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

عنصر وسم الرابط (`a`) لا يحتوي على خاصية `href`. تحقق من وجود مسافة بعد اسم وسم البداية و/أو وجود مسافات قبل أسماء جميع الخصائص.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

يجب أن يربط عنصر وسم الرابط (`a`) بـ `https://freecatphotoapp.com`. إما أنك حذفت عنوان URL أو هناك خطأ مطبعي.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

يجب أن يكون عنصر `img` مسكنًا داخل عنصر وسم الرابط (`a`). يجب أن يكون كامل عنصر `img` داخل وسم البداية ووسم الإغلاق لوسم الرابط (`a`).

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```

