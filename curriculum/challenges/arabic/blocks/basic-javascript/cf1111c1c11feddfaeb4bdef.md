---
id: cf1111c1c11feddfaeb4bdef
title: طرح رقم من رقم آخر باستخدام JavaScript
challengeType: 1
forumTopicId: 18314
dashedName: subtract-one-number-from-another-with-javascript
---

# --description--

يمكننا أيضًا طرح رقم من رقم آخر.

تستخدم JavaScript الرمز `-` للطرح.

**مثال**

```js
const myVar = 12 - 6;
```

سيكون لـ `myVar` القيمة `6`.
# --instructions--

غيّر القيمة `0` بحيث يكون الفرق `12`.

# --hints--

يجب أن تكون قيمة المتغير `difference` مساوية لـ `12`.

```js
assert(difference === 12);
```

يجب أن تطرح رقمًا واحدًا فقط من `45`.

```js
assert(/difference=45-33;?/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code))));
```

# --seed--

## --seed-contents--

```js
const difference = 45 - 0;
```

# --solutions--

```js
const difference = 45 - 33;
```
