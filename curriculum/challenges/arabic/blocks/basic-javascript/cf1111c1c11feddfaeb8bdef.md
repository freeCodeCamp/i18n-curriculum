---
id: cf1111c1c11feddfaeb8bdef
title: تعديل بيانات المصفوفة باستخدام الفهارس
challengeType: 1
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

على عكس السلاسل النصية، مدخلات المصفوفات <dfn>قابلة للتغيير</dfn> ويمكن تعديلها بحرية، حتى لو أُعلن عن المصفوفة باستخدام `const`.

**مثال**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

الآن تحتوي `ourArray` على القيمة `[15, 40, 30]`.

**ملاحظة:** لا يجب وجود مسافات بين اسم المصفوفة والأقواس المربعة، مثل `array [0]`. رغم أن JavaScript يعالج هذا بشكل صحيح، قد يربك ذلك المبرمجين الآخرين الذين يقرؤون شفرتك.

# --instructions--

عدّل البيانات المخزنة عند الفهرس `0` في `myArray` إلى القيمة `45`.

# --hints--

يجب أن تكون `myArray` الآن `[45, 64, 99]`.

```js
assert(
  (function () {
    if (
      typeof myArray != 'undefined' &&
      myArray[0] == 45 &&
      myArray[1] == 64 &&
      myArray[2] == 99
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

يجب استخدام الفهرس الصحيح لتعديل القيمة في `myArray`.

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/myArray\[0\]\s*=\s*/g)) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [18, 64, 99];

// Only change code below this line

```

# --solutions--

```js
const myArray = [18, 64, 99];
myArray[0] = 45;
```
