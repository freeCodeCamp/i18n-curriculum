---
id: 587d7b84367417b2b2512b36
title: 'التقاط الاقواس و الاقتباسات الغير مغلقة'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

إحدى الطرق لتجنب هذا الخطأ هي بمجرد كتابة الرمز الافتتاحي، قم على الفور بكتابة رمز الإغلاق، ثم قم بتحريك المؤشر مرة أخرى بينهما، ثم استمر في البرمجة. لحسن الحظ، فإن معظم برامج تحرير الكود الحديثة تولد النصف الثاني من الزوج تلقائيًا.

# --instructions--

قم بإصلاح أخطاء الزوجين في الكود.

# --hints--

يجب أن يصلح الكود الخاص بك القطعة المفقودة من القائمة.

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

يجب أن يصلح الكود الخاص بك القطعة المفقودة من `.reduce()`. يجب أن يظهر إخراج وحدة التحكم أن `Sum of array values is: 6`.

```js
assert(arraySum === 6);
```

# --seed--

## --seed-contents--

```js
let myArray = [1, 2, 3;
let arraySum = myArray.reduce((previous, current =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```

# --solutions--

```js
let myArray = [1, 2, 3];
let arraySum = myArray.reduce((previous, current) =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```
