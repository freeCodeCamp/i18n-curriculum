---
id: 587d7db9367417b2b2512ba5
title: Specify Upper and Lower Number of Matches
challengeType: 1
forumTopicId: 301367
dashedName: specify-upper-and-lower-number-of-matches
---

# --description--

Recall that you use the plus sign `+` to look for one or more characters and the asterisk `*` to look for zero or more characters. These are convenient but sometimes you want to match a certain range of patterns.

يمكنك تحديد العدد الأدنى والأعلى من الأنماط باستخدام <dfn>quantity specifiers</dfn>. يتم استخدام محددات الكمية (Quantity specifiers) مع أقواس متعرجة (`{` و `}`). يمكنك وضع رقمين بين الأقواس المتعرجة - للعدد الأدنى والاعلي من الأنماط.

على سبيل المثال لمطابقة فقط حرف `a` يظهر بين `3` و `5` مرات في السلسلة `ah`، سيكون الـ regex الخاص بك `/a{3,5}h/`.

```js
let A4 = "aaaah";
let A2 = "aah";
let multipleA = /a{3,5}h/;
multipleA.test(A4);
multipleA.test(A2);
```

أول استدعاء لـ `test` سيعيد `true` والثاني سيعيد `false`.

# --instructions--

قم بتغيير `ohRegex` ليطابق كامل العبارة `Oh no` فقط عندما يكون لديه من `3` إلى `6` احرف `h`.

# --hints--

يجب أن يستخدم الـ regex الخاص بك الأقواس المتعرجة.

```js
assert(ohRegex.source.match(/{.*?}/).length > 0);
```

يجب أن لا يطابق الـ regex الخاص بك السلسلة `Ohh no`

```js
ohRegex.lastIndex = 0;
assert(!ohRegex.test('Ohh no'));
```

يجب أن يطابق الـ regex الخاص بك السلسلة `Ohhh no`

```js
assert('Ohhh no'.match(ohRegex)[0].length === 7);
```

يجب أن يطابق الـ regex الخاص بك السلسلة `Ohhhh no`

```js
assert('Ohhhh no'.match(ohRegex)[0].length === 8);
```

يجب أن يطابق الـ regex الخاص بك السلسلة `Ohhhhh no`

```js
assert('Ohhhhh no'.match(ohRegex)[0].length === 9);
```

يجب أن يطابق الـ regex الخاص بك السلسلة `Ohhhhhh no`

```js
assert('Ohhhhhh no'.match(ohRegex)[0].length === 10);
```

يجب أن لا يطابق الـ regex الخاص بك السلسلة `Ohhhhhhh no`

```js
ohRegex.lastIndex = 0;
assert(!ohRegex.test('Ohhhhhhh no'));
```

# --seed--

## --seed-contents--

```js
let ohStr = "Ohhh no";
let ohRegex = /change/; // Change this line
let result = ohRegex.test(ohStr);
```

# --solutions--

```js
let ohStr = "Ohhh no";
let ohRegex = /Oh{3,6} no/; // Change this line
let result = ohRegex.test(ohStr);
```
