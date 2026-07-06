---
id: bd7123c8c441eddfaeb5bdef
title: قل مرحبًا لعناصر HTML
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

مرحبًا بك في تحديات الترميز بـ HTML على freeCodeCamp. ستُرشدك هذه التحديات خلال تطوير الويب خطوة بخطوة.

أولًا، ستبدأ ببناء صفحة ويب بسيطة باستخدام HTML. يمكنك تعديل الشفرة في محرر الشفرة المضمّن في هذه الصفحة.

هل ترى الشفرة في محرر الشفرة التي تقول `<h1>Hello</h1>`؟ هذا عنصر HTML.

معظم عناصر HTML تحتوي على وسم بداية ووسم إغلاق.

تبدو وسوم البداية هكذا:

```html
<h1>
```

تبدو وسوم الإغلاق هكذا:

```html
</h1>
```

الفرق الوحيد بين وسوم البداية ووسوم الإغلاق هو الشرطة المائلة بعد القوس المفتوح في وسم الإغلاق.

كل تحدٍّ يحتوي على اختبارات يمكنك تشغيلها في أي وقت بالنقر على زر "تشغيل الاختبارات". عندما تجتاز كل الاختبارات، سيُطلب منك إرسال الحل والانتقال إلى التحدي التالي.

# --instructions--

لاجتياز اختبار هذا التحدي، غيّر نص عنصر `h1` ليقول `Hello World`.

# --hints--

يجب أن يحتوي عنصر `h1` على النص `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
