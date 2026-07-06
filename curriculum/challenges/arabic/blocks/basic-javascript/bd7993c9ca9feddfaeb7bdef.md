---
id: bd7993c9ca9feddfaeb7bdef
title: قسمة عدد عشري على آخر باستخدام JavaScript
challengeType: 1
forumTopicId: 18255
dashedName: divide-one-decimal-by-another-with-javascript
---

# --description--

لنقسم الآن عددًا عشريًا على آخر.

# --instructions--

غيّر القيمة `0.0` بحيث يكون `quotient` مساويًا لـ `2.2`.

# --hints--

يجب أن تكون قيمة المتغير `quotient` مساوية لـ `2.2`

```js
assert(quotient === 2.2);
```

استخدم عامل القسمة `/` لقسمة 4.4 على 2

```js
assert(/4\.40*\s*\/\s*2\.*0*/.test(__helpers.removeJSComments(code)));
```

يجب تعيين المتغير quotient مرة واحدة فقط

```js
assert(__helpers.removeJSComments(code).match(/quotient\s*=/g).length === 1);
```

# --seed--

## --seed-contents--

```js
const quotient = 0.0 / 2.0; // Change this line
```

# --solutions--

```js
const quotient = 4.4 / 2.0;
```
