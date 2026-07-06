---
id: bd7123c9c444eddfaeb5bdef
title: إعلان متغيرات سلسلة نصية
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

سبق أن استخدمت الشفرة التالية لإعلان متغير:

```js
var myName;
```

لكن يمكنك أيضًا إعلان متغير سلسلة نصية بهذه الطريقة:

```js
var myName = "your name";
```

`"your name"` يُسمى <dfn>سلسلة نصية</dfn> <dfn>حرفية</dfn>. الحرفية النصية، أو السلسلة النصية، هي سلسلة من صفر أو أكثر من الأحرف محاطة بعلامات اقتباس مفردة أو علامات اقتباس مزدوجة.

# --instructions--

أنشئ متغيرين جديدين من نوع سلسلة نصية: `myFirstName` و `myLastName` وقم بتعيين قيم اسميك الأول والأخير لهما على التوالي.

# --hints--

يجب أن يكون `myFirstName` سلسلة نصية تحتوي على حرف واحد على الأقل.

```js
assert(
  (function () {
    if (
      typeof myFirstName !== 'undefined' &&
      typeof myFirstName === 'string' &&
      myFirstName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

يجب أن يكون `myLastName` سلسلة نصية تحتوي على حرف واحد على الأقل.

```js
assert(
  (function () {
    if (
      typeof myLastName !== 'undefined' &&
      typeof myLastName === 'string' &&
      myLastName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
