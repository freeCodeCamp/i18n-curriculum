---
id: 8d5823c8c441eddfaeb5bdef
title: 맵 자료 구조 만들기
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

다음 몇 개의 도전 과제에서는 맵과 해시 테이블을 다룹니다. 맵은 키-값 쌍을 저장하는 자료 구조입니다. JavaScript에서는 객체로 제공됩니다. 맵은 키 값을 기반으로 저장된 항목을 빠르게 조회할 수 있게 해주며, 매우 흔하고 유용한 자료 구조입니다.

# --instructions--

직접 맵을 만들어보며 연습해 보세요. JavaScript 객체가 여기서 작성할 수 있는 어떤 것보다 훨씬 효율적인 맵 구조를 제공하기 때문에, 이 도전 과제는 주로 학습용 연습입니다. 하지만 JavaScript 객체는 특정한 연산만 제공합니다. 만약 사용자 정의 연산을 만들고 싶다면 어떻게 할까요? 여기 제공된 `Map` 객체를 JavaScript `object`를 감싸는 래퍼로 사용하세요. Map 객체에 다음 메서드와 연산을 만드세요:

<ul>
<li><code>add</code>는 맵에 추가할 <code>key, value</code> 쌍을 받습니다.</li>
<li><code>remove</code>는 키를 받아 해당 <code>key, value</code> 쌍을 제거합니다.</li>
<li><code>get</code>는 <code>key</code>를 받아 저장된 <code>value</code>를 반환합니다.</li>
<li><code>has</code>는 <code>key</code>를 받아 키가 존재하면 <dfn>true</dfn>, 없으면 <dfn>false</dfn>를 반환합니다.</li>
<li><code>values</code>는 맵에 있는 모든 값의 배열을 반환합니다.</li>
<li><code>size</code>는 맵에 있는 항목 수를 반환합니다.</li>
<li><code>clear</code>는 맵을 비웁니다.</li>
</ul>

# --hints--

`Map` 자료 구조가 존재해야 합니다.

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

`Map` 객체는 다음 메서드를 가져야 합니다: `add`, `remove`, `get`, `has`, `values`, `clear`, 그리고 `size`.

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

`add` 메서드는 맵에 항목을 추가해야 합니다.

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

`has` 메서드는 추가된 항목에 대해 `true`을, 없는 항목에 대해 `false`를 반환해야 합니다.

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

`get` 메서드는 키를 입력으로 받아 연관된 값을 반환해야 합니다.

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

`values` 메서드는 맵에 저장된 모든 값을 문자열로 배열에 담아 반환해야 합니다.

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

`clear` 메서드는 맵을 비워야 하며 `size` 메서드는 맵에 있는 항목 수를 반환해야 합니다.

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
