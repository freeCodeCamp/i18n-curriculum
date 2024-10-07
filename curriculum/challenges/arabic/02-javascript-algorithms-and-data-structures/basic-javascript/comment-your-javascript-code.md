---
id: bd7123c9c441eddfaeb4bdef
title: التعليق (Comment) في كودك من JavaScript
challengeType: 1
videoUrl: 'https://scrimba.com/c/c7ynnTp'
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

Comments are lines of code that JavaScript will intentionally ignore. Comments are a great way to leave notes to yourself and to other people who will later need to figure out what that code does.

هناك طريقتان لكتابة التعليقات في JavaScript:

استخدام `//` سيخبر JavaScript بتجاهل بقية النص في السطر الحالي. وهذه طريقة كتابة تعليق من سطر واحد:

```js
// This is an in-line comment.
```

يمكنك إنشاء تعليق متعدد الأسطر يبدأ من `/*` وينتهي في `*/`. وهذا تعليق متعدد الأسطر:

```js
/* This is a
multi-line comment */
```

**ملاحظة:** عند كتابة الكود، يجب عليك إضافة تعليقات بانتظام لتوضيح وظيفة أجزاء من كودك. التعليق الجيد يمكن أن يساعد على إيصال المغزى من كودك - للآخرين *و* لنفسك في المستقبل.

# --instructions--

حاول إنشاء واحد من كل نوع من التعليقات.

# --hints--

يجب عليك إنشاء تعليق باستخدام `//` يحتوي على خمس أحرف في الأقل.

```js
assert(code.match(/(\/\/)...../g));
```

يجب عليك إنشاء تعليق باستخدام `/* */` يحتوي على خمس أحرف في الأقل.

```js
assert(code.match(/(\/\*)([^\/]{5,})(?=\*\/)/gm));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
// Fake Comment
/* Another Comment */
```
