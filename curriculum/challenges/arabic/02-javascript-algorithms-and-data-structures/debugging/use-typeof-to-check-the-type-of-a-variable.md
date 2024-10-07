---
id: 587d7b84367417b2b2512b34
title: استخدام typeof للتحقق من نوع المتغير
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

فيما يلي بعض الأمثلة التي تستخدم `typeof`:

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

بالترتيب، ستعرض وحدة التحكم المقاطع `string`, و `number`, و `object`, و `object`.

يتعرف JavaScript على سبعة أنواع بيانات أولية (غير قابلة للتغيير): `Boolean`, و `Null`, و `Undefined`, و `Number`, و `String`, و`Symbol` (أضاف في ES6), و `BigInt` (أضاف في ES2020), ونوع واحد للعناصر القابلة للتغيير: `Object`. لاحظ أن القوائم في JavaScript, هي من الناحية التقنية عبارة من كائن.

# --instructions--

أضف اثنين من تعبيرات `console.log()` للتحقق من `typeof` كل من المتغيرين `seven` و `three` في الكود.

# --hints--

الكود الخاص بك يجب أن يستخدم `typeof` في تعبيرات `console.log()` للتحقق من نوع المتغيرات.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

الكود الخاص بك يجب أن يستخدم `typeof` للتحقق من نوع المتغير `seven`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

الكود الخاص بك يجب أن يستخدم `typeof` للتحقق من نوع المتغير `three`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]three\)?/g));
```

# --seed--

## --seed-contents--

```js
let seven = 7;
let three = "3";
console.log(seven + three);
// Only change code below this line
```

# --solutions--

```js
let seven = 7;let three = "3";console.log(typeof seven);
console.log(typeof three);
```
