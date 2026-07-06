---
id: bd7123c9c549eddfaeb5bdef
title: استخدام ترميز الأقواس لإيجاد الحرف الأول في سلسلة نصية
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

<dfn>ترميز الأقواس</dfn> هو طريقة للحصول على حرف عند فهرس محدد داخل سلسلة نصية.

معظم لغات البرمجة الحديثة، مثل JavaScript، لا تبدأ العد من 1 كما يفعل البشر. بل تبدأ من 0. يُشار إلى هذا بـ <dfn>الفهرسة التي تبدأ من الصفر</dfn>.

على سبيل المثال، الحرف عند الفهرس 0 في كلمة `Charles` هو `C`. لذا إذا كان `const firstName = "Charles"`، يمكنك الحصول على قيمة الحرف الأول من السلسلة النصية باستخدام `firstName[0]`.

مثال:

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter` سيكون له قيمة السلسلة النصية `C`.

# --instructions--

استخدم ترميز الأقواس لإيجاد الحرف الأول في المتغير `lastName` وعيّنه إلى `firstLetterOfLastName`.

**تلميح:** حاول مراجعة المثال أعلاه إذا واجهت صعوبة.

# --hints--

يجب أن يحتوي المتغير `firstLetterOfLastName` على القيمة `L`.

```js
assert(firstLetterOfLastName === 'L');
```

يجب أن تستخدم ترميز الأقواس.

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];
```
