---
id: cf1391c1c11feddfaeb4bdef
title: إنشاء أعداد عشرية باستخدام JavaScript
challengeType: 1
forumTopicId: 16826
dashedName: create-decimal-numbers-with-javascript
---

# --description--

يمكننا تخزين الأعداد العشرية في المتغيرات أيضًا. تُعرف الأعداد العشرية أحيانًا بالأعداد <dfn>ذات الفاصلة العائمة</dfn> أو <dfn>floats</dfn>.

**ملاحظة:** عند حساب الأعداد، تُحسب بدقة محدودة. العمليات التي تستخدم الأعداد ذات الفاصلة العائمة قد تؤدي إلى نتائج مختلفة عن النتيجة المرجوة. إذا حصلت على إحدى هذه النتائج، افتح موضوعًا في <a href="https://forum.freecodecamp.org/" target="_blank" rel="noopener noreferrer nofollow">منتدى freeCodeCamp</a>.

# --instructions--

أنشئ متغيرًا باسم `myDecimal` وأعطه قيمة عشرية تحتوي على جزء كسري (مثل `5.7`).

# --hints--

يجب أن يكون `myDecimal` عددًا.

```js
assert(typeof myDecimal === 'number');
```

يجب أن يحتوي `myDecimal` على نقطة عشرية

```js
assert(myDecimal % 1 != 0);
```

# --seed--

## --seed-contents--

```js
const ourDecimal = 5.7;

// Only change code below this line

```

# --solutions--

```js
const myDecimal = 9.9;
```
