---
id: 587d7790367417b2b2512aaf
title: جعل الروابط قابلة للتنقل باستخدام مفاتيح الوصول HTML
challengeType: 0
videoUrl: 'https://scrimba.com/c/cQvmaTp'
forumTopicId: 301021
dashedName: make-links-navigable-with-html-access-keys
---

# --description--

HTML offers the `accesskey` attribute to specify a shortcut key to activate or bring focus to an element. Adding an `accesskey` attribute can make navigation more efficient for keyboard-only users.

HTML5 يسمح باستخدام هذه السمة على أي عنصر، لكنه مفيد بشكل خاص عندما تستخدم مع العناصر التفاعلية. ويشمل ذلك الروابط والأزرار والتحكم في الاستمارة.

إليك مثال:

```html
<button accesskey="b">Important Button</button>
```

# --instructions--

يريد Camper Cat أن يكون للرابطان حول عنوان مقالات المدونة اختصارات لوحة المفاتيح (keyboard shortcuts) حتى يتمكن مستخدمو موقعه من الانتقال بسرعة إلى القصة الكاملة. إضافة خاصية `accesskey` إلى كلا الرابطين وتعيين الأول إلى `g` (لغارفيلد) والثاني إلى `c` (لنورس تشوك).

# --hints--

يجب أن تضيف تعليماتك البرمجية `accesskey` إلى `a` مع معرف `id` `first`.

```js
assert.isTrue(document.querySelector('#first')?.hasAttribute('accesskey'));
```

يجب أن تضيف تعليماتك البرمجية `accesskey` إلى `a` مع معرف `id` `second`.

```js
assert.isTrue(document.querySelector('#second')?.hasAttribute('accesskey'));
```

يجب أن تضيف تعليماتك البرمجية `accesskey` إلى `a` مع معرف `id` `first` إلي `g`. لاحظ أن هذه القضية مهمة.

```js
assert.equal(document.querySelector('#first')?.getAttribute('accesskey'), 'g');
```

يجب أن تضيف تعليماتك البرمجية `accesskey` إلى `a` مع معرف `id` `second` إلي `c`. لاحظ أن هذه القضية مهمة.

```js
assert.equal(document.querySelector('#second')?.getAttribute('accesskey'), 'c');
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>


    <h2><a id="first" href="#">The Garfield Files: Lasagna as Training Fuel?</a></h2>


    <p>The internet is littered with varying opinions on nutritional paradigms, from catnip paleo to hairball cleanses. But let's turn our attention to an often overlooked fitness fuel, and examine the protein-carb-NOM trifecta that is lasagna...</p>
  </article>
  <article>


    <h2><a id="second" href="#">Is Chuck Norris a Cat Person?</a></h2>


    <p>Chuck Norris is widely regarded as the premier martial artist on the planet, and it's a complete coincidence that anyone who disagrees with this fact mysteriously disappears soon after. But the real question is, is he a cat person?...</p>
  </article>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>


    <h2><a id="first" accesskey="g" href="#">The Garfield Files: Lasagna as Training Fuel?</a></h2>


    <p>The internet is littered with varying opinions on nutritional paradigms, from catnip paleo to hairball cleanses. But let's turn our attention to an often overlooked fitness fuel, and examine the protein-carb-NOM trifecta that is lasagna...</p>
  </article>
  <article>


    <h2><a id="second" accesskey="c" href="#">Is Chuck Norris a Cat Person?</a></h2>


    <p>Chuck Norris is widely regarded as the premier martial artist on the planet, and it's a complete coincidence that anyone who disagrees with this fact mysteriously disappears soon after. But the real question is, is he a cat person?...</p>
  </article>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```
