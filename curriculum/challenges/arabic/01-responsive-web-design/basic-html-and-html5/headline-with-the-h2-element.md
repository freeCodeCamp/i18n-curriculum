---
id: bad87fee1348bd9aedf0887a
title: إضافة عنوان باستعمال عنصر ال(h2) (Headline with the h2 Element)
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

Over the next few lessons, we'll build an HTML5 cat photo web app piece-by-piece.

في هذه الخطوة سوف تضيف عنوانا من المستوى الثاني إلى صفحة الويب باستعمال العنصر `h2`.

هذا العنصر يعطي المتصفح معلومات عن بنية الموقع. في غالب الأحيان، العنصر `h1` يستخدم للعناوين الرئيسية، في حين يستخدم العنصر `h2` للعناوين الفرعية. كما أن هناك عناصر أخرى `h3`و `h4`و `h5` و `h6` التي تدل على مستويات مختلفة من العناوين الفرعية.

# --instructions--

أضف علامة ال`h2` محتوية على النص "CatPhotoApp" لإنشاء عنصر HTML آخر تحت العنصر `h1` ذو المحتوى "Hello World".

# --hints--

يجب إنشاء عنصر `h2`.

```js
assert($('h2').length > 0);
```

يجب أن يحتوي العنصر `h2` على Closing Tag.

```js
assert(
  code.match(/<\/h2>/g) &&
    code.match(/<\/h2>/g).length === code.match(/<h2>/g).length
);
```

يجب أن يحتوي العنصر `h2` على النص `CatPhotoApp`.

```js
assert.isTrue(/cat(\s)?photo(\s)?app/gi.test($('h2').text()));
```

يجب أن يحتوي العنصر `h1` على النص `Hello World`.

```js
assert.isTrue(/hello(\s)+world/gi.test($('h1').text()));
```

يجب أن يكون العنصر `h1` قبل العنصر `h2` في الترتيب.

```js
assert(code.match(/<h1>\s*?.*?\s*?<\/h1>\s*<h2>\s*?.*?\s*?<\/h2>/gi));
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```
