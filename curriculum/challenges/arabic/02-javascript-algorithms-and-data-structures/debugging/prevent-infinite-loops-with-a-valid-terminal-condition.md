---
id: 587d7b86367417b2b2512b3d
title: منع الحلقات اللانهائية ( Infinite Loops) باستخدام شرط انتهائي صالح (Valid Terminal Condition)
challengeType: 1
forumTopicId: 301192
dashedName: prevent-infinite-loops-with-a-valid-terminal-condition
---

# --description--

The final topic is the dreaded infinite loop. Loops are great tools when you need your program to run a code block a certain number of times or until a condition is met, but they need a terminal condition that ends the looping. Infinite loops are likely to freeze or crash the browser, and cause general program execution mayhem, which no one wants.

كان هناك مثال لحلقة لانهائية في مقدمة هذا القسم - لم يكن لديها أي شرط نهائي للخروج من حلقة `while` داخل `loopy()`. لا تفعيل تلك الوظيفة (function)!

```js
function loopy() {
  while(true) {
    console.log("Hello, world!");
  }
}
```

مهمة المبرمج هي التأكد من الوصول في نهاية المطاف إلى حالة الشرط الانتهائي، التي تخبر البرنامج متى يتم الخروج من كود الحلقة. احد الاخطاء هو زيادة أو تخطي متغير مضاد في الاتجاه الخطأ من حالة الشرط الانتهائي. وهناك واحد آخر هو إعادة تعيين متغير العداد أو الفهرسة (counter or index variable) عن طريق الخطأ داخل كود الحلقة بدلاً من زيادته أو تقليصه.

# --instructions--

تحتوي وظيفة `myFunc()` على حلقة لانهائية لإن حالة الشرط الانتهائي `i != 4` لن تصبح `false` أبدا (وتخرج من التكرار) - سوف يزداد `i` بمقدار 2 في كل تكرار، ويقفز فوق 4 حيث إن `i` عدد فردي من البداية. أصلح مشغل المقارنة (comparison operator) في حالة الشرط الانتهائي بحيث تعمل الحلقة فقط ل `i` بقيمة أقل من أو يساوي 4.

# --hints--

الكود الخاص بك يجب أن يغير مشغل المقارنة في حالة الشرط الانتهائي (الجزء الوسط) من حلقة `for`.

```js
assert(__helpers.removeJSComments(code).match(/i\s*?<=\s*?4;/g).length == 1);
```

الكود الخاص بك يجب أن يصلح مشغل المقارنة (comparison operator) في حالة الشرط الانتهائي للحلقة (terminal condition of the loop).

```js
assert(!__helpers.removeJSComments(code).match(/i\s*?!=\s*?4;/g));
```

# --seed--

## --seed-contents--

```js
function myFunc() {
  for (let i = 1; i != 4; i += 2) {
    console.log("Still going!");
  }
}
```

# --solutions--

```js
function myFunc() {
 for (let i = 1; i <= 4; i += 2) {
   console.log("Still going!");
 }
}
```
