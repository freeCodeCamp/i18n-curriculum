---
id: cf1231c1c11feddfaeb5bdef
title: الضرب بين رقمين باستخدام JavaScript
challengeType: 1
forumTopicId: 18243
dashedName: multiply-two-numbers-with-javascript
---

# --description--

يمكننا أيضًا الضرب بين رقم وآخر.

تستخدم JavaScript الرمز `*` للضرب بين رقمين.

**مثال**

```js
const myVar = 13 * 13;
```

سيكون لـ `myVar` القيمة `169`.

# --instructions--

غيّر القيمة `0` بحيث يكون حاصل الضرب مساويًا لـ `80`.

# --hints--

يجب أن تكون قيمة المتغير `product` مساوية لـ 80.

```js
assert(product === 80);
```

يجب استخدام العامل `*`.

```js
assert(/\*/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
const product = 8 * 0;
```

# --solutions--

```js
const product = 8 * 10;
```
