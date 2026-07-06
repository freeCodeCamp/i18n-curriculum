---
id: 6551eebe6cbb2e6cadf9b468
title: الخطوة 2
challengeType: 20
dashedName: step-2
---

# --description--

يمكن للمتغيرات تخزين قيم بأنواع بيانات مختلفة. لقد قمت للتو بتعيين قيمة عدد صحيح، ولكن إذا أردت تمثيل نص ما، يجب تعيين سلسلة نصية. السلاسل النصية هي متتاليات من الأحرف محاطة بعلامات اقتباس مفردة أو مزدوجة، لكن لا يمكنك بدء السلسلة بعلامة اقتباس مفردة وإنهائها بعلامة اقتباس مزدوجة أو العكس:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

احذف متغير `number` وقيمته. ثم أعلن متغيرًا آخر اسمه `text` وقم بتعيين السلسلة النصية `'Hello World'` لهذا المتغير.

# --hints--

يجب ألا يحتوي شفرتك على `number = 5`.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

يجب إعلان متغير اسمه `text`. انتبه لوضع اسم المتغير في بداية السطر.

```js
assert.match(code, /^text\s*=/m)
```

يجب تعيين السلسلة النصية `'Hello World'` لمتغير `text`. تذكر استخدام علامات اقتباس مفردة أو مزدوجة لإحاطة السلسلة النصية وكن دقيقًا في حالة الأحرف.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

تحتوي شفرتك على صيغة نحوية غير صحيحة و/أو مسافة بادئة غير صحيحة.

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
