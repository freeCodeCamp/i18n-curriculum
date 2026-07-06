---
id: 8d1323c8c441eddfaeb5bdef
title: إنشاء صنف Set
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

في هذا التمرين سننشئ صنفًا اسمه `Set` لمحاكاة هيكل بيانات مجرد يسمى "set". الـ set يشبه المصفوفة، لكنه لا يمكن أن يحتوي على قيم مكررة. الاستخدام النموذجي للـ set هو ببساطة التحقق من وجود عنصر. يمكننا أن نرى كيف يعمل كائن ES6 `Set` في المثال أدناه:

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

أولًا، سننشئ طريقة add تضيف قيمة إلى مجموعة الـ set طالما أن القيمة غير موجودة مسبقًا في الـ set. ثم سننشئ طريقة remove تزيل قيمة من مجموعة الـ set إذا كانت موجودة. وأخيرًا، سننشئ طريقة size تُرجع عدد العناصر داخل مجموعة الـ set.

# --instructions--

أنشئ طريقة `add` تضيف قيمة فريدة إلى مجموعة الـ set وتُرجع `true` إذا أُضيفت القيمة بنجاح و`false` خلاف ذلك.

أنشئ طريقة `remove` تقبل قيمة وتتحقق مما إذا كانت موجودة في الـ set. إذا كانت موجودة، يجب أن تزيلها من مجموعة الـ set وتُرجع `true`. وإلا، يجب أن تُرجع `false`. أنشئ طريقة `size` تُرجع حجم مجموعة الـ set.

# --hints--

يجب أن يحتوي صنف `Set` على طريقة `add`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

يجب ألا تضيف طريقة `add` قيمًا مكررة.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.add('a');
    var vals = test.values();
    return vals[0] === 'a' && vals[1] === 'b' && vals.length === 2;
  })()
);
```

يجب أن تُرجع طريقة `add` `true` عندما تُضاف قيمة بنجاح.

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

يجب أن تُرجع طريقة `add` `false` عند محاولة إضافة قيمة مكررة.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    var result = test.add('a');
    return result != undefined && result === false;
  })()
);
```

يجب أن يحتوي صنف `Set` على طريقة `remove`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

يجب أن تزيل طريقة `remove` فقط العناصر الموجودة في الـ set.

```js
assert.deepEqual(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('c');
    return test.values();
  })(),
  ['a', 'b']
);
```

يجب أن تزيل طريقة `remove` العنصر المعطى من الـ set.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('a');
    var vals = test.values();
    return vals[0] === 'b' && vals.length === 1;
  })()
);
```

يجب أن يحتوي صنف `Set` على طريقة `size`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

يجب أن تُرجع طريقة `size` عدد العناصر في المجموعة.

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('a');
    return test.size() === 1;
  })()
);
```

# --seed--

## --seed-contents--

```js
class Set {
  constructor() {
    // Dictionary will hold the items of our set
    this.dictionary = {};
    this.length = 0;
  }

  // This method will check for the presence of an element and return true or false
  has(element) {
    return this.dictionary[element] !== undefined;
  }

  // This method will return all the values in the set
  values() {
    return Object.values(this.dictionary);
  }

  // Only change code below this line
  
  // Only change code above this line
}
```

# --solutions--

```js
class Set {
  constructor() {
    this.dictionary = {};
    this.length = 0;
  }

  has(element) {
    return this.dictionary[element] !== undefined;
  }

  values() {
    return Object.values(this.dictionary);
  }

  add(element) {
    if (!this.has(element)) {
      this.dictionary[element] = element;
      this.length++;
      return true;
    }

    return false;
  }

  remove(element) {
    if (this.has(element)) {
      delete this.dictionary[element];
      this.length--;
      return true;
    }

    return false;
  }

  size() {
    return this.length;
  }
}
```
