---
id: bd7123c9c451eddfaeb5bdef
title: استخدم ترميز الأقواس لإيجاد الحرف الأخير في سلسلة نصية
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

للحصول على الحرف الأخير في سلسلة نصية، يمكنك طرح واحد من طول السلسلة.

على سبيل المثال، إذا كانت `const firstName = "Ada"`، يمكنك الحصول على قيمة الحرف الأخير في السلسلة باستخدام `firstName[firstName.length - 1]`.

مثال:

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

سيكون لـ `lastLetter` قيمة السلسلة النصية `a`.

# --instructions--

استخدم <dfn>ترميز الأقواس</dfn> لإيجاد الحرف الأخير في المتغير `lastName`.

**تلميح:** حاول مراجعة المثال أعلاه إذا واجهت صعوبة.

# --hints--

يجب أن تكون قيمة `lastLetterOfLastName` هي الحرف `e`.

```js
assert(lastLetterOfLastName === 'e');
```

يجب أن تستخدم `.length` للحصول على الحرف الأخير.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const lastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const lastLetterOfLastName = lastName[lastName.length - 1];
```
