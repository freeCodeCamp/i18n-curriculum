---
id: 587d78b1367417b2b2512b09
title: صنع الصوره لها استجابه لشاشات
challengeType: 0
forumTopicId: 301140
dashedName: make-an-image-responsive
---

# --description--

Making images responsive with CSS is actually very simple. You just need to add these properties to an image:

```css
img {
  max-width: 100%;
  height: auto;
}
```

ال `max-width`(العرض الأقصى) من `100%` يؤكد من أن الصورة ليست أوسع من الحاوية الموجودة فيها، والارتفاع `height` من `auto` سيجعل الصورة تحافظ على نسبة الجانب الأصلي لها.

# --instructions--

أضف قواعد النمط إلى صف `responsive-img` لجعله مستجيبا. لا ينبغي أن تكون أوسع من حاويتها (في هذه الحالة، هي نافذة المعاينة) وينبغي أن تحتفظ بنسبة الجانب الأصلي. بعد إضافة الكود البرمجي الخاص بك، قم بتغيير حجم المعاينة لترى كيف تتصرف صورك.

# --hints--

يجب أن يكون أقصى عرض محدد `max-width` للكلاس الخاص بك `responsive-img` هو `100%`.

```js
assert(getComputedStyle($('.responsive-img')[0]).maxWidth === '100%');
```

`responsive-img` كلاس يجب ان يحتفظ ب`height`تبقي `auto<code/>.</p>

<pre><code class="js">assert(code.match(/height:\s*?auto;/g));
`</pre>

# --seed--

## --seed-contents--

```html
<style>
.responsive-img {


}

img {
  width: 600px;
}
</style>

<img class="responsive-img" src="https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickerPack.jpg" alt="freeCodeCamp stickers set">
<img src="https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickerPack.jpg" alt="freeCodeCamp stickers set">
```

# --solutions--

```html
<style>
.responsive-img {
  max-width: 100%;
  height: auto;
}

img {
  width: 600px;
}
</style>

<img class="responsive-img" src="https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickerPack.jpg" alt="freeCodeCamp stickers set">
<img src="https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickerPack.jpg" alt="freeCodeCamp stickers set">
```
