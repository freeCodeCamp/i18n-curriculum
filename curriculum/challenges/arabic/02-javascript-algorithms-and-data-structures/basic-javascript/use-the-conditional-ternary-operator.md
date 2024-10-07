---
id: 587d7b7e367417b2b2512b24
title: استخدام مشغل (Ternary) المشروط
challengeType: 1
forumTopicId: 301181
dashedName: use-the-conditional-ternary-operator
---

# --description--

The <dfn>conditional operator</dfn>, also called the <dfn>ternary operator</dfn>, can be used as a one line if-else expression.

The syntax is `a ? b : c`, where `a` is the condition, `b` is the code to run when the condition returns `true`, and `c` is the code to run when the condition returns `false`.

الوظيفة التالية تستخدم تعبير `if/else` للتحقق من شرط:

```js
function findGreater(a, b) {
  if(a > b) {
    return "a is greater";
  }
  else {
    return "b is greater or equal";
  }
}
```

ويمكن إعادة صياغة الوظيفة المذكورة أعلاه باستخدام المشغل المشروط:

```js
function findGreater(a, b) {
  return a > b ? "a is greater" : "b is greater or equal";
}
```

# --instructions--

استخدم المشغل المشروط في الوظيفة اسمها `checkEqual` للتحقق مما إذا كان رقمان متساويان أم لا. يجب أن تنتج الوظيفة مقطع `Equal` أو مقطع `Not Equal`.

# --hints--

يجب أن يستخدم `checkEqual` المشغل مشروط

```js
assert(/.+?\s*?\?\s*?.+?\s*?:\s*?.+?/.test(__helpers.removeJSComments(code)));
```

يجب أن ينتج `checkEqual(1, 2)` مقطع الآتي: `Not Equal`

```js
assert(checkEqual(1, 2) === 'Not Equal');
```

يجب أن ينتج `checkEqual(1, 1)` مقطع الآتي: `Equal`

```js
assert(checkEqual(1, 1) === 'Equal');
```

يجب أن ينتج `checkEqual(1, -1)` مقطع الآتي: `Not Equal`

```js
assert(checkEqual(1, -1) === 'Not Equal');
```

# --seed--

## --seed-contents--

```js
function checkEqual(a, b) {

}

checkEqual(1, 2);
```

# --solutions--

```js
function checkEqual(a, b) {
  return a === b ? "Equal" : "Not Equal";
}
```
