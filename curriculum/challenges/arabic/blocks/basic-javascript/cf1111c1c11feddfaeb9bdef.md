---
id: cf1111c1c11feddfaeb9bdef
title: توليد كسور عشوائية باستخدام JavaScript
challengeType: 1
forumTopicId: 18185
dashedName: generate-random-fractions-with-javascript
---

# --description--

الأعداد العشوائية مفيدة لإنشاء سلوك عشوائي.

تحتوي JavaScript على دالة `Math.random()` تُولد عددًا عشريًا عشوائيًا بين `0` (شامل) و`1` (حصري). لذلك يمكن لـ `Math.random()` أن تُرجع `0` لكنها لا تُرجع `1` أبدًا.

**ملاحظة:** مثل <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">تخزين القيم باستخدام معامل التعيين</a>، تُنفذ كل استدعاءات الدوال قبل تنفيذ `return`، لذا يمكننا `return` قيمة دالة `Math.random()`.

# --instructions--

غيّر `randomFraction` ليُرجع عددًا عشوائيًا بدلًا من إرجاع `0`.

# --hints--

يجب أن تُرجع `randomFraction` عددًا عشوائيًا.

```js
assert(typeof randomFraction() === 'number');
```

يجب أن يكون العدد الذي تُرجعه `randomFraction` عددًا عشريًا.

```js
assert((randomFraction() + '').match(/\./g));
```

يجب أن تستخدم `Math.random` لتوليد العدد العشري العشوائي.

```js
assert(__helpers.removeJSComments(code).match(/Math\.random/g).length >= 0);
```

# --seed--

## --seed-contents--

```js
function randomFraction() {

  // Only change code below this line

  return 0;

  // Only change code above this line
}
```

# --solutions--

```js
function randomFraction() {
  return Math.random();
}
```
