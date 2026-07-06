---
id: bd7123c9c452eddfaeb5bdef
title: استخدام ترميز الأقواس لإيجاد الحرف النوني من نهاية سلسلة نصية
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

يمكنك استخدام نفس المبدأ الذي استخدمناه للتو لاسترجاع الحرف الأخير في سلسلة نصية لاسترجاع الحرف النوني من النهاية.

على سبيل المثال، يمكنك الحصول على قيمة الحرف الثالث من نهاية سلسلة النص `const firstName = "Augusta"` باستخدام `firstName[firstName.length - 3]`

مثال:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

سيكون لـ `thirdToLastLetter` قيمة السلسلة النصية `s`.

# --instructions--

استخدم <dfn>ترميز الأقواس</dfn> لإيجاد الحرف الثاني من نهاية سلسلة النص `lastName`.

**تلميح:** حاول مراجعة المثال أعلاه إذا واجهت صعوبة.

# --hints--

يجب أن تكون قيمة `secondToLastLetterOfLastName` هي الحرف `c`.

```js
assert(secondToLastLetterOfLastName === 'c');
```

يجب أن تستخدم `.length` للحصول على الحرف الثاني من النهاية.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const secondToLastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const secondToLastLetterOfLastName = lastName[lastName.length - 2];
```
