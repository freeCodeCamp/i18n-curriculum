---
id: cf1111c1c12feddfaeb2bdef
title: توليد أعداد صحيحة عشوائية ضمن نطاق
challengeType: 1
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

يمكنك توليد عدد صحيح عشوائي في النطاق من الصفر إلى رقم معين. يمكنك أيضًا اختيار رقم أدنى مختلف لهذا النطاق.

ستُسمّي رقمك الأدنى `min` ورقمك الأعلى `max`.

تعطي هذه الصيغة عددًا صحيحًا عشوائيًا في النطاق من `min` إلى `max`. خذ لحظة لقراءتها وحاول فهم ما تفعله هذه الشفرة:

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

أنشئ دالة تسمى `randomRange` تأخذ نطاقًا `myMin` و `myMax` وتُرجع عددًا صحيحًا عشوائيًا أكبر من أو يساوي `myMin` وأصغر من أو يساوي `myMax`.

# --hints--

أدنى عدد عشوائي يمكن توليده بواسطة `randomRange` يجب أن يكون مساويًا لرقمك الأدنى، `myMin`.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMin = 100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMin = Math.min(calcMin, result);
    }

    return calcMin === 5;
  })()
);
```

أعلى عدد عشوائي يمكن توليده بواسطة `randomRange` يجب أن يكون مساويًا لرقمك الأعلى، `myMax`.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMax = -100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMax = Math.max(calcMax, result);
    }

    return calcMax === 15;
  })()
);
```

العدد العشوائي الذي تولده `randomRange` يجب أن يكون عددًا صحيحًا، وليس عشريًا.

```js
assert(randomRange(0, 1) % 1 === 0);
```

يجب أن تستخدم `randomRange` كلًا من `myMax` و `myMin`، وتُرجع عددًا عشوائيًا ضمن نطاقك.

```js
assert(
  (function () {
    if (
      __helpers.removeJSComments(code).match(/myMax/g).length > 1 &&
      __helpers.removeJSComments(code).match(/myMin/g).length > 2 &&
      __helpers.removeJSComments(code).match(/Math.floor/g) &&
      __helpers.removeJSComments(code).match(/Math.random/g)
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
function randomRange(myMin, myMax) {
  return 0;
}
```

# --solutions--

```js
function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}
```
