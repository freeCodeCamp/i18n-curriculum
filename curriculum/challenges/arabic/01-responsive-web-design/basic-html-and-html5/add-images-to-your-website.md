---
id: bad87fee1348bd9aedf08812
title: إضافة صور إلى موقعك
challengeType: 0
forumTopicId: 16640
dashedName: add-images-to-your-website
---

# --description--

You can add images to your website by using the `img` element, and point to a specific image's URL using the `src` attribute.

ومثال على ذلك:

```html
<img src="https://www.freecatphotoapp.com/your-image.jpg">
```

لاحظ أن عناصر `img` مغلقة ذاتيا.

جميع العناصر `img` **يجب أن ** تحتوي على الصفة `alt`. يتم استخدام النص داخل الصفة `alt` لقارئ الشاشة لتحسين ال accessibility ويتم عرضه إذا فشلت الصورة في التحميل.

**ملاحظة:** اذا كانت الصورة للتزيين فقط ، يُفضل ترك الصفة `alt` فارغة.

يُفضل ألا تحتوي الصفة `alt` على رموز خاصة إلا إذا لزم الأمر.

خلينا نضيف الصفة `alt` للعنصر `img` في المثال السابق:

```html
<img src="https://www.freecatphotoapp.com/your-image.jpg" alt="freeCodeCamp logo">
```

# --instructions--

خلينا نجرب نضيف صورة لموقعنا:

داخل العنصر `main` نضيف العنصر `img` قبل العناصر `p` الموجودة.

والآن نضع الصفة `src` بحيث تشير للرابط `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`

وأخيراً، لا تنسى إعطاء العنصر `img` خاصية `alt` تحتوي على نص مناسب.

# --hints--

صفحتك يجب أن تحتوي على عنصر الصورة.

```js
assert($('img').length);
```

الصورة يجب ان تحتوي على الصفة `src` التي تشير إلى رابط صورة القطة.

```js
assert(/^https:\/\/cdn\.freecodecamp\.org\/curriculum\/cat-photo-app\/relaxing-cat\.jpg$/i.test($('img').attr('src')));
```

يجب ألا تكون صفة الصورة `alt` فارغة.

```js
assert(
  $('img').attr('alt') &&
    $('img').attr('alt').length &&
    /<(?:img|IMG)\S*alt=(['"])(?!\1|>)\S+\1\S*\/?>/.test(
      __helpers.removeWhiteSpace(code)
    )
);
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>


  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
