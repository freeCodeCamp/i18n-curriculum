---
id: bad87fee1348bd9aedf08828
title: إنشاء قائمة مرتبة
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cQ3B8TM'
forumTopicId: 16824
dashedName: create-an-ordered-list
---

# --description--

HTML has another special element for creating <dfn>ordered lists</dfn>, or numbered lists.

القوائم المرتبة تبدأ بعنصر فتح `<ol>`، مُتبعة بأي عدد من عناصر `<li>`. أخيراً، القوائم المرتبة تُغلق بعلامة `</ol>`.

على سبيل المثال:

```html
<ol>
  <li>Garfield</li>
  <li>Sylvester</li>
</ol>
```

سينشئ قائمة مرقمة من `Garfield` و `Sylvester`.

# --instructions--

قم بإنشاء قائمة مرتبة بأكثر 3 أشياء تكرهها القطط.

# --hints--

يجب أن يكون لديك قائمة مرتبة لـ `أكثر الأمور المكروهة عند القطط:`

```js
assert(/Top 3 things cats hate:/i.test($('ol').prev().text()));
```

يجب أن يكون لديك قائمة غير مرتبة لـ الأمور المحببة للقطط `Things cats love:`

```js
assert(/Things cats love:/i.test($('ul').prev().text()));
```

يجب أن يكون لديك عنصر `ul` واحد فقط.

```js
assert.equal($('ul').length, 1);
```

يجب أن يكون لديك عنصر `ol` واحد فقط.

```js
assert.equal($('ol').length, 1);
```

يجب أن يكون لديك ثلاث عناصر `li` داخل عنصر `ul`.

```js
assert.equal($('ul li').length, 3);
```

يجب أن يكون لديك ثلاث عناصر `li` ضمن عنصر `ol`.

```js
assert.equal($('ol li').length, 3);
```

يجب أن يحتوى عنصر `ul` على علامة إغلاق.

```js
assert(
  code.match(/<\/ul>/g) &&
    code.match(/<\/ul>/g).length === code.match(/<ul>/g).length
);
```

يجب أن يحتوى عنصر `ol` على علامة إغلاق.

```js
assert(
  code.match(/<\/ol>/g) &&
    code.match(/<\/ol>/g).length === code.match(/<ol>/g).length
);
```

يجب أن يحتوى عنصر `li` على علامة إغلاق.

```js
assert(
  code.match(/<\/li>/g) &&
    code.match(/<li>/g) &&
    code.match(/<\/li>/g).length === code.match(/<li>/g).length
);
```

عناصر `li` في قائمتك الغير مرتبة يجب ألّا تكون فارغة.

```js
$('ul li').each((i, val) =>
  assert(__helpers.removeWhiteSpace(val.textContent))
);
```

عناصر `li` في قائمتك المرتبة يجب ألّا تكون فارغة.

```js
$('ol li').each((i, val) =>
  assert(!!__helpers.removeWhiteSpace(val.textContent))
);
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
    <li>hate 1</li>
    <li>hate 2</li>
    <li>hate 3</li>
  </ol>
</main>
```
