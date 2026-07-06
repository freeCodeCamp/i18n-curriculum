---
id: bd7123c9c450eddfaeb5bdef
title: استخدام ترميز الأقواس لإيجاد الحرف النوني في سلسلة نصية
challengeType: 1
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

يمكنك أيضًا استخدام <dfn>ترميز الأقواس</dfn> للحصول على الحرف في مواقع أخرى داخل السلسلة النصية.

تذكر أن الحواسيب تبدأ العد من `0`، لذا الحرف الأول هو في الواقع الحرف الصفري.

مثال:

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

سيكون لـ `secondLetterOfFirstName` قيمة السلسلة النصية `d`.

# --instructions--

لنحاول تعيين `thirdLetterOfLastName` ليكون مساويًا للحرف الثالث من المتغير `lastName` باستخدام ترميز الأقواس.

**تلميح:** حاول مراجعة المثال أعلاه إذا واجهت صعوبة.

# --hints--

يجب أن يحتوي المتغير `thirdLetterOfLastName` على القيمة `v`.

```js
assert(thirdLetterOfLastName === 'v');
```

يجب أن تستخدم ترميز الأقواس.

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const thirdLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const thirdLetterOfLastName = lastName[2];
```
