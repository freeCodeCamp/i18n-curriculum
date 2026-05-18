---
id: 8d5823c8c441eddfaeb5bdef
title: Unda muundo wa data wa ramani
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

Changamoto chache zinazofuata zitahusu ramani na jedwali za hash. Ramani ni miundo ya data inayohifadhi jozi za ufunguo-thamani. Katika JavaScript, hizi zinapatikana kwetu kama vitu. Ramani hutoa upatikanaji wa haraka wa vitu vilivyohifadhiwa kulingana na thamani za ufunguo na ni miundo ya data inayopatikana sana na yenye manufaa.

# --instructions--

Tuanze mazoezi ya kuunda ramani yetu wenyewe. Kwa sababu vitu vya JavaScript hutoa muundo wa ramani wenye ufanisi zaidi kuliko chochote tunachoweza kuandika hapa, hili lina kusudiwa zaidi kama zoezi la kujifunza. Hata hivyo, vitu vya JavaScript vinatupatia tu baadhi ya operesheni. Je, tungetaka kufafanua operesheni maalum? Tumia kitu cha `Map` kilichotolewa hapa kama kifuniko cha `object` cha JavaScript. Unda njia na operesheni zifuatazo kwenye kitu cha Ramani:

<ul>
<li><code>add</code> inakubali jozi ya <code>ufunguo, thamani</code> kuongeza kwenye ramani.</li>
<li><code>remove</code> inakubali ufunguo na inafuta jozi ya <code>ufunguo, thamani</code> inayohusiana</li>
<li><code>get</code> inakubali <code>ufunguo</code> na inarudisha <code>thamani</code> iliyohifadhiwa</li>
<li><code>has</code> inakubali <code>ufunguo</code> na inarudisha <dfn>true</dfn> ikiwa ufunguo upo au <dfn>false</dfn> ikiwa haupo.</li>
<li><code>values</code> inarudisha safu ya data ya thamani zote zilizomo kwenye ramani</li>
<li><code>size</code> inarudisha idadi ya vitu vilivyomo kwenye ramani</li>
<li><code>clear</code> inafuta ramani yote</li>
</ul>

# --hints--

Muundo wa data wa `Map` unapaswa kuwepo.

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

Kitu cha `Map` kinapaswa kuwa na njia zifuatazo: `add`, `remove`, `get`, `has`, `values`, `clear`, na `size`.

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

Njia ya `add` inapaswa kuongeza vitu kwenye ramani.

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

Njia ya `has` inapaswa kurudisha `true` kwa vitu vilivyoongezwa na `false` kwa vitu visivyo.

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

Njia ya `get` inapaswa kupokea funguo kama ingizo na inapaswa kurudisha thamani zinazohusiana.

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

Njia ya `values` inapaswa kurudisha thamani zote zilizohifadhiwa kwenye ramani kama mfuatano wa herufi katika safu ya data.

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

Njia ya `clear` inapaswa kufuta ramani na njia ya `size` inapaswa kurudisha idadi ya vitu vilivyopo kwenye ramani.

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
