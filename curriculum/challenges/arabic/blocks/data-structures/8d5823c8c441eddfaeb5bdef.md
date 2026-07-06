---
id: 8d5823c8c441eddfaeb5bdef
title: إنشاء هيكل بيانات خريطة
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

التحديات القليلة القادمة ستتناول الخرائط وجداول التجزئة. الخرائط هي هياكل بيانات تخزن أزواج المفتاح-القيمة. في JavaScript، تتوفر لنا هذه على شكل كائنات. توفر الخرائط بحثًا سريعًا عن العناصر المخزنة بناءً على قيم المفاتيح، وهي هياكل بيانات شائعة ومفيدة جدًا.

# --instructions--

لنمارس إنشاء خريطتنا الخاصة. بما أن كائنات JavaScript توفر هيكل خريطة أكثر كفاءة بكثير مما يمكننا كتابته هنا، فإن هذا التمرين مخصص أساسًا للتعلم. مع ذلك، توفر كائنات JavaScript عمليات محددة فقط. ماذا لو أردنا تعريف عمليات مخصصة؟ استخدم كائن `Map` المقدم هنا كغلاف حول كائن JavaScript `object`. أنشئ الطرق والعمليات التالية على كائن Map:

<ul>
<li><code>add</code> يستقبل زوج <code>key, value</code> ليضيفه إلى الخريطة.</li>
<li><code>remove</code> يستقبل مفتاحًا ويزيل زوج <code>key, value</code> المرتبط به</li>
<li><code>get</code> يستقبل <code>key</code> ويُرجع <code>value</code> المخزن</li>
<li><code>has</code> يستقبل <code>key</code> ويُرجع <dfn>true</dfn> إذا كان المفتاح موجودًا أو <dfn>false</dfn> إذا لم يكن كذلك.</li>
<li><code>values</code> يُرجع مصفوفة بكل القيم في الخريطة</li>
<li><code>size</code> يُرجع عدد العناصر في الخريطة</li>
<li><code>clear</code> يفرغ الخريطة</li>
</ul>

# --hints--

يجب أن يوجد هيكل بيانات `Map`.

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    return typeof test == 'object';
  })()
);
```

يجب أن يحتوي كائن `Map` على الطرق التالية: `add`، `remove`، `get`، `has`، `values`، `clear`، و`size`.

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    return (
      typeof test.add == 'function' &&
      typeof test.remove == 'function' &&
      typeof test.get == 'function' &&
      typeof test.has == 'function' &&
      typeof test.values == 'function' &&
      typeof test.clear == 'function' &&
      typeof test.size == 'function'
    );
  })()
);
```

يجب أن تضيف الطريقة `add` عناصر إلى الخريطة.

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add(5, 6);
    test.add(2, 3);
    test.add(2, 5);
    return test.size() == 2;
  })()
);
```

يجب أن تُرجع الطريقة `has` القيمة `true` للعناصر المضافة و`false` للعناصر غير الموجودة.

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('test', 'value');
    return test.has('test') && !test.has('false');
  })()
);
```

يجب أن تستقبل الطريقة `get` المفاتيح كمُدخَل وتُرجع القيم المرتبطة بها.

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('abc', 'def');
    return test.get('abc') == 'def';
  })()
);
```

يجب أن تُرجع الطريقة `values` كل القيم المخزنة في الخريطة كسلاسل نصية في مصفوفة.

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('a', 'b');
    test.add('c', 'd');
    test.add('e', 'f');
    var vals = test.values();
    return (
      vals.indexOf('b') != -1 &&
      vals.indexOf('d') != -1 &&
      vals.indexOf('f') != -1
    );
  })()
);
```

يجب أن تفرغ الطريقة `clear` الخريطة، ويجب أن تُرجع الطريقة `size` عدد العناصر الموجودة في الخريطة.

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('b', 'b');
    test.add('c', 'd');
    test.remove('asdfas');
    var init = test.size();
    test.clear();
    return init == 2 && test.size() == 0;
  })()
);
```

# --seed--

## --seed-contents--

```js
var Map = function() {
  this.collection = {};
  // Only change code below this line
  
  // Only change code above this line
};
```

# --solutions--

```js
var Map = function() {
    this.collection = {};
    // Only change code below this line

    this.add = function(key,value) {
      this.collection[key] = value;
    }

    this.remove = function(key) {
      delete this.collection[key];
    }

    this.get = function(key) {
      return this.collection[key];
    }

    this.has = function(key) {
      return this.collection.hasOwnProperty(key)
    }

    this.values = function() {
      return Object.values(this.collection);
    }

    this.size = function() {
      return Object.keys(this.collection).length;
    }

    this.clear = function() {
      for(let item of Object.keys(this.collection)) {
        delete this.collection[item];
      }
    }
    // Only change code above this line
};
```
