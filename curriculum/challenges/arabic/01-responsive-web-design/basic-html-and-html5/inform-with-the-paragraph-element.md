---
id: bad87fee1348bd9aedf08801
title: أخبر باستخدام عنضر الفقرة (Inform with the Paragraph Element)
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/ceZ7DtN'
forumTopicId: 18202
dashedName: inform-with-the-paragraph-element
---

# --description--

The `p` element is the preferred element for paragraph text on websites. `p` is short for "paragraph".

يمكنك إنشاء عنصر فقرة هكذا:

```html
<p>I'm a p tag!</p>
```

# --instructions--

قم بإنشاء عنصر `p` تحت عنصر `h2` الخاص بك وقم بإعطائه النص `Hello Paragraph`.

**ملاحظة:** كتقليد، يتم كتابة جميع الHTML Tags في Lower Case (أحرف صغيرة)، على سبيل المثال `<p></p>` وليس `<P></P>`.

# --hints--

الCode الخاص بك يجب أن يحتوي على العنصر `p`.

```js
assert($('p').length > 0);
```

يجب أن يحتوي العنصر `p` الخاص بك على النص `Hello Paragraph`.

```js
assert.isTrue(/hello(\s)+paragraph/gi.test($('p').text()));
```

العنصر `p` الخاص بك يجب أن يكون له Closing Tag.

```js
assert(
  code.match(/<\/p>/g) &&
    code.match(/<\/p>/g).length === code.match(/<p/g).length
);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
<p>Hello Paragraph</p>
```
