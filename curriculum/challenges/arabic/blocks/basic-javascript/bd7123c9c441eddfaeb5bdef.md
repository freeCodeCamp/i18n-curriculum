---
id: bd7123c9c441eddfaeb5bdef
title: فهم القيم المنطقية
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

نوع بيانات آخر هو <dfn>القيمة المنطقية</dfn>. القيم المنطقية قد تكون فقط واحدة من قيمتين: `true` أو `false`. هي في الأساس مفاتيح تشغيل/إيقاف صغيرة، حيث `true` تعني تشغيل و`false` تعني إيقاف. هاتان الحالتان حصريتان لبعضهما.

**ملاحظة:** لا تُكتب القيم المنطقية أبدًا بين علامات اقتباس. السلاسل النصية `"true"` و`"false"` ليست قيمًا منطقية ولا تحمل أي معنى خاص في JavaScript.

# --instructions--

عدّل الدالة `welcomeToBooleans` بحيث تُرجع `true` بدلًا من `false`.

# --hints--

يجب أن تُرجع الدالة `welcomeToBooleans()` قيمة منطقية (`true` أو `false`).

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

يجب أن تُرجع `welcomeToBooleans()` القيمة `true`.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --seed-contents--

```js
function welcomeToBooleans() {
  // Only change code below this line

  return false; // Change this line

  // Only change code above this line
}
```

# --solutions--

```js
function welcomeToBooleans() {
  return true; // Change this line
}
```
