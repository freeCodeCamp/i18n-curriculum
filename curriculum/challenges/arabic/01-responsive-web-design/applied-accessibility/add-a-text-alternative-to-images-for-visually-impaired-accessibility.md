---
id: 587d774c367417b2b2512a9c
title: إضافة بديل نصي للصور لضعاف البصر
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp7VfD'
forumTopicId: 16628
dashedName: add-a-text-alternative-to-images-for-visually-impaired-accessibility
---

# --description--

You've likely seen an `alt` attribute on an `img` tag in other challenges. `alt` text describes the image's content and provides a text-alternative for it. An `alt` attribute helps in cases where the image fails to load or can't be seen by a user. Search engines also use it to understand what an image contains to include it in search results. إليك مثال:

```html
<img src="importantLogo.jpeg" alt="Company logo">
```

يعتمد الأشخاص الذين يعانون من إعاقات بصرية على برامج قراءة الشاشة لتحويل محتوى الويب إلى واجهة صوتية. لن يمكنهم الحصول على المعلومات المقدمة فقط بشكل بصري. في حالة الصور، يعتمد قارئ الشاشة على الوصول لخاصية `alt` وقراءة محتوياتها لإيصال المعلومات الرئيسية.

من خواص نص `alt` الجيد أنه يقدم شرحا مختصرا لمحتوى الصورة. يجب عليك دائما إضافة خاصية `alt` للصور التي تستخدمها. فبحسب مواصفات HTML5، تعد إضافة نص بديل للصور أمرا إلزاميا.

# --instructions--

Camper Cat هو نينجا في البرمجة وهو أيضا نينجا حقيقي، يقوم ببناء صفحة ويب لمشاركة معرفتة. الصورة الشخصية التي يريد استخدامها تظهر مهاراته ويجب أن تحظي بتقدير جميع زوار الموقع. أضف خاصية (attribute) `alt` في الوسم (tag) `img` لتظهر أن Camper Cat يجيد لعبة الكاراتية. (خاصية الصورة `src` لا ترتبط بملف فعلي، لذا يجب أن ترى نص `alt` في العرض.)

# --hints--

يجب أن يحتوي وسم `img` الخاص بك علي خاصية `alt` ويجب ألا يكون فارغا.

```js
assert.isNotEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<img src="doingKarateWow.jpeg">
```

# --solutions--

```html
<img src="doingKarateWow.jpeg" alt="Someone doing karate">
```
