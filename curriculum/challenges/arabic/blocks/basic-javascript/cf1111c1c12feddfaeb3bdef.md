---
id: cf1111c1c12feddfaeb3bdef
title: استخدام المنطق الشرطي مع جمل if الشرطية
challengeType: 1
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

تُستخدم جمل `if` لاتخاذ قرارات في الشفرة. الكلمة المفتاحية `if` تخبر JavaScript بتنفيذ الشفرة داخل الأقواس المتعرجة تحت شروط معينة، تُحدد في الأقواس العادية. تُعرف هذه الشروط باسم شروط `Boolean` ولا يمكن أن تكون إلا `true` أو `false`.

عندما تُقيّم الحالة إلى `true`، ينفذ البرنامج الجملة داخل الأقواس المتعرجة. وعندما تُقيّم القيمة المنطقية إلى `false`، لا تُنفذ الجملة داخل الأقواس المتعرجة.

**رمز زائف**

<blockquote>if (<i>الحالة صحيحة</i>) {<br>  <i>تنفذ الجملة</i><br>}</blockquote>

**مثال**

```js
function test(myCondition) {
  if (myCondition) {
    return "It was true";
  }
  return "It was false";
}

test(true);
test(false);
```

`test(true)` تُرجع السلسلة النصية `It was true`، و`test(false)` تُرجع السلسلة النصية `It was false`.

عندما يُستدعى `test` بقيمة `true`، تُقيّم جملة `if` المتغير `myCondition` لترى ما إذا كان `true` أم لا. وبما أنه `true`، تُعيد الدالة القيمة `It was true`. وعندما نستدعي `test` بقيمة `false`، فإن `myCondition` ليست `true`، ولا تُنفذ الجملة داخل الأقواس المتعرجة، فتُعيد الدالة القيمة `It was false`.

# --instructions--

أنشئ جملة `if` داخل الدالة لإرجاع `Yes, that was true` إذا كانت المعلمة `wasThatTrue` تساوي `true`، وإرجاع `No, that was false` في الحالات الأخرى.

# --hints--

`trueOrFalse` يجب أن تكون دالة

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)` يجب أن تُرجع سلسلة نصية

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)` يجب أن تُرجع سلسلة نصية

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)` يجب أن تُرجع السلسلة النصية `Yes, that was true`

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)` يجب أن تُرجع السلسلة النصية `No, that was false`

```js
assert(trueOrFalse(false) === 'No, that was false');
```

# --seed--

## --seed-contents--

```js
function trueOrFalse(wasThatTrue) {
  // Only change code below this line



  // Only change code above this line

}
```

# --solutions--

```js
function trueOrFalse(wasThatTrue) {
  if (wasThatTrue) {
    return "Yes, that was true";
  }
  return "No, that was false";
}
```
