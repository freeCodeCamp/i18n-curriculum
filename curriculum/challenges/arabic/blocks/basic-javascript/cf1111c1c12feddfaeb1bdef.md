---
id: cf1111c1c12feddfaeb1bdef
title: توليد أعداد صحيحة عشوائية باستخدام JavaScript
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

يمكنك توليد أعداد عشرية عشوائية باستخدام `Math.random()`، لكن أحيانًا تحتاج إلى توليد أعداد صحيحة عشوائية. العملية التالية ستعطيك عددًا صحيحًا عشوائيًا أقل من `20`:

1. استخدم `Math.random()` لتوليد عدد عشري عشوائي.
2. اضرب هذا العدد العشري العشوائي في `20`.
3. استخدم `Math.floor()` لتقريب هذا العدد إلى أقرب عدد صحيح أقل أو يساويه.

تذكر أن `Math.random()` لا يمكن أن تُرجع القيمة `1` أبدًا، لذا من المستحيل الحصول على `20` فعليًا لأنك تقرب للأسفل باستخدام `Math.floor()`. هذه العملية ستعطيك عددًا صحيحًا عشوائيًا في النطاق من `0` إلى `19`.

عند جمع كل شيء معًا، تبدو شفرتك هكذا:

```js
Math.floor(Math.random() * 20);
```

أنت تستدعي `Math.random()`، تضرب النتيجة في 20، ثم تمرر القيمة إلى `Math.floor()` لتقريب القيمة إلى أقرب عدد صحيح أقل أو يساويه.

# --instructions--

استخدم هذه التقنية لتوليد وإرجاع عدد صحيح عشوائي في النطاق من `0` إلى `9`.

# --hints--

يجب أن تكون نتيجة `randomWholeNum` عددًا صحيحًا.

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

يجب أن تستخدم `Math.random` لتوليد عدد عشوائي.

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

كان يجب أن تضرب نتيجة `Math.random` في 10 لجعلها عددًا في النطاق من صفر إلى تسعة.

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

يجب أن تستخدم `Math.floor` لإزالة الجزء العشري من العدد.

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

## --seed-contents--

```js
function randomWholeNum() {
  return Math.random();
}
```

# --solutions--

```js
function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}
```
