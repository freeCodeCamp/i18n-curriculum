---
id: cf1111c1c11feddfaeb1bdef
title: التكرار باستخدام حلقات while في JavaScript
challengeType: 1
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

يمكنك تشغيل نفس الشفرة عدة مرات باستخدام حلقة.

أول نوع من الحلقات سنتعلمه يسمى حلقة `while` لأنها تعمل طالما أن شرطًا معينًا صحيح وتتوقف بمجرد أن يصبح هذا الشرط غير صحيح.

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

في مثال الشفرة أعلاه، ستنفذ حلقة `while` خمس مرات وتضيف الأرقام من 0 إلى 4 إلى `ourArray`.

دعنا نجرب تشغيل حلقة while عن طريق دفع قيم إلى مصفوفة.

# --instructions--

أضف الأرقام من 5 إلى 0 (شاملة) بترتيب تنازلي إلى `myArray` باستخدام حلقة `while`.

# --hints--

يجب أن تستخدم حلقة `while` لهذا الغرض.

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

يجب أن تساوي `myArray` القيمة `[5, 4, 3, 2, 1, 0]`.

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
let i = 5;
while (i >= 0) {
  myArray.push(i);
  i--;
}
```
