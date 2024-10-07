---
id: 587d7db6367417b2b2512b98
title: مطابقة رموز فردية غير محددة (Match Single Characters Not Specified)
challengeType: 1
forumTopicId: 301358
dashedName: match-single-characters-not-specified
---

# --description--

So far, you have created a set of characters that you want to match, but you could also create a set of characters that you do not want to match. These types of character sets are called <dfn>negated character sets</dfn>.

لإنشاء negated character set، يمكنك وضع رمز (`^`) بعد قوس الفتح وقبل الرموز التي لا ترد مطابقتها.

على سبيل المثال، `/[^aeiou]/gi` يطابق جميع الرموز التي ليست حرف متحرك (vowel). لاحظ أن رموز مثل `.`, و`!`, و `[`, و`@`, و `/` والمسافة الفارغة (white space)، يتم مطابقتهم - تستبعد negated vowel character set أحرف العلة فقط (vowel characters).

# --instructions--

أنشئ regex واحد يطابق جميع الرموز التي ليست رقما أو vowel. تذكر أن تدرج الـ flags المناسبة في الـ regex.

# --hints--

يجب أن يطابق الـ regex الخاص بك `myRegex` ٩ عناصر.

```js
assert(result.length == 9);
```

يجب أن يستخدم الـ regex الخاص بك `myRegex` الـ global flag.

```js
assert(myRegex.flags.match(/g/).length == 1);
```

يجب أن يستخدم الـ regex الخاص بك `myRegex` الـ case insensitive flag.

```js
assert(myRegex.flags.match(/i/).length == 1);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "3 blind mice.";
let myRegex = /change/; // Change this line
let result = myRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "3 blind mice.";
let myRegex = /[^0-9aeiou]/gi; // Change this line
let result = quoteSample.match(myRegex); // Change this line
```
