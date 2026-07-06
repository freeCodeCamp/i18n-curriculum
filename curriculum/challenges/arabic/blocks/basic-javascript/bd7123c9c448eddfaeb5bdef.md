---
id: bd7123c9c448eddfaeb5bdef
title: إيجاد طول سلسلة نصية
challengeType: 1
forumTopicId: 18182
dashedName: find-the-length-of-a-string
---

# --description--

يمكنك إيجاد طول قيمة `String` بكتابة `.length` بعد متغير السلسلة النصية أو النص الحرفي.

```js
console.log("Alan Peter".length);
```

ستُعرض القيمة `10` في وحدة التحكم. لاحظ أن حرف المسافة بين "Alan" و"Peter" يُحسب أيضًا.

على سبيل المثال، إذا أنشأنا متغيرًا `const firstName = "Ada"`، يمكننا معرفة طول السلسلة النصية `Ada` باستخدام الخاصية `firstName.length`.

# --instructions--

استخدم الخاصية `.length` لتعيين `lastNameLength` إلى عدد الأحرف في `lastName`.

# --hints--

لا يجب عليك تغيير إعلانات المتغيرات في قسم `// Setup`.

```js
assert(
  __helpers.removeJSComments(code).match(/let lastNameLength = 0;/) &&
    __helpers.removeJSComments(code).match(/const lastName = "Lovelace";/)
);
```

يجب أن تكون قيمة `lastNameLength` مساوية لثمانية.

```js
assert(typeof lastNameLength !== 'undefined' && lastNameLength === 8);
```

يجب أن تحصل على طول `lastName` باستخدام `.length` بهذا الشكل: `lastName.length`.

```js
assert(__helpers.removeJSComments(code).match(/=\s*lastName\.length/g) && !__helpers.removeJSComments(code).match(/lastName\s*=\s*8/));
```

# --seed--

## --seed-contents--

```js
// Setup
let lastNameLength = 0;
const lastName = "Lovelace";

// Only change code below this line
lastNameLength = lastName;
```

# --solutions--

```js
let lastNameLength = 0;
const lastName = "Lovelace";
lastNameLength = lastName.length;
```
