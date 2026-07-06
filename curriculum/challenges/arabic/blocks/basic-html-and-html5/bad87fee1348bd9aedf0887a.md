---
id: bad87fee1348bd9aedf0887a
title: عنوان باستخدام عنصر h2
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

في الدروس القليلة القادمة، سنبني تطبيق ويب لصور القطط باستخدام HTML5 خطوة بخطوة.

العنصر `h2` الذي ستضيفه في هذه الخطوة سيُضيف عنوانًا من المستوى الثاني إلى صفحة الويب.

هذا العنصر يُخبر المتصفح ببنية موقعك. تُستخدم عناصر `h1` غالبًا للعناوين الرئيسية، بينما تُستخدم عناصر `h2` عادةً للعناوين الفرعية. هناك أيضًا عناصر `h3` و`h4` و`h5` و`h6` للدلالة على مستويات مختلفة من العناوين الفرعية.

# --instructions--

أضف وسم `h2` يحتوي على النص "CatPhotoApp" لإنشاء عنصر HTML ثاني تحت عنصر `h1` الخاص بك الذي يحتوي على "Hello World".

# --hints--

يجب أن تنشئ عنصر `h2`.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

يجب أن يحتوي عنصر `h2` على وسم إغلاق.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

يجب أن يحتوي عنصر `h2` على النص `CatPhotoApp`.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

يجب أن يحتوي عنصر `h1` على النص `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

يجب أن يكون عنصر `h1` قبل عنصر `h2`.

```js
assert.match(code,/<h1>\s*?.*?\s*?<\/h1>\s*<h2>\s*?.*?\s*?<\/h2>/gi);
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
