---
id: bad87fee1348bd9aedf08827
title: إنشاء قائمة غير مرتبة ذات تعداد نقطي
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cDKVPuv'
forumTopicId: 16814
dashedName: create-a-bulleted-unordered-list
---

# --description--

HTML has a special element for creating <dfn>unordered lists</dfn>, or bullet point style lists.

تبدأ القوائم غير المرتبة بعنصر فتح `<ul>` متبوعًا بأي عدد من عناصر `<li>`. أخيرًا ، تُغلق القوائم غير المرتبة بـ `</ul>`.

على سبيل المثال:

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

ستنشئ قائمة بنمط نقطي من `milk` و `cheese`.

# --instructions--

قم بإزالة آخر عنصرين من نوع `p` وأنشئ قائمة غير مرتبة من ثلاثة أشياء تحبها القطط في أسفل الصفحة.

# --hints--

قم بإنشاء عنصر `ul`.

```js
assert($('ul').length > 0);
```

يجب أن يكون لديك ثلاثة عناصر `li` داخل عنصر `ul`.

```js
assert($('ul li').length > 2);
```

يجب أن يحتوي العنصر `ul` على علامة إغلاق.

```js
assert(
  code.match(/<\/ul>/gi) &&
    code.match(/<ul/gi) &&
    code.match(/<\/ul>/gi).length === code.match(/<ul/gi).length
);
```

يجب أن تحتوي عناصر `li` على علامات إغلاق.

```js
assert(
  code.match(/<\/li>/gi) &&
    code.match(/<li[\s>]/gi) &&
    code.match(/<\/li>/gi).length === code.match(/<li[\s>]/gi).length
);
```

يجب ألا تحتوي عناصر `li` على نص فارغ أو مسافة بيضاء فقط.

```js
assert($('ul li').filter((_, item) => !$(item).text().trim()).length === 0);
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <ul>
    <li>milk</li>
    <li>mice</li>
    <li>catnip</li>
  </ul>
</main>
```
