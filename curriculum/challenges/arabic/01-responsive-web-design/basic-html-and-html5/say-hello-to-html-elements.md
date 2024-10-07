---
id: bd7123c8c441eddfaeb5bdef
title: قل مرحباً لعناصر (HTML) (Say Hello to HTML Elements)
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

Welcome to freeCodeCamp's HTML coding challenges. These will walk you through web development step-by-step.

أولاً، ستبدأ بإنشاء صفحة ويب بسيطة باستخدام HTML. يمكنك تعديل الCode (كود) في الCode Editor (محرر الكود) المدمج في هذه الصفحة.

هل ترى هذا الCode المكتوب في الCode Editor الذي يقول `<h1>Hello</h1>`؟ هذا عنصر HTML.

أغلب عناصر الHTML لديها أثنين من الTags (علامة): Opening Tag (علامة الفتح) و Closing Tag (علامة الغلق).

الOpening tag يكتب هكذا:

```html
<h1>
```

أما الClosing Tag فيكتب بالشكل الآتي:

```html
</h1>
```

الفرق الوحيد بين الOpening Tag والClosing Tag هو وجود الشرطة المائلة للأمام بعد قوس البداية الخاص بالClosing Tag.

في كل تحد هناك اختبارات يمكنك تنفيذها في أي وقت بالضغط على الزر "تنفيذ الاختبارات". عندما تجتاز جميع الاختبارات، سوف يطلب منك إرسال الحل الخاص بك والانتقال إلى التحدي التالي.

# --instructions--

حتى تتخطى اختبار هذا التحدي، غير نص العنصر `h1` إلى `Hello World`.

# --hints--

يجب أن يحتوي العنصر `h1` على النص `Hello World`.

```js
assert.isTrue(/hello(\s)+world/gi.test($('h1').text()));
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
