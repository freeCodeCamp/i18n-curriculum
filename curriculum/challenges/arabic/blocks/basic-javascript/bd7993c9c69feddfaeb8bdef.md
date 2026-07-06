---
id: bd7993c9c69feddfaeb8bdef
title: تخزين قيم متعددة في متغير واحد باستخدام مصفوفات JavaScript
challengeType: 1
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

مع متغيرات `array` في JavaScript، يمكننا تخزين عدة بيانات في مكان واحد.

تبدأ إعلان المصفوفة بقوس مربع مفتوح، وتنهيه بقوس مربع مغلق، وتضع فاصلة بين كل عنصر والآخر، كما يلي:

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

عدّل المصفوفة الجديدة `myArray` لتحتوي على كل من سلسلة نصية ورقم (بهذا الترتيب).

# --hints--

يجب أن تكون `myArray` مصفوفة.

```js
assert(typeof myArray == 'object');
```

العنصر الأول في `myArray` يجب أن يكون سلسلة نصية.

```js
assert(typeof myArray[0] !== 'undefined' && typeof myArray[0] == 'string');
```

العنصر الثاني في `myArray` يجب أن يكون رقمًا.

```js
assert(typeof myArray[1] !== 'undefined' && typeof myArray[1] == 'number');
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
