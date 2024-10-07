---
id: bad87fee1348bd9aecf08801
title: 'مقدمة إلى عناصر HTML5. (العنوان الأصلي: Introduction to HTML5 Elements)'
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cBkZGpt7'
forumTopicId: 301097
dashedName: introduction-to-html5-elements
---

# --description--

HTML5 introduces more descriptive HTML tags. These include `main`, `header`, `footer`, `nav`, `video`, `article`, `section` and others.

هذه العناصر تجعل ال HTML الخاص بك أسهل للقراءة وتساعده في تحسين محرك البحث (SEO) وإمكانية الوصول (accessibility). وسم (tag) ال HTML5 ال `main` يساعد محركات البحث والمطورين الآخرين على العثور على المحتوى الرئيسي لصفحتك.

مثال على الاستخدام، عنصر `main` مع عنصرين فرعيين متداخلين فيه:

```html
<main> 
  <h1>Hello World</h1>
  <p>Hello Paragraph</p>
</main>
```

**ملاحظة:** العديد من وسوم HTML5 الجديدة وفوائدها مشمولة في قسم إمكانية الوصول التطبيقي.

# --instructions--

أنشأ عنصر `p` ثانٍ بنص ال kitty ipusm التالي  `Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.` ( نص ال Ipusm هو طريقة لكتابة النصوص في النشر والتصميم و البرمجة بشكل شائع لتوضيح الشكل المرئي للمستند أو الخط دون الاعتماد على محتوى ذي معنى)

ثم أنشأ عنصر `main` و ضع فقط عنصري ال `p` داخل عنصر ال `main`.

# --hints--

يجب أن يكون لديك 2 من عناصر ال `p` يحتويان على نص ال Kitty Ipsum.

```js
assert($('p').length > 1);
```

كل عنصر من عناصر ال `p` الخاص بك يجب أن يحتوي على وسم إغلاق (closing tag).

```js
assert(
  code.match(/<\/p>/g) &&
    code.match(/<\/p>/g).length === code.match(/<p/g).length
);
```

يجب أن يحتوي عنصر ال `p` الخاص بك على الكلمات الأولى القليلة من نص ال `kitty ipsum` الإضافي المقدَّم.

```js
assert.isTrue(/Purr\s+jump\s+eat/gi.test($('p').text()));
```

الكود الخاص بك يجب أن يحتوي على عنصر `main` واحد.

```js
assert($('main').length === 1);
```

عنصر ال `main` يجب أن يحتوي على عنصري paragraph كعناصر فرعية ( children elements).

```js
assert($('main').children('p').length === 2);
```

وسم ال `main` الافتتاحي يجب أن يأتي قبل وسم ال paragraph الأول.

```js
assert(code.match(/<main>\s*?<p>/g));
```

وسم ال `main` الإغلاقي يجب أن يأتي بعد وسم ال paragraph الإغلاقي الثاني.

```js
assert(code.match(/<\/p>\s*?<\/main>/g));
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
  <p>Purr jump eat the grass rip the couch scratched sunbathe, shed everywhere rip the couch sleep in the sink fluffy fur catnip scratched.</p>
</main>
```
