---
id: cf1111c1c11feddfaeb6bdef
title: قسّم رقمًا على رقم آخر باستخدام JavaScript
challengeType: 1
forumTopicId: 17566
dashedName: divide-one-number-by-another-with-javascript
---

# --description--

يمكننا أيضًا قسمة رقم على رقم آخر.

تستخدم JavaScript الرمز `/` للقسمة.

**مثال**

```js
const myVar = 16 / 2;
```

الآن يحتوي `myVar` على القيمة `8`.
# --instructions--

غيّر القيمة `0` بحيث يكون `quotient` مساويًا لـ `2`.

# --hints--

يجب أن تكون قيمة المتغير `quotient` مساوية لـ 2.

```js
assert(quotient === 2);
```

يجب أن تستخدم العامل `/`.

```js
assert(/\d+\s*\/\s*\d+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
const quotient = 66 / 0;
```

# --solutions--

```js
const quotient = 66 / 33;
```
