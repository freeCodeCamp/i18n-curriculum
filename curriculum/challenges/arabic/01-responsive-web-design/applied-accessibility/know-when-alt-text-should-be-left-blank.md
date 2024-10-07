---
id: 587d774c367417b2b2512a9d
title: معرفة متى يجب أن يكون نص Alt نتركه فارغا
challengeType: 0
videoUrl: 'https://scrimba.com/c/cM9P4t2'
forumTopicId: 301019
dashedName: know-when-alt-text-should-be-left-blank
---

# --description--

In the last challenge, you learned that including an `alt` attribute when using `img` tags is mandatory. However, sometimes images are grouped with a caption already describing them, or are used for decoration only. In these cases, `alt` text may seem redundant or unnecessary.

في هذه الحالة، عندما تكون الصورة مرفق معاها نص او `alt` لا يضيف معنى للصفحة، الـ `img` لا تزال تحتاج إلى خاصية `alt`، ولكن نجعلها نص فارغ. وهذا مثال على ذلك:

```html
<img src="visualDecoration.jpeg" alt="">
```

كذلك صور الخلفية عادةً ما تصنف على أنها صور للتزيين فقط. لكن، من المعتاد وضعها من خلال اكواد CSS، ولذلك لا تصبح جزءاً من الmarkup الذي تراه الscreen readers.

**ملاحظة:** في حالة الصورة التي ترفق بنص لشرحها، يمكن ان تضيف نص `alt` لانه يساعد محركات البحث لكي تصنف محتوى الصورة.

# --instructions--

قام Camper Cat ببرمجة هيكل الصفحة لمدونة موقعه. وهو يخطط لاضافة فاصل بين مقاليه من خلال صورة لسيف ساموراي. أضف خاصية `alt` إلى tag الـ `img` واجعله نص فارغ. ( لاحظ أن مصدر الصورة `src` لا يرتبط بملف حقيقي - لذا لا تقلق بسب عدم ظهور سيوف في الصفحة)

# --hints--

يجب أن يحتوي وسم `img` الخاص بك علي خاصية `alt`.

```js
assert.isTrue(document.querySelector('img')?.hasAttribute('alt'));
```

الوسم `alt` يجب ان يكون علي شكل string فارغ.

```js
assert.isEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<h1>Deep Thoughts with Master Camper Cat</h1>
<article>
  <h2>Defeating your Foe: the Red Dot is Ours!</h2>
  <p>To Come...</p>
</article>

<img src="samuraiSwords.jpeg">

<article>
  <h2>Is Chuck Norris a Cat Person?</h2>
  <p>To Come...</p>
</article>
```

# --solutions--

```html
<h1>Deep Thoughts with Master Camper Cat</h1>
<article>
  <h2>Defeating your Foe: the Red Dot is Ours!</h2>
  <p>To Come...</p>
</article>

<img src="samuraiSwords.jpeg" alt="">

<article>
  <h2>Is Chuck Norris a Cat Person?</h2>
  <p>To Come...</p>
</article>
```
