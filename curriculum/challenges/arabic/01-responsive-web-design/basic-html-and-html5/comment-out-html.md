---
id: bad87fee1348bd9aedf08804
title: التعليق على HTML (Comment out HTML)
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cGyGbca'
forumTopicId: 16782
dashedName: comment-out-html
---

# --description--

Remember that in order to start a comment, you need to use `<!--` and to end a comment, you need to use `-->`

هنا ستحتاج إلى إنهاء التعليق قبل أن يبدأ عنصر `h2` الخاص بك.

# --instructions--

قم بالتعليق على عنصر `h1` وعنصر `p` الخاص بك، ولكن ليس عنصر `h2` الخاص بك.

# --hints--

يجب تحويل العنصر `h1` الخاص بك إلى تعليق حتى لا يكون مرئيًا على الصفحة.

```js
assert($('h1').length === 0);
```

لا تحول العنصر `h2` إلى تعليق حتى يكون مرئيا على الصفحة.

```js
assert($('h2').length > 0);
```

يجب تحويل العنصر `p` الخاص بك إلى تعليق حتى لا يكون مرئيًا على الصفحة.

```js
assert($('p').length === 0);
```

كل من تعليقاتك يجب أن تكون مغلقة باستخدام `-->`.

```js
assert(code.match(/[^fc]-->/g).length > 1);
```

يجب ألا تغير ترتيب عناصر الـ `h1` و `h2` و `p` في الكود.

```js
assert(
  code.match(/<([a-z0-9]){1,2}>/g)[0] === '<h1>' &&
    code.match(/<([a-z0-9]){1,2}>/g)[1] === '<h2>' &&
    code.match(/<([a-z0-9]){1,2}>/g)[2] === '<p>'
);
```

# --seed--

## --seed-contents--

```html
<!--
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
-->
```

# --solutions--

```html
<!--<h1>Hello World</h1>-->
<h2>CatPhotoApp</h2> 
<!--<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p> -->
```
